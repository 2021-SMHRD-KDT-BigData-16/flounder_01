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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    .custom-file-input {
      cursor: pointer;
      height: 100%;
      position: absolute;
      top: 0;
      right: 0;
      z-index: 2;
      opacity: 0;
    }
    
    .custom-file-label {
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
  </style>
  
  
  <script>
  
    function readImage(input)
    {
    	if(input.files && input.files[0]) {
    		var reader = new FileReader();
    		reader.onload = function(e)
    		{
    			document.getElementById('preview_img').src = e.target.result;
    		};
    		reader.readAsDataURL(input.files[0]);
    	} else {
    		document.getElementById('preview_img').src = "";
    	}
    	
    }
  
  </script>
  
  </head>
  
  <body>
    <jsp:include page="96_menu_btn.jsp" />
    
    <div class="card-body">
      <div class="row">
      
        <div class="col-lg-2">
          <jsp:include page="98_left.jsp" />
        </div>
        
        <div class="col-lg-7">
          <div class="card">
            <div class="card-header" style="text-align: center;">
              <h4 class="card-title">넙치질병 증상감지 BOARD</h4>
            </div>
              
              <div class="row justify-content-center">
                 <form action="${cpath}/dd_register" method="post" enctype="multipart/form-data">
                     <input type="hidden" name="dd_email" value="${mvo.m_email}"/>
                     <div class="form-group">
                       <label>업로드 이미지:</label>
                       <input type="file" name="file" id="file" accept="image/*" onchange="readImage(this);" />
                     </div>
                     <div class="form-group">
                       <img id = "preview_img" height = 400px/>
                     </div>
                   
                     <button type="submit" class="btn btn-sm btn-primary" style="width: 45%; font-size: 0.8em;">등록</button>
                     <button type="reset" class="btn btn-sm btn-primary" style="width: 45%; font-size: 0.8em;">취소</button>
                 </form>
              </div>
            </div>
            <a class="nav-link" href="#" onClick="location.href='./51'">파이썬 플라스크 연동 테스트</a>
          </div>
          
          
		    <div class="col-lg-3" >
			    <jsp:include page="97_right.jsp" />
        </div>

      </div>  
        
    </div>  
  </body>
</html>    