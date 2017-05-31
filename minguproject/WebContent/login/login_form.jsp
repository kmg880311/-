<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />

</head>
<body>


<%@ include file="/module/top.jsp" %>
<%@ include file="/module/left.jsp" %>
<%------------------------------------------------------------ --%>

	<div class="col-sm-8 text-left"> 
	       
	<br><br><br>	 
	<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
		아이디 : 	<input type="text" name="id">
		비번 : 	<input type="password" name="pw">
				<input type="submit" value="로그인">
	</form>

 	</div>	
<%------------------------------------------------------------ --%>
<%@ include file="/module/right.jsp" %>		


</body>
</html>