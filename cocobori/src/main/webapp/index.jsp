<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>코코보리</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->

<!-- load stylesheets -->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400"> <!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css"> <!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="css/bootstrap.min.css"> <!-- Bootstrap styles, https://getbootstrap.com/ -->
<link rel="stylesheet" href="css/tooplate-style.css"> <!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div class="container-fluid">
		<div class="tm-body">
			<div class="tm-sidebar sticky">
				<section id="welcome" class="tm-content-box tm-banner margin-b-15">
					<div class="tm-banner-inner">
						<h1><a href="index.jsp" class="tm-banner-title">코코보리</a></h1>
						<p class="tm-banner-subtitle">반려동물 SNS</p>
					</div>
				</section>
				<nav class="tm-main-nav">
					<ul class="tm-main-nav-ul">
						<li class="tm-nav-item"><a href="pet_info.jsp" class="tm-nav-item-link tm-button">반려동물 정보</a></li>
						<li class="tm-nav-item"><a href="board.jsp" class="tm-nav-item-link tm-button">게시판</a></li>
						<li class="tm-nav-item"><a href="community.jsp" class="tm-nav-item-link tm-button">커뮤니티</a></li>
						<li class="tm-nav-item"><a href="info_me.jsp" class="tm-nav-item-link tm-button">내 주변 정보</a></li>
						<li class="tm-nav-item"><a href="#" class="tm-nav-item-link tm-button">로그인</a></li>
					</ul>
				</nav>
			</div>

			<div class="tm-main-content tm-gallery-container">
				<div class="grid">
					<div class="grid-item"><img src="img/gallery-img-23-01.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-01.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-12-01.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-02.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-12-02.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-23-02.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-03.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-23-03.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-04.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-05.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-12-03.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-12-04.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-06.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-23-04.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-11-07.jpg" alt="Image"></div>
					<div class="grid-item"><img src="img/gallery-img-23-05.jpg" alt="Image"></div>
				</div>
			</div>
			<!-- tm-main-content -->
		</div>

		<footer class="tm-footer text-right">
			<p>
				Copyright &copy; <span class="tm-current-year">2018</span> Your Company - Designed by 
				<a href="https://www.facebook.com/tooplate" target="_parent">Tooplate</a>
			</p>
		</footer>

	</div>
	<!-- container-fluid -->

	<!-- load JS files -->
	<script src="js/jquery-1.11.3.min.js"></script> <!-- jQuery (https://jquery.com/download/) -->
	<script src="js/imagesloaded.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->
	<script src="js/masonry.pkgd.min.js"></script> <!-- https://masonry.desandro.com/ -->

	<!-- Templatemo scripts -->
	<script>
		$(document).ready(function() {
			// init Masonry
			// https://codepen.io/craigwheeler/pen/MYjBga

			var $grid = $('.grid').masonry({
				// set itemSelector so .grid-sizer is not used in layout
				// itemSelector: '.grid-item',
				// use element for option
				// columnWidth: '.grid-sizer',
				// percentPosition: true

				itemSelector : '.grid-item',
				isFitWidth : true,
				columnWidth : 1
			});

			// layout Masonry after each image loads
			$grid.imagesLoaded().progress(function() {
				$grid.masonry('layout');
			});

			// Update the current year in copyright
			$('.tm-current-year').text(new Date().getFullYear());
		});
	</script>
</body>
</html>