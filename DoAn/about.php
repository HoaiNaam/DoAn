<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'components/user_header.php'; ?>
<!-- header section ends -->

<div class="heading">
   <h3>About Us</h3>
   <p><a href="home.php">Home</a> <span> / About</span></p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>Chúng tôi có thể phục vụ bạn như thế nào ?</h3>
         <p>Ở đây chúng tôi mang đến cho các bạn rất nhiều món ăn đa dạng và phong phú lựa chọn, các bạn có thể đặt các món ăn cửa chúng tôi bằng cách nhấn vào nút bên dưới.</p>
         <a href="menu.php" class="btn">Thực đơn của chúng tôi</a>
      </div>

   </div>

</section>


<section class="steps">

   <h1 class="title">Chỉ với 3 bước đơn giản</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>Chọn món ăn</h3>
         <p>Bạn có thể lựa chọn các món ăn từ menu của chúng tôi và thêm nó vào giỏ hàng.</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>Giao hàng nhanh chỉ trong 30p</h3>
         <p>Sau khi các bạn thanh toán giỏ hàng món ăn sẽ được chế biến và ship đến tận nơi cho bạn chỉ trong vòng 30 phút.</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>Thưởng thức bữa ăn của bạn!</h3>
         <p>Bước cuối cùng là bạn chỉ cần thưởng thức món ăn vừa ngon vừa nóng hổi !!!</p>
      </div>

   </div>

</section>


<section class="reviews">

   <h1 class="title">Đánh giá của các khách hàng</h1>

   <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <img src="images/pic-1.png" alt="">
            <p>Chất lượng món ăn rất tuyệt vời !!!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Quang Khánh</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/pic-2.png" alt="">
            <p>Tuy hàng giao hơi lâu nhưng thức ăn vẫn còn nóng hổi. Rất tuyệt vời</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Ngọc Lụa</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/pic-3.png" alt="">
            <p>Thực đơn rất đa dạng món nào nhìn cũng ngon, tôi không biết nên chọn món nào luôn </p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Quốc An</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/pic-4.png" alt="">
            <p>Mong cửa hàng thêm vài món ăn nữa chứ ngon thế này mà không làm thêm nhiều món ăn thì phí tay nghề của đàu bếp quá</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Trúc Phương</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/pic-5.png" alt="">
            <p>Con trai tôi rất thích những món ăn ở đây, mỗi lần đi học về nó đều đòi ăn 1 cái hamburger ở đây.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Anh Tú</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/pic-6.png" alt="">
            <p>Đây là lần đầu đặt món ở đây nhưng cảm thấy rất ngon, tôi sẽ tiếp tục ủng hộ quán.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Quỳnh Như</h3>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>



















<!-- footer section starts  -->
<?php include 'components/footer.php'; ?>
<!-- footer section ends -->=



<div class="loader">
   <img src="images/loader.gif" alt="">
</div>




<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   grabCursor: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
      slidesPerView: 1,
      },
      700: {
      slidesPerView: 2,
      },
      1024: {
      slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>