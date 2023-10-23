let profile = document.querySelector('.header .flex .profile');

document.querySelector('#user-btn').onclick = () => {
   profile.classList.toggle('active')
   navbar.classList.remove('active');
}

let navbar = document.querySelector('.header .flex .navbar');

document.querySelector('#menu-btn').onclick = () => {
   navbar.classList.toggle('active');
   profile.classList.remove('active');
}

window.onscroll = () => {
   profile.classList.remove('active');
   navbar.classList.remove('active');
}

subImages = document.querySelectorAll('.update-product .image-container .sub-images img');
mainImage = document.querySelector('.update-product .image-container .main-image img');

subImages.forEach(images => {
   images.onclick = () => {
      let src = images.getAttribute('src');
      mainImage.src = src;
   }
});

// Lấy tất cả các liên kết chuyển trang
var pageLinks = document.querySelectorAll('.pagination a');

// Gắn sự kiện cho mỗi liên kết
pageLinks.forEach(function (link) {
   link.addEventListener('click', function () {
      // Loại bỏ tất cả các class 'current-page' hiện tại
      pageLinks.forEach(function (innerLink) {
         innerLink.classList.remove('current-page');
      });

      // Thêm class 'current-page' cho liên kết được nhấp
      link.classList.add('current-page');

      // Cuộn đến trung tâm của nút được nhấp (hiệu ứng căn giữa)
      link.scrollIntoView({
         behavior: 'smooth',
         block: 'center',
         inline: 'center'
      });
   });
});

document.addEventListener('DOMContentLoaded', function () {
   var backToTopButton = document.getElementById('back-to-top');

   window.addEventListener('scroll', function () {
      if (window.scrollY > 200) {
         backToTopButton.classList.add('show');
      } else {
         backToTopButton.classList.remove('show');
      }
   });

   backToTopButton.addEventListener('click', function () {
      window.scrollTo({ top: 0, behavior: 'smooth' });
   });
});
