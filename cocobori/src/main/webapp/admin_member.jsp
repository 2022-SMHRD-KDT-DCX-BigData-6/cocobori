<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자페이지</title>

<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Open+Sans:300,400">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/tooplate-style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	  rel="stylesheet"
	  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	  crossorigin="anonymous">
</head>

<body>
	<!-- 관리자 아이디로 로그인시 열리는 페이지 -->
	<div class="container-fluid">
		<div class="tm-body margin-b-50">
			<div class="tm-sidebar">
				<section id="welcome" class="tm-content-box tm-banner margin-b-15">
					<div class="tm-banner-inner">
						<h1 class="tm-banner-title">COCOBORI</h1>
						<p class="tm-banner-subtitle">관리자페이지</p>
					</div>
				</section>


				<nav class="tm-main-nav">
					<ul class="tm-main-nav-ul">
						<li class="tm-nav-item"><a href="index.jsp"
							class="tm-nav-item-link tm-button">HOME</a></li>
						<li class="tm-nav-item"><a href="index.jsp"
							class="tm-nav-item-link tm-button">LOGOUT</a></li>
					</ul>
				</nav>
			</div>
			<div class="tm-main-content">
					<table class="table">
					<thead class="table-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">email</th>
							<th scope="col">name</th>
							<th scope="col">phone</th>
							<th scope="col">delete</th>

						</tr>
					</thead>
					<tbody class="table-group-divider">
						<!-- 반복문으로 회원정보 가져오기 -->
						<tr>
							<th scope="row">1</th>
							<td>totoro@naver.com</td>
							<td>토토로</td>
							<td>010-4209-8355</td>
							<td><a href="#"><button type="button"
										class="btn btn-outline-danger btn-sm">삭제</button></a></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>banana@naver.com</td>
							<td>바나나</td>
							<td>010-1234-5678</td>
							<td><a href="#"><button type="button"
										class="btn btn-outline-danger btn-sm">삭제</button></a></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>cherry@google.com</td>
							<td>체리</td>
							<td>010-5478-2312</td>
							<td><a href="#"><button type="button"
										class="btn btn-outline-danger btn-sm">삭제</button></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous">
	</script>
</body>
</html>
