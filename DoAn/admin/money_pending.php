<?php
include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
    header('location:admin_login.php');
}

$search_condition = "";
if (isset($_POST['search_btn'])) {
    $search_box = $_POST['search_box'];
    $search_condition = " AND (`name` LIKE '%$search_box%' OR `email` LIKE '%$search_box%' OR `number` LIKE '%$search_box%')";
}

// Phân trang
$records_per_page = 30;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$offset = ($page - 1) * $records_per_page;

// Truy vấn tổng số đơn hàng đang chờ
$total_pending_orders = $conn->query("SELECT COUNT(*) FROM `orders` WHERE `payment_status` = 'pending' $search_condition")->fetchColumn();

// Truy vấn đơn hàng với phân trang và tình trạng "pending"
$select_orders = $conn->prepare("SELECT * FROM `orders` WHERE `payment_status` = 'pending' $search_condition LIMIT :offset, :records_per_page");
$select_orders->bindParam(':offset', $offset, PDO::PARAM_INT);
$select_orders->bindParam(':records_per_page', $records_per_page, PDO::PARAM_INT);
$select_orders->execute();

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
    header('location:money_pending.php');
}

// Tính tổng số trang
$total_records = $conn->query("SELECT COUNT(*) FROM `orders` WHERE `payment_status` = 'completed' $search_condition")->fetchColumn();
$total_pages = ceil($total_records / $records_per_page);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng đang chờ</title>
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
    <h1 class="heading">Đơn hàng đang chờ</h1>
    <section class="summary">
            <p>Tổng số đơn đang chờ: <?= $total_pending_orders; ?></p>
        </section>
    <div class="box-container">
        <?php
        if ($select_orders->rowCount() > 0) {
            while ($fetch_orders = $select_orders->fetch(PDO::FETCH_ASSOC)) {
                ?>
                <div class="box">
                    <p> User ID : <span><?= $fetch_orders['user_id']; ?></span> </p>
                    <p> Ngày đặt : <span><?= $fetch_orders['placed_on']; ?></span> </p>
                    <p> Tên : <span><?= $fetch_orders['name']; ?></span> </p>
                    <p> Email : <span><?= $fetch_orders['email']; ?></span> </p>
                    <p> SĐT : <span><?= $fetch_orders['number']; ?></span> </p>
                    <p> Địa chỉ : <span><?= $fetch_orders['address']; ?></span> </p>
                    <p> Tổng sản phẩm : <span><?= $fetch_orders['total_products']; ?></span> </p>
                    <p> Tổng giá : <span>$<?= $fetch_orders['total_price']; ?>/-</span> </p>
                    <p> Phương thức thanh toán : <span><?= $fetch_orders['method']; ?></span> </p>
                    <form action="" method="POST">
                        <input type="hidden" name="order_id" value="<?= $fetch_orders['id']; ?>">
                        <select name="payment_status" class="drop-down">
                            <option value="" selected disabled><?= $fetch_orders['payment_status']; ?></option>
                            <option value="completed">Hoàn thành</option>
                        </select>
                        <div class="flex-btn">
                            <input type="submit" value="Cập nhật" class="btn" name="update_payment">
                            <a href="money_earned.php?delete=<?= $fetch_orders['id']; ?>" class="delete-btn"
                               onclick="return confirm('Bạn muốn xóa đơn đặt hàng này?');">Xóa</a>
                        </div>
                    </form>
                </div>
                <?php
            }
        } else {
            echo '<p class="empty">Không có đơn đặt hàng nào được tìm thấy!</p>';
        }
        ?>
    </div>
    <div style="clear:both"></div>
    <p class="pagination" style="font-size: 1.5rem;">Trang:
        <?php
        if ($total_pages > 1) {
            for ($i = 1; $i <= $total_pages; $i++) {
                if ($i == $page) {
                    echo '<a href="money_pending.php?page=' . $i . '" class="current-page">' . $i . '</a>';
                } else {
                    echo '<a href="money_pending.php?page=' . $i . '">' . $i . '</a>';
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
