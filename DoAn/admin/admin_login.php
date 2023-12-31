<?php
include '../components/connect.php';
session_start();

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $pass = sha1($_POST['pass']);

    try {
        $select_admin = $conn->prepare("SELECT * FROM `admin` WHERE name = ? AND password = ?");
        $select_admin->execute([$name, $pass]);

        if ($select_admin->rowCount() > 0) {
            $fetch_admin_id = $select_admin->fetch(PDO::FETCH_ASSOC);
            $_SESSION['admin_id'] = $fetch_admin_id['id'];
            header('location:dashboard.php');
        } else {
            throw new Exception('Tên người dùng hoặc mật khẩu không chính xác!');
        }
    } catch (Exception $e) {
        $message[] = $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <link rel="stylesheet" href="../css/admin_style.css">

</head>
<body>

<?php
if (isset($message)) {
    foreach ($message as $message) {
        echo '
        <div class="message">
            <span>' . $message . '</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
        </div>
        ';
    }
}
?>

<section class="form-container">

    <form action="" method="POST">
        <h3>Đăng nhập</h3>
        <p>Tên đăng nhập mặc định = <span>admin</span> & password = <span>111</span></p>
        <input type="text" name="name" maxlength="20" required placeholder="Điền tên" class="box"
               oninput="this.value = this.value.replace(/\s/g, '')">
        <input type="password" name="pass" maxlength="20" required placeholder="Điền mật khẩu" class="box"
               oninput="this.value = this.value.replace(/\s/g, '')">
        <input type="submit" value="Đăng nhập" name="submit" class="btn">
    </form>

</section>

</body>
</html>
