<%@page import="com.smhrd.model.CocoMemberDTO"%>
<%@page import="com.smhrd.model.CocoMemberDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

</head>
<body>

	<%
		String user_email = request.getParameter("searchFriend");
		List<CocoMemberDTO> friendSearch = new CocoMemberDAO().searchFriend(user_email); //dto 변경 
	%> 

	<div id="board">
	<form action="FriendSearch.jsp">
			<table id="list">
				<tr>
					<td>친구 검색</td>
					<td colspan="2"><input type="text" placeholder ="이메일을 입력해주세요" name="searchFriend"></td>
					<td><input type="submit" value="검색"></td>
				<tr>
				<tr>
					<td colspan="4"> '<%= user_email %>'에 대한 검색 결과 </td>
				</tr>
				<%
					for (CocoMemberDTO i : friendSearch) {	//dto 변경
				%>
				<tr>
					<td colspan="4"><a href="BoardDetail.jsp?num=<%=i.getUser_email()%>"><%=i.getUser_email()%></a></td>	<!-- 친구 신청으로 들어가게 만들기 -->
				</tr>
				<%
				}
				%>
			</table>
		</form>
		<a href="index.jsp"><button id="writer">홈으로가기</button></a> <!-- 경로 변경 -->
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>