<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="UpdateService" method="post">
		
		<div>
		 <input type="password" name="user_pw" placeholder="비밀번호">
		</div>
		<div>
		 <input type="text" name="user_nick" placeholder="닉네임"> 		
		</div>
		<div>
		 <input type="text" name="user_phone" placeholder="전화번호">		
		</div>

		<div>
			강아지<input type="checkbox" name="user_pet" value="강아지"> 
			고양이<input type="checkbox" name="user_pet" value="고양이">
		</div>
		<input type="submit" value="수정">

	</form>

</body>
</html>