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
  
  
<!--   
        <form action="http://localhost:80/fileUpload" method="POST" enctype = "multipart/form-data">
        <input type = "file" name = "file" />
        <a href="/view" onclick="return confirm('제출 성공! \n업로드한 이미지를 확인합니다.');">제출하기</a>  
 -->
 
     
    <div class="card-body">
      <div class="row">
        
        <div class="col-lg-6">
          <div class="card">
              <div class="row justify-content-center">
                 <form action="http://121.179.7.40:5000/process_image" method="post" enctype="multipart/form-data">
                     <div class="form-group">
                       <label>내용:</label>
                       <input type="text" name="title" />
                     </div>
                     <div class="form-group">
                       <label>업로드 이미지:</label>
                       <input type="file" name="image" />
                     </div>
                     <button type="submit" class="btn btn-sm btn-primary">플라스크 upload</button>
                 </form>
              </div>
              
            </div>
          </div>
          
        </div>
        
          
      </div>  
        
    </div>  
  </body>
</html>    