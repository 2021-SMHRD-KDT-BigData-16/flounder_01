<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>05 share</title>
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
<style>
.feed-box {
	border: 1px solid #5AD5C8;
}

.rounded-input {
	border-radius: 30px;
}

.btn-primary {
	background-color: #5AD5C8;
}

.left-section {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.left-section .feed-card {
	margin-bottom: 20px;
	width: 60%;
}

@media ( max-width : 576px) {
	.left-section .feed-card {
		width: 100%;
	}
}
</style>
</head>
<body>
    <jsp:include page="96_menu_btn.jsp" />
    <div class="card-body">
        <div style="min-height: 200px;">
            <div class="row">
                <div class="col-lg-9">
                    <div class="feed-box">
                        <div style="padding: 20px;" class="d-flex flex-column align-items-center">
                            <c:forEach var="vo" items="${list_comm}">
                                <div class="col-5 mb-4">
                                    <div class="card" style="padding: 20px;">
                                        <div class="card-img-container" style="width: 490px; height: 300px; overflow: hidden;">
                                            <img src="${cpath}/resources${vo.img_path}" class="card-img-top" alt="이미지" style="width: 100%; height: 100%; object-fit: cover;">
                                        </div>
                                        <h5 class="card-text">작성자: ${vo.m_name}</h5>
                                        <p class="card-title">${vo.title}</p>
                                        <p class="card-text">
                                            <small class="text-muted"><fmt:formatDate value="${vo.c_date}" pattern="yyyy-MM-dd HH:mm:ss" /></small>
                                        </p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <jsp:include page="97_right.jsp" />
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid fixed-bottom mb-4">
        <div class="row justify-content-end">
            <div class="col-lg-9">
                <div class="text-center">
                    <a href="${cpath}/write" class="btn btn-primary">글쓰기</a>
                </div>
            </div>
        </div>
    </div>
</body>


</html>
