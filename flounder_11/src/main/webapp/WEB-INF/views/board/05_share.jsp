
<%@page import="org.springframework.web.context.request.SessionScope"%>
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
 
		<script type="text/javascript">

		$(document).ready(()=>{
			var pageForm = $("#pageForm");
			// 상세보기로 이동
			$(".move").on("click", function(e){ 
				e.preventDefault(); // a tag의 고유한 기능을 막는 방법
				var c_id = $(this).attr("href");
				var tag = "<input type='hidden' name='c_id' value='"+c_id+"'>";
				pageForm.append(tag);
				pageForm.attr("action", "${cpath}/share_detail");
				pageForm.attr("method", "post");
				pageForm.submit(); // 폼을 전송
				});
			});
		</script>

  </head>
  <body>
    
    <jsp:include page="96_menu_btn.jsp" />
    
    
		<div class="card-body">
			<div class="row">
			
				<div class="col-lg-9">
					<div class="card">
            
						<div class="card-body">
              
							<h4 class="card-title">커뮤니티 게시판</h4>
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<td> 제목 </td>
										<td> 작성일 </td>
										<td> 작성자 </td>
										<td> 사진 </td>
                  </tr>
                </thead>
								
								<tbody>
									<c:forEach var="vo" items="${list_comm}">
                    
											<tr>
												<td> <a class="move" href="${vo.c_id}">${vo.title}</a> </td>
												<!--  
												<form action="${cpath}/share_detail" method="post" class="form-inline my-2 my-lg-0" style="position: absolute; right: 0; margin-right : 20px ">
													<td>
													 <button type="submit">${vo.title}</button>
													 <input type="hidden" name="c_id" value="${vo.c_id}">
													 </td>
												</form>
												-->
												<td> <fmt:formatDate value= "${vo.c_date}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
												<td> ${vo.m_name} </td>
												<td> <p> <img alt="이미지" height = 100px src="${cpath}/resources${vo.img_path}" ></p></td>
	                    </tr>
								 		
								 		
                  </c:forEach>
                  
                </tbody>								
              </table>
              
							<form id="pageForm" >

							</form>
							
            </div>
          </div>
        </div>
        
				<div class="col-lg-3">
	  			<jsp:include page="97_right.jsp" />
        </div>
        
      </div>
		
  </body>
</html>