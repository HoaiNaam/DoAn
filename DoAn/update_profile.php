<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
} else {
   header('location:home.php');
   exit;
}

if(isset($_POST['submit'])){
   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);

   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);

   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);

   $is_old_pass_correct = false;
   $empty_pass = 'da39a3ee5e6b4b0d3255bfef95601890afd80709';

   // Lấy mật khẩu hiện tại từ cơ sở dữ liệu
   $select_prev_pass = $conn->prepare("SELECT password FROM `users` WHERE id = ?");
   $select_prev_pass->execute([$user_id]);
   $fetch_prev_pass = $select_prev_pass->fetch(PDO::FETCH_ASSOC);
   $prev_pass = $fetch_prev_pass['password'];

   $old_pass = sha1($_POST['old_pass']);
   $old_pass = filter_var($old_pass, FILTER_SANITIZE_STRING);
   $new_pass = sha1($_POST['new_pass']);
   $new_pass = filter_var($new_pass, FILTER_SANITIZE_STRING);
   $confirm_pass = sha1($_POST['confirm_pass']);
   $confirm_pass = filter_var($confirm_pass, FILTER_SANITIZE_STRING);

   // Kiểm tra mật khẩu cũ
   if ($old_pass != $empty_pass) {
      if ($old_pass == $prev_pass) {
         $is_old_pass_correct = true;
      } else {
         $message[] = 'Mật khẩu cũ không khớp!';
      }
   }

   // Thực hiện các thao tác cập nhật nếu mật khẩu cũ đúng
   if ($is_old_pass_correct) {
      if (!empty($name)) {
         $update_name = $conn->prepare("UPDATE `users` SET name = ? WHERE id = ?");
         $update_name->execute([$name, $user_id]);
      }

      if (!empty($email)) {
         $select_email = $conn->prepare("SELECT * FROM `users` WHERE email = ?");
         $select_email->execute([$email]);
         if ($select_email->rowCount() > 0) {
            $message[] = 'Email này đã có người sử dụng!';
         } else {
            $update_email = $conn->prepare("UPDATE `users` SET email = ? WHERE id = ?");
            $update_email->execute([$email, $user_id]);
         }
      }

      if (!empty($number)) {
         $select_number = $conn->prepare("SELECT * FROM `users` WHERE number = ?");
         $select_number->execute([$number]);
         if ($select_number->rowCount() > 0) {
            $message[] = 'SĐT này đã có người sử dụng!';
         } else {
            $update_number = $conn->prepare("UPDATE `users` SET number = ? WHERE id = ?");
            $update_number->execute([$number, $user_id]);
         }
      }

      if ($new_pass != $empty_pass) {
         $update_pass = $conn->prepare("UPDATE `users` SET password = ? WHERE id = ?");
         $update_pass->execute([$confirm_pass, $user_id]);
         $message[] = 'Mật khẩu được cập nhật thành công!';
      }
   } else {
      // Hiển thị thông báo nếu mật khẩu cũ không đúng
      $message[] = 'Vui lòng nhập mật khẩu cũ đúng để cập nhật thông tin!';
   }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Cập nhật thông tin</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php include 'components/user_header.php'; ?>

<section class="form-container">
   <form action="" method="post">
      <h3>Cập nhật thông tin</h3>
      <input type="text" name="name" placeholder="Nhập tên của bạn" class="box" maxlength="50">
      <input type="email" name="email" placeholder="Nhập email của bạn" class="box" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="number" name="number" placeholder="Nhập SĐT của bạn" class="box" min="0" max="9999999999" maxlength="10">
      <input type="password" name="old_pass" placeholder="Nhập mật khẩu cũ" class="box" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="password" name="new_pass" placeholder="Nhập mật khẩu mới (để trống nếu không muốn đổi)" class="box" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="password" name="confirm_pass" placeholder="Xác nhận mật khẩu mới" class="box" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
      <input type="submit" value="Cập nhật thông tin" name="submit" class="btn">
      <p><a href="home.php">Quay lại trang chủ</a></p>     
   </form>
</section>

<?php include 'components/footer.php'; ?>


<div class="loader">
   <img src="images/loader.gif" alt="">
</div>

<script src="js/script.js"></script>

</body>
</html>
