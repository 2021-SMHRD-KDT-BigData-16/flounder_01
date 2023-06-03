
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> 08 history detail </title>
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
	$(document).ready(function() {
		// 4개의 버튼을 클릭하면 처리하는 부분
		$("button").on("click", function(e) {
			var btn = $(this).data("btn"); // data() = data-에 있는 이름
			var formData = $("#frm");
			if (btn == "list") {
				//location.href="${cpath}/list";
				formData.find("#num").remove();
				formData.attr("action", "${cpath}/history");
				formData.attr("method", "post");
			} else if (btn == "modify") {
				formData.attr("action", "${cpath}/modify"); // ?num=${vo.num}
				formData.attr("method", "post");
			} else if (btn == "remove") {
				//location.href="${cpath}/remove?num="+${vo.num};
				formData.attr("action", "${cpath}/remove"); // ?num=${vo.num}
				formData.attr("method", "post");
			} else if (btn == "reply") {
				formData.attr("action", "${cpath}/reply"); // ?num=${vo.num}
				formData.attr("method", "post");
			}
			formData.submit(); // 전송
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
						
						<!-- main context -->
						<table class="table">
							<tr>
								<td><img alt="이미지" style="width: 100%; height: auto;" src="${cpath}/resources${history_detail.org_img}">
								</td>
							<tr/>
							<tr>
								<td><img alt="이미지" height=500px src="${cpath}/resources${history_detail.dt_img}">
								</td>
							</tr>
							<tr>
								<td style="width: 100px">제목</td>

							</tr>
							<tr>
								<td>내용</td>
								<td>${fn:replace(hisory_detail.dd_comment,newLineChar,"<br/>")}</td>
								<!-- vo.content에서 \n를 찾아 <br>로 바꾼다.라는 뜻 -->
								<!-- 그런데 \는 특수한 기호이므로 표현식에는 쓸 수 없다. -->
								<!-- 따라서 \n을 다른 변수에 바인딩 시켜서 그 바인딩 한것을 써줘야 한다. -->
							</tr>
							<tr>
								<td>작성자</td>
								<td>${history_detail.m_name}</td>
							</tr>
							<tr>
								<td>작성일</td>
								<td><fmt:formatDate value="${history_detail.dd_date}"
										pattern="yyyy-MM-dd HH:mm:ss" /></td>
							</tr>

							<td colspan="2" style="text-align: center;">
								<button data-btn="list" class="btn btn-sm btn-primary">목록</button>

								<!-- 로그인한 아이디와 게시물의 아이디가 같을경우 --> 
								<c:if test="${mvo.m_email eq share_detail.w_email}">
									<button data-btn="modify" class="btn btn-sm btn-primary">수정</button>
									<button data-btn="remove" class="btn btn-sm btn-primary">삭제</button>
								</c:if> 
								<c:if test="${!empty mvo}">
									<button data-btn="reply" class="btn btn-sm btn-primary">답글</button>
								</c:if>
						</table>

						<form id="frm">

						</form>
						

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