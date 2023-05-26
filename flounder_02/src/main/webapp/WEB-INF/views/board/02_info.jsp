<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #000A2E;">
   <a class="navbar-brand" href="#">02 Info</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
   </button>
         <div class="collapse navbar-collapse justify-content-center" id="navbarNav"> <!-- 업데이트: justify-content-center 클래스 추가 -->
      <ul class="navbar-nav"> <!-- mr-auto 클래스를 제거하여 메뉴 항목을 가운데로 정렬 -->
   <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
         <li class="nav-item">
            <a class="nav-link" onClick="location.href='./03'">Disease Detection</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" onClick="location.href='./07'">Disease History</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" onClick="location.href='./04'">Disease Search</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" onClick="location.href='./05'">Information Sharing</a>
         </li>
      </ul>
      <form class="form-inline my-2 my-lg-0" style="position: absolute; right: 0; margin-right : 20px ">
         <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" >
         <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
      </form>
   </div>
</nav>
<div class="card-body">
			<div class="row">
				<div class="col-lg-3">
					<jsp:include page="98_left.jsp" />
				</div>
				<div class="col-lg-6">
					<div class="card">
						<div class="card-header">
					
						</div>

						<div class="card-body">
							<h4 class="card-title">BOARD</h4>
							<p class="card-text">제목</p>
							게시판 콘텐츠가 들어가는 부분
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<jsp:include page="97_right.jsp" />
				</div>
			</div>
		</div>


</body>
</html>