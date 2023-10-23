<?php
include '../components/connect.php';

// Initialize variables
$tongDoanhThu = 0;

// Query to get total revenue
$select_orders = $conn->prepare("SELECT * FROM `orders` WHERE `payment_status` = 'completed'");
$select_orders->execute();

while ($fetch_orders = $select_orders->fetch(PDO::FETCH_ASSOC)) {
    $tongDoanhThu += $fetch_orders['total_price'];
}

// Query to get average revenue
$soDonHang = $select_orders->rowCount();
$doanhThuTrungBinh = $soDonHang > 0 ? $tongDoanhThu / $soDonHang : 0;

// Query to get top-selling food items
$select_top_selling = $conn->prepare("
    SELECT p.name AS product_name, SUM(c.quantity) AS total_quantity
    FROM `cart` c
    JOIN `products` p ON c.pid = p.id
    GROUP BY c.pid
    ORDER BY total_quantity DESC
    LIMIT 5
");
$select_top_selling->execute();
$topSellingData = $select_top_selling->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../css/admin_style.css">
    <title>Statistics</title>
</head>
<body>
    <?php include '../components/admin_header.php' ?>
    <section class="placed-orders">
        <div class="revenue-summary">
            <h2>Revenue Summary</h2>
            <p>Total Revenue: <?= number_format($tongDoanhThu, 2); ?> $</p>
            <p>Average Revenue per Order: <?= number_format($doanhThuTrungBinh, 2); ?> $</p>
        </div>

<div class="top-selling">
    <h2>Top Selling Food Items</h2>
    <ol start="1">
        <?php foreach ($topSellingData as $item): ?>
            <li><?= $item['product_name'] ?>: <?= $item['total_quantity'] ?> items</li>
        <?php endforeach; ?>
    </ol>
</div>

        <!-- Display the chart -->
        <div id="columnChart"></div>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script>
            var topSellingData = <?= json_encode($topSellingData); ?>;
            var categories = topSellingData.map(function (item) { return item.product_name; });
            var data = topSellingData.map(function (item) { return item.total_quantity; });

            var options = {
                chart: {
                    type: 'bar'
                },
                series: [
                    {
                        name: 'Top Selling Items',
                        data: data
                    }
                ],
                xaxis: {
                    categories: categories
                }
            };

            var chart = new ApexCharts(document.querySelector("#columnChart"), options);
            chart.render();
        </script>
    </section>

    <script src="../js/admin_script.js"></script>
</body>
</html>
