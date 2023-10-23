<?php
include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
    header('location:admin_login.php');
}

$per_page = 30;
$page = isset($_GET['page']) ? $_GET['page'] : 1;

$start_from = ($page - 1) * $per_page;

$searchKeyword = isset($_POST['search_box']) ? $_POST['search_box'] : '';

$count_query = $conn->prepare("SELECT COUNT(*) FROM `orders` WHERE name LIKE ? OR email LIKE ? OR number LIKE ?");
$count_query->execute(["%$searchKeyword%", "%$searchKeyword%", "%$searchKeyword%"]);
$total_rows = $count_query->fetchColumn();
$total_pages = ceil($total_rows / $per_page);

$page = min($page, $total_pages);
$start_from = ($page - 1) * $per_page;

if (isset($_POST['search_btn'])) {
    $likePattern = "%$searchKeyword%";
    $select_orders = $conn->prepare("SELECT * FROM `orders` WHERE name LIKE :pattern OR email LIKE :pattern OR number LIKE :pattern LIMIT :limit OFFSET :offset");
    $select_orders->bindParam(':pattern', $likePattern);
    $select_orders->bindValue(':limit', $per_page, PDO::PARAM_INT);
    $select_orders->bindValue(':offset', $start_from, PDO::PARAM_INT);
    $select_orders->execute();
} else {
    $likePattern = "%$searchKeyword%";
    $select_orders = $conn->prepare("SELECT * FROM `orders` WHERE name LIKE :pattern OR email LIKE :pattern OR number LIKE :pattern LIMIT :limit OFFSET :offset");
    $select_orders->bindParam(':pattern', $likePattern);
    $select_orders->bindValue(':limit', $per_page, PDO::PARAM_INT);
    $select_orders->bindValue(':offset', $start_from, PDO::PARAM_INT);
    $select_orders->execute();
}

if (isset($_POST['update_payment'])) {
    $order_id = $_POST['order_id'];
    $payment_status = $_POST['payment_status'];
    $update_status = $conn->prepare("UPDATE `orders` SET payment_status = ? WHERE id = ?");
    $update_status->execute([$payment_status, $order_id]);
    $message[] = 'Cập nhật trạng thái thành công!';
}

if (isset($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $delete_order = $conn->prepare("DELETE FROM `orders` WHERE id = ?");
    $delete_order->execute([$delete_id]);
    header('location:placed_orders.php');
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../css/admin_style.css">
</head>

<body>

    <?php include '../components/admin_header.php' ?>

    <section class="search-form">
        <form method="post" action="">
            <input type="text" name="search_box" placeholder="Tìm kiếm..." class="box">
            <button type="submit" name="search_btn" class="fas fa-search"></button>
        </form>
    </section>

    <section class="placed-orders">
        <h1 class="heading">Đặt hàng</h1>
        <div class="box-container">
            <?php
            if ($select_orders->rowCount() > 0) {
                while ($fetch_orders = $select_orders->fetch(PDO::FETCH_ASSOC)) {
                    ?>
                    <div class="box">
                        <p> User ID: <span><?= $fetch_orders['user_id']; ?></span> </p>
                        <p> Ngày đặt: <span><?= $fetch_orders['placed_on']; ?></span> </p>
                        <p> Tên: <span><?= $fetch_orders['name']; ?></span> </p>
                        <p> Email: <span><?= $fetch_orders['email']; ?></span> </p>
                        <p> SĐT: <span><?= $fetch_orders['number']; ?></span> </p>
                        <p> Địa chỉ: <span><?= $fetch_orders['address']; ?></span> </p>
                        <p> Tổng sản phẩm: <span><?= $fetch_orders['total_products']; ?></span> </p>
                        <p> Tổng giá: <span>$<?= $fetch_orders['total_price']; ?>/-</span> </p>
                        <p> Phương thức thanh toán: <span><?= $fetch_orders['method']; ?></span> </p>
                        <form action="" method="POST">
                            <input type="hidden" name="order_id" value="<?= $fetch_orders['id']; ?>">
                            <select name="payment_status" class="drop-down">
                                <option value="" selected disabled><?= $fetch_orders['payment_status']; ?></option>
                                <option value="pending">Chờ</option>
                                <option value="completed">Hoàn thành</option>
                            </select>
                            <div class="flex-btn">
                                <input type="submit" value="update" class="btn" name="update_payment">
                                <a href="placed_orders.php?delete=<?= $fetch_orders['id']; ?>" class="delete-btn" onclick="return confirm('Bạn muốn xóa đơn đặt hàng này?');">Xóa</a>
                            </div>
                        </form>
                    </div>
                <?php
            }
        } else {
            echo '<p class="empty">Không tìm thấy đơn đặt hàng nào!</p>';
        }
        ?>
    </div>
    <div style="clear:both"></div>
    <p class="pagination" style="font-size: 1.5rem;">Trang:
        <?php
         if ($total_pages > 1) {
            for ($i = 1; $i <= $total_pages; $i++) {
                if ($i == $page) {
                    echo '<a href="placed_orders.php?page=' . $i . '" class="current-page">' . $i . '</a>';
                } else {
                    echo '<a href="placed_orders.php?page=' . $i . '">' . $i . '</a>';
                }
            }
        }
        ?>
    </p>
</section>

    <div id="back-to-top" class="hidden">
            <i class="fas fa-arrow-up"></i>
    </div>


<script src="../js/admin_script.js"></script>

</body>

</html>
