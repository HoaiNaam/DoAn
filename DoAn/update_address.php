<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
   header('location:home.php');
};

if(isset($_POST['submit'])){
   // Tạo địa chỉ từ các trường nhập liệu
   $address_parts = array(
      $_POST['flat'],
      $_POST['building'],
      $_POST['area'],
      $_POST['town'],
      $_POST['city'],
      $_POST['state'],
      $_POST['country'],
      $_POST['pin_code']
   );

   // Lọc các phần tử rỗng ra khỏi mảng
   $filtered_address_parts = array_filter($address_parts, 'strlen');

   // Tạo địa chỉ từ các phần tử đã lọc
   $address = implode(', ', $filtered_address_parts);
   $address = filter_var($address, FILTER_SANITIZE_STRING);

   $update_address = $conn->prepare("UPDATE `users` SET address = ? WHERE id = ?");
   $update_address->execute([$address, $user_id]);

   $message[] = 'Địa chỉ đã được lưu!';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Cập nhật địa chỉ</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
   
<?php include 'components/user_header.php' ?>

<section class="form-container">

   <form action="" method="post">
      <h3>Địa chỉ của bạn</h3>
      <!-- Các trường nhập liệu -->
      <input type="text" class="box" placeholder="Căn hộ số..." maxlength="50" name="flat">
      <input type="text" class="box" placeholder="Tòa nhà số..." maxlength="50" name="building">
      <input type="text" class="box" placeholder="Tên đường" maxlength="50" name="area">
      <input type="text" class="box" placeholder="Tên phường " maxlength="50" name="state">
      <input type="text" class="box" placeholder="Tên quận" maxlength="50" name="town">
      <input type="text" class="box" placeholder="Tên thành phố" maxlength="50" name="city">
      <input type="text" class="box" placeholder="Tên quốc gia(Nếu khác quốc gia)" maxlength="50" name="country">
      <input type="number" class="box" placeholder="Mã vận chuyển" max="999999" min="0" maxlength="6" name="pin_code">
      <input type="submit" value="Lưu địa chỉ" name="submit" class="btn">
   </form>

</section>

<?php include 'components/footer.php' ?>

<div class="loader">
   <img src="images/loader.gif" alt="">
</div>

<script src="js/script.js"></script>

</body>
</html>
