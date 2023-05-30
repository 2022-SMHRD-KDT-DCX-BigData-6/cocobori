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
						<li class="tm-nav-item"><a href="community.jsp" class="tm-nav-item-link tm-button active">커뮤니티</a></li>
						<li class="tm-nav-item"><a href="info_me.jsp" class="tm-nav-item-link tm-button">내 주변 정보</a></li>
						<li class="tm-nav-item"><a href="#" class="tm-nav-item-link tm-button">로그인</a></li>
					</ul>
				</nav>
			</div>
			<!-- side menu -->
			
			<div class="tm-main-content">
				<div class="row mb-4">
					<div class="col-sm mb-4">
						<div class="friend p-2">
							<i class="fa fa-3x fa-address-book-o d-block mb-4 text-center"></i>
							<h3 class="text-center">친구</h3>
						</div>
					</div>
					<div class="col-sm mb-4">
						<div class="chat p-2">
							<i class="fa fa-3x fa-comments-o d-block mb-4 text-center"></i>
							<h3 class="text-center">채팅</h3>
						</div>
					</div>
				</div>
				<!-- row -->
				
				<div class="friend_list" style="display: none;">
					<ul class="list-group">
						<li class="list-group-item">
							<img alt="" src="">사진
							<span>채팅방 이름</span>
						</li>
					</ul>
				</div>

				<div class="chatting" style="display: none;">
					<ul class="list-group">
						<li class="list-group-item">
							<img alt="" src="">사진
							<span>채팅방 이름</span>
						</li>
					</ul>
				</div>
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
	<script src="js/jquery-1.11.3.min.js"></script>	<!-- jQuery (https://jquery.com/download/) -->
	<script>
		$(document).ready(function(){
		// Update the current year in copyright
			$('.tm-current-year').text(new Date().getFullYear());
		});
	</script>
	<script type="text/javascript">
		$(".friend").click(function () {
			$(".friend_list").toggle();
			$(".chat").css("background-color","#ABEBC6");
			$(".chatting").hide();
			
			var friend_dp = $(".friend_list").css("display");

			if (friend_dp == "none") {
				$(".friend").css("background-color","#ABEBC6");
			} else {
				$(".friend").css("background-color","#58D68D");
			}
		});

		$(".chat").click(function () {
			$(".chatting").toggle();
			$(".friend").css("background-color","#ABEBC6");
			$(".friend_list").hide();

			var chat_dp = $(".chatting").css("display");
			
			if (chat_dp == "none") {
				$(".chat").css("background-color","#ABEBC6");
			} else {
				$(".chat").css("background-color","#58D68D");
			}
		});
	</script>
</body>
</html>