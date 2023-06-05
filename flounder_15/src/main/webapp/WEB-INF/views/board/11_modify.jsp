
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>06 share detail</title>
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
    
<jsp:include page="96_menu_btn.jsp" />



	<div class="card-body">
			<div class="row">

				<div class="col-lg-7">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">BOARD</h4>
							<p class="card-text">게시판 수정</p>
							<form id="frm" action="${cpath}/modify" method="post">
								<div class="form-group">
									<label>제목:</label> 
									<input type="text" name="title" value="${mo.title}" class="form-control" />
								</div>
								<div class="form-group">
									<label>내용:</label>
									<textarea rows="10" name="c_text" class="form-control">${mo.c_text}</textarea>
								</div>
								<button id="list" type="button" class="btn btn-sm btn-primary" ">목록</button>
								<button type="submit" class="btn btn-sm btn-primary">
									<input type="hidden" name="c_id" value="${mo.c_id}">
									제출
								</button>
							</form>
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