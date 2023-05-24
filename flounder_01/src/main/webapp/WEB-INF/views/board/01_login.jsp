<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>    

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="${cpath}/resources/css/style.css">
  
  <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>  
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>
    
	<c:set var="cpath" value="${pageContext.request.contextPath}"/>
	
	<div class="card" style="min-height:500px;max-height:1000px">
	
		<div class="card-body">
		test
		<td> <p> <img alt="이미지" height = 100px src="${cpath}/resources/images/img027.jpg" ></p></td>
		
		</div>
			  
	
		<div class="card-body">
		
			<c:if test="${empty mvo}">
				
				<h4 class="card-title"> GUEST </h4>
				<p class="card-text"> 회원님 ! Welcome </p>
				
				<form action="${cpath}/login" method="post">
					<div class="form-group">
						<label> 아이디 : </label>
						<input type="text" name="username" class="form-control"/>
					</div>
					<div class="form-group">
						<label> 비밀번호 : </label>
						<input type="password" name="password" class="form-control"/>
					</div>
					<button class="btn btn-sm btn-primary form-control">로그인</button>			
					
				</form>
		
			</c:if>
			
			
			<c:if test="${!empty mvo}">
				
				<h4 class="card-title"> ${mvo.uname} </h4>
				<p class="card-text"> 회원님 ! Welcome </p>
				<form action="${cpath}/logout" method="post">
					<button class="btn btn-sm btn-primary form-control">로그아웃</button>			
				</form>
			</c:if>
			
		
		</div>
	</div> 

</body>
</html>

    