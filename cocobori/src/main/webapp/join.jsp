<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<!--

Template 2094 Mason

http://www.tooplate.com/view/2094-mason

-->
<!-- load stylesheets -->
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
<link rel="stylesheet" href="css/tooplate-style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body>
	<div class="container-fluid">
		<div class="tm-body margin-b-50">
			<div class="tm-sidebar">
				<section id="welcome" class="tm-content-box tm-banner margin-b-15">
					<div class="tm-banner-inner">
						<i class="fa fa-film fa-4x margin-b-40"></i>
						<h1 class="tm-banner-title">Mason</h1>
						<p class="tm-banner-subtitle">new HTML template</p>
					</div>
				</section>
				<nav class="tm-main-nav">
					<ul class="tm-main-nav-ul">
						<li class="tm-nav-item"><a href="index.html"
							class="tm-nav-item-link tm-button">Gallery</a></li>
						<li class="tm-nav-item"><a href="timeline.html"
							class="tm-nav-item-link tm-button">Timeline</a></li>
						<li class="tm-nav-item"><a href="about.html"
							class="tm-nav-item-link tm-button">About</a></li>
						<li class="tm-nav-item"><a href="contact.html"
							class="tm-nav-item-link tm-button active">Contact</a></li>
					</ul>
				</nav>
			</div>

			<div class="tm-main-content">
				<div class="sign-up">
					<h1>회원가입</h1>
					<form action="JoinService" method="post">
						<input type="email" name="user_email" placeholder="Email"><br>
						<input type="password" name="user_pw" placeholder="pw"><br>
						<input type="password" name="user_pwck" placeholder="pw"><br>
						<input type="text" name="user_name" placeholder="name"><br>
						<input type="text" name="user_nick" placeholder="nickname"><br>
						<input type="text" name="user_phone" placeholder="phone"><br>
						<input type="date" name="user_birthdate" placeholder="birthdate"><br>
						<div>
							남<input type="radio" name="user_gender" value="M"> 여<input
								type="radio" name="user_gender" value="F"><br>
						</div>
						<div>
							강아지<input type="checkbox" name="user_pet" value="강아지">
							고양이<input type="checkbox" name="user_pet" value="고양이"><br>

						</div>
						<input type="submit" value="회원가입">
					</form>
				</div>
				<div>
					<table class="table">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td colspan="2">Larry the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<h1>
			<%
			String loginMember = (String) session.getAttribute("loginMember");
			%>
		</h1>
		<%=loginMember%>
		<footer class="tm-footer text-right">
			<p>
				Copyright &copy; <span class="tm-current-year">2018</span> Your
				Company - Designed by <a href="https://www.facebook.com/tooplate"
					target="_parent">Tooplate</a>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>
