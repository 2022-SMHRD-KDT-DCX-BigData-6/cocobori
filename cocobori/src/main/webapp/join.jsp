<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<style type="text/css">
h2 {
	text-align: center;
}

.form-floating .form-control {
	border-radius: 10px;
	width: 300px;
}

.form-floating {
	margin-bottom: 10px;
}
</style>
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
						<h1 class="tm-banner-title">coco</h1>
						<p class="tm-banner-subtitle">Login</p>
					</div>
				</section>
				<nav class="tm-main-nav">
					<ul class="tm-main-nav-ul">
						<li class="tm-nav-item"><a href="index.jsp"
							class="tm-nav-item-link tm-button">HOME</a></li>
					</ul>
				</nav>
			</div>

			<div class="tm-main-content">
				<div class="tm-content-box tm-content-box-home">
					<div class="test">
						<h2>SIGN UP</h2>
						<form action="JoinService" method="post">
							<div class="form-floating">
								<input type="email" name="user_email" class="form-control" placeholder="Email">
							</div>
							<div class="form-floating">
								<input type="password" name="user_pw" class="form-control" placeholder="Password">
							</div>
							<div class="form-floating">
								<input type="text" name="user_name" class="form-control" placeholder="Name">
							</div>
							<div class="form-floating">
								<input type="text" name="user_nick" class="form-control" placeholder="Nick name">
							</div>
							<div class="form-floating">
								<input type="text" name="user_phone" class="form-control" placeholder="phone">
							</div>
							<div class="form-floating">
								<input type="date" name="user_birthdate" class="form-control" placeholder="brithdate">
							</div>
							<div class="form-floating">
								<input type="radio" name="user_gender" value="M">남자
								<input type="radio" name="user_gender" value="F">여자
							</div>
							<div class="form-floating">
								<input type="checkbox" name="user_pet" value="강아지">강아지
								<input type="checkbox" name="user_pet" value="고양이">고양이
								<input type="checkbox" name="user_pet" value="파충류">파충류
								<input type="checkbox" name="user_pet" value="조류">조류
							</div>
							<button type="submit" class="btn btn-outline-info">sign up</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>