<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
    request.setCharacterEncoding("UTF-8");
%>
 
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<title> 04 search </title>

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

<script type="text/javascript">


</script>
</head>
<body>

<div class="card-header">
	<jsp:include page="96_menu_btn.jsp" />
</div>


	<div class="card">
		<div class="card-header">
			<div class="jumbotron jumbotron-fluid">
				<div class="container">
					<h1> 04 search </h1>
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="row">
				<div class="col-lg-2">
					<jsp:include page="98_left.jsp" />
				</div>
				<div class="col-lg-7">
					<div class="card">
						<div class="card-header">
							<jsp:include page="96_menu_btn.jsp" />
						</div>

<!-- 질병검색 -->
						<div class="card-body">
							<h4 class="card-title">질병검색</h4>

							<div class="input-group mb-3">
							
							
							
							

          <form action="${cpath}/search" method="post">
            <div class="form-group">
              <input type="text" name="str_search" class="form-control" >
            </div>
            <button class="btn btn-primary">검색</button>
          </form>
					
					
					
					
					<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<td> 병명 </td>
										<td> 증상 </td>
										<td> 원인체 </td>
										<td> URL </td>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach var="vo" items="${list_comm}">
									
										<tr>
											<td> ${} </td>
											<td> <fmt:formatDate value= "${vo.c_date}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
											<td> ${vo.m_name} </td>
											<td> <p> <img alt="이미지" height = 100px src="${cpath}/resources${vo.img_path}" ></p></td>
										</tr>
								 		
									</c:forEach>

								</tbody>								
							</table>
					
					
					
							
<!-- 							
							<form action="${cpath}/search" method="post">
								<input type="text" name="str_search" class="form-control" id="dis_search"
									placeholder="Search" value="1234">
								<div class="input-group-append">
									<a id="search" type="button" class="btn btn-secondary">Go</a>
								</div>
							</form>
 -->								
								
								
							</div>
<!-- 질병검색 끝 -->
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
		<div class="card-footer">권벤저스</div>
	</div>

</body>
</html>