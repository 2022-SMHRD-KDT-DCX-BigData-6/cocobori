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
	h2{
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
					<h2>LOGIN</h2>
					<form action="LoginService" method="post">
						<div class="form-floating">
							<input type="email" name="email" class="form-control" placeholder="Email"> 
						</div>
						<div class="form-floating">
							<input type="password" name="pw" class="form-control" placeholder="Password">
						</div>
						<button type="submit" class="btn btn-outline-info">login</button>
						<button type="button" class="btn btn-outline-info" onclick="location.href='join.jsp'">sign up</button>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>