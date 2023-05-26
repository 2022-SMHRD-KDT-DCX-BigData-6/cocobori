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
						<li class="tm-nav-item"><a href="info_me.jsp" class="tm-nav-item-link tm-button active">내 주변 정보</a></li>
						<li class="tm-nav-item"><a href="#" class="tm-nav-item-link tm-button">로그인</a></li>
					</ul>
				</nav>
			</div>
			<!-- side menu -->

			<div class="tm-main-content">
				<div class="tm-content-box tm-content-box-home">
					<img src="img/1080x360-01.jpg" alt="Image" class="img-fluid tm-welcome-img">
				</div>
				<section id="contact" class="tm-content-box">
					<div class="row margin-b-50">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<h2 class="tm-section-title tm-blue-text">Contact Us</h2>
							<form action="#contact" method="post" class="contact-form">
								<div class="form-group">
									<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name" required />
								</div>
								<div class="form-group">
									<input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email" required />
								</div>
								<div class="form-group">
									<textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="Message" required></textarea>
								</div>
								<button type="submit" class="btn btn-primary tm-button-rounded tm-button-orange tm-button-no-border tm-button-normal">Send</button>
							</form>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<div class="tm-address-box">
								<p>Morbi auctor euismod dictum. Morbi eu nibh in nulla
									interdum placerat. Donec pellentesque est at sem aliquam
									hendrerit.
								</p>
								<address>
									<span class="tm-blue-text">Mailing Address</span><br>
									991 Curabitur molestie dui vel,<br>
									metus iaculis suscipit 11900<br><br>
									Email: <a class="tm-blue-text" href="mailto:info@company.com">info@company.com</a><br>
									Tel: <a class="tm-black-text" href="tel:010-020-0120">010-020-0120</a><br>
									Fax: <a class="tm-black-text" href="tel:090-080-0980">090-080-0980</a><br>
								</address>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<div id="google-map"></div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<!-- tm-main-content -->

		<footer class="tm-footer text-right">
			<p>
				Copyright &copy; <span class="tm-current-year">2018</span> Your Company - Designed by 
				<a href="https://www.facebook.com/tooplate" target="_parent">Tooplate</a>
			</p>
		</footer>
	</div>
	<!-- container-fluid -->

	<!-- load JS files -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- jQuery (https://jquery.com/download/) -->
	<script>
		/* Google map
		------------------------------------------------*/
		var map = '';
		var center;

		function initialize() {
			var mapOptions = {
				zoom : 16,
				center : new google.maps.LatLng(37.769725, -122.462154),
				scrollwheel : false
			};

			map = new google.maps.Map(document.getElementById('google-map'),
					mapOptions);

			google.maps.event.addDomListener(map, 'idle', function() {
				calculateCenter();
			});

			google.maps.event.addDomListener(window, 'resize', function() {
				map.setCenter(center);
			});
		}

		function calculateCenter() {
			center = map.getCenter();
		}

		function loadGoogleMap() {
			var script = document.createElement('script');
			script.type = 'text/javascript';
			script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&'
					+ 'callback=initialize';
			document.body.appendChild(script);
		}

		$(document).ready(function() {

			// Google Map
			loadGoogleMap();

			// Update the current year in copyright
			$('.tm-current-year').text(new Date().getFullYear());
		});
	</script>
</body>
</html>