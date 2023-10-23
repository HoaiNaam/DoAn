<?php
include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
}

if (isset($_POST['send'])) {
   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_EMAIL);
   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
   $msg = $_POST['msg'];
   $msg = filter_var($msg, FILTER_SANITIZE_STRING);

   // Kiểm tra email
   $check_email = $conn->prepare("SELECT * FROM `users` WHERE id = ? AND email = ?");
   $check_email->execute([$user_id, $email]);

   if ($check_email->rowCount() > 0) {
      $select_message = $conn->prepare("SELECT * FROM `messages` WHERE name = ? AND email = ? AND number = ? AND message = ?");
      $select_message->execute([$name, $email, $number, $msg]);

      if ($select_message->rowCount() > 0) {
         $message[] = ' Đã gửi tin nhắn rồi!';
      } else {
         $insert_message = $conn->prepare("INSERT INTO `messages`(user_id, name, email, number, message) VALUES(?,?,?,?,?)");
         $insert_message->execute([$user_id, $name, $email, $number, $msg]);
         $message[] = 'Đã gửi tin nhắn thành công!';
      }
   } else {
      $message[] = 'Vui lòng nhập đúng email của bạn!';
   }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Liên hệ</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   

<?php include 'components/user_header.php'; ?>


<div class="heading">
   <h3>Liên hệ</h3>
   <p><a href="home.php">Home</a> <span> / Liên hệ </span></p>
</div>


<section class="contact">

   <div class="row">

      <div class="image">
         <img src="images/contact-img.svg" alt="">
      </div>

      <form action="" method="post">
         <h3>Hãy để lại lời nhắn cho chúng tôi!</h3>
         <input type="text" name="name" maxlength="50" class="box" placeholder="Nhập tên của bạn" required>
         <input type="number" name="number" min="0" max="9999999999" class="box" placeholder="Nhập SĐT của bạn" required maxlength="11">
         <input type="email" name="email" maxlength="50" class="box" placeholder="Nhập email của bạn" required>
         <textarea name="msg" class="box" required placeholder="Nhập lời nhắn của bạn" maxlength="500" cols="30" rows="10"></textarea>
         <input type="submit" value="Gửi lời nhắn" name="send" class="btn">
      </form>

   </div>

</section>













<?php include 'components/footer.php'; ?>



<div class="loader">
   <img src="images/loader.gif" alt="">
</div>







<script src="js/script.js"></script>

</body>
</html>