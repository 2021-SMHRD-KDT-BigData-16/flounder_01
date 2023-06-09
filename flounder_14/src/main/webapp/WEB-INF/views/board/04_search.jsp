<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
    
    <!-- 여기부터 -->
    <script
    src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 여기까지 -->
     <style>
    .search-button {
        background-color: #5AD5C8; 
        color: white;
        padding: 6px;
        width: 80px;
    }
    .search-button:hover {
        background-color: none;
        color: white;
        cursor: pointer;
        border: 1px solid white; /* 마우스를 올렸을 때 테두리를 표시 */
    }
     .table-bordered td {
        text-align: center;
    }
  .table {
    width: 100%;
    border-collapse: collapse;
    background-color: #f2f2f2; /* Set your desired background color */
  }

  .table thead th {
    background-color: #5AD5C8;
    color: white;
    font-weight: bold;
    padding: 10px;
    text-align: center;
    border: 1px solid #5AD5C8;
  }

  .table tbody td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ddd;
     background-color: white;
  }
   .btn-submit {
    width: 100%;
    background-color: #5AD5C8; /* Set your desired background color */
    color: white;
    font-weight: bold;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
  }
        
    </style>
</head>

  <body>
    
    <jsp:include page="96_menu_btn.jsp" />
    
    
		<div class="card-body">
			<div class="row">
		
        
            <div class="col-lg-9">
                <div class="card">
                    <!-- 질병검색 -->
                    <div class="card-body" style="position: relative;">
                        <h4 class="card-title text-center"> 질병 검색 </h4>
                        </br>
                        <form action="${cpath}/search" method="post" class="form-inline my-2 my-lg-0 d-flex justify-content-center">
                            <div class="row">
                                <div class="col">
                                    <input class="form-control mr-sm-2 text-center" type="search" name="str_search" placeholder="Search" aria-label="Search" style="width: 110%;">
                                </div>
                                <div class="col-auto">
                                    <button class="btn search-button" type="submit">검색</button>
                                </div>
                            </div>
                        </form>
                    
                    </br>
                <table class="table table-bordered table-hover">
  <thead>
  <tr>
    <th style="width: 25%; vertical-align: middle;">병명</th>
    <th style="width: 50%; vertical-align: middle;">증상</th>
    <th style="width: 15%; vertical-align: middle;">원인체</th>
    <th style="width: 10%; vertical-align: middle;">URL 이동</th>
  </tr>
</thead>
                  
                 <tbody>
  <c:forEach var="vo" items="${list_search}">
    <tr>
      <td style="vertical-align: middle;">${vo.ds_name}</td>
      <td style="vertical-align: middle;">${vo.ds_simple}</td>
      <td style="vertical-align: middle;">${vo.ds_cause}</td>
      <form action="${cpath}/search_detail" method="post" class="form-inline my-2 my-lg-0" style="position: absolute; right: 0; margin-right : 20px;">
        <input type="hidden" name="ds_id" value="${vo.ds_id}">
        <td style="padding: 5px; vertical-align: middle;">
          <button type="submit" class="btn-submit">상세보기</button>
        </td>
      </form>
    </tr>
  </c:forEach>
</tbody>								
                </table>
          				
								</div>
								</div>
              </div>
          
       
              <!-- 질병검색 끝 -->
				<div class="col-lg-3">
					<jsp:include page="97_right.jsp" />
        </div>
    
		
 <script>
 
//	function display(){
//		if($("#${vo.ds_id}").css("display")=="none"){
//			$("#${vo.ds_id}").css("display", "block")
//		}else{
//			$("#${vo.ds_id}").css("display", "none")
//		}
//	}

$(".move").on("click", function(e){ 
				e.preventDefault(); // a tag의 고유한 기능을 막는 방법
				var num = $(this).attr("href");
				var tag = "<input type='hidden' name='ds_id' value='"+ds_id+"'>";
				pageForm.append(tag);
				pageForm.attr("action", "${cpath}/search_detail");
				pageForm.attr("method", "get");
				pageForm.submit(); // 폼을 전송
			});
 </script>
</body>

</html>