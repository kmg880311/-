<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
 
</head>
<body>


  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
         
     
  	 <button type="button" class="btn btn-default"  onclick="location.href='backup.jsp'"><h4>인기영상</h4></button><br>
  	 <button type="button" class="btn btn-default"  onclick="location.href='backup.jsp'"><h4>최근동영상</h4></button><br>
  	 <button type="button" class="btn btn-default"  onclick="location.href='backup.jsp'"><h4>추천많은영상</h4></button><br>
  	 <button type="button" class="btn btn-default"  onclick="location.href='backup.jsp'"><h4>조회수많은영상</h4></button><br>
  	 <button type="button" class="btn btn-default"  onclick="location.href='backup.jsp'"><h4>댓글많은영상</h4></button><br>
  			
    </div>
    



</body>
</html>