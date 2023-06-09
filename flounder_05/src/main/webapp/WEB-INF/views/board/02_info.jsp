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
    
    <jsp:include page="96_menu_btn.jsp" />
    
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