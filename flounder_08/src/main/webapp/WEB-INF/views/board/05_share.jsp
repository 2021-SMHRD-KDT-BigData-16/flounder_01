
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> 05 share </title>
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


  
  <div class="container">
  
    <div class="row align-items-start">
      <div class="col-lg-9 mx-auto">
        <div class="card-body">
        <div class="container my-3">
     <!-- 피드 등록 폼 추가 -->


    <form action="post_feed.jsp" method="POST" enctype="multipart/form-data">
      <div class="form-group">
        <label for="feedContent"></label>
        <textarea class="form-control" id="feedContent" name="content" rows="1" placeholder="내용을 입력하세요..."></textarea>
      </div>
      <div class="form-group">
        <label for="feedImage"></label>
        <input type="file" class="form-control-file" id="feedImage" name="image">
      </div>
      <button type="submit" class="btn btn-primary">등록</button>
    </form>
  </div>
          <div class="row flex-column align-items-start">
            <c:forEach var="vo" items="${list_comm}">
              <div class="col-8 mb-4">
                <div class="card" style="padding: 20px;">
                  <div class="card-img-container" style="width: 470px; height: 300px; overflow: hidden;">
                    <img src="${cpath}/resources${vo.img_path}" class="card-img-top" alt="이미지" style="width: 100%; height: 100%; object-fit: cover;">
                  </div>
                  <div class="card-body"> 
                    <!-- 작성자, 내용, 날짜 순으로 변경 -->
                    <h5 class="card-text">작성자: ${vo.m_name}</h5>
                    <p class="card-title">${vo.title}</p>
                    <p class="card-text"><small class="text-muted"><fmt:formatDate value= "${vo.c_date}" pattern="yyyy-MM-dd HH:mm:ss"/></small></p>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </div>
      </div>
 
      <div class="col-lg-3">
        <jsp:include page="97_right.jsp" />
      </div>
    
</body>
</html>


