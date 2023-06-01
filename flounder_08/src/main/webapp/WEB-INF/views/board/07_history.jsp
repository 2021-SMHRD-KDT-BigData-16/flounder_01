
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <title>07 history</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function () {
            var loading = false;
            var page = 1;
            var container = $('#contentContainer');

            // 더 많은 콘텐츠를 로드하는 함수
            function loadMoreContent() {
                if (loading) {
                    return;
                }

                loading = true;

                // 서버에서 더 많은 데이터를 가져오기 위한 AJAX 요청 수행
                $.ajax({
                    url: 'path/to/endpoint', // 실제 엔드포인트 URL로 대체해야 합니다.
                    type: 'GET',
                    data: {page: page},
                    success: function (response) {
                        // 새로운 데이터로 콘텐츠 컨테이너 업데이트
                        container.append(response);
                        loading = false;
                        page++;
                    },
                    error: function () {
                        loading = false;
                    }
                });
            }

            // 스크롤 이벤트 처리를 위한 이벤트 핸들러
            $(window).scroll(function () {
                if ($(window).scrollTop() + $(window).height() >= $(document).height()) {
                    loadMoreContent();
                }
            });

            // 초기 로드
            loadMoreContent();
        });
    </script>
 <style>
    .card2 {
        margin-bottom: 20px;
        border-radius: 5px;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 90%;
        margin: 0 auto;
        background-color: #f1f1f1;
        padding: 10px;
    }

    .card2 .content .title {
        font-weight: bold;
        margin-bottom: 10px;
    }

    .card2 .content .name {
        font-size: 14px;
    }

    .card2 img {
        width: 95%;
        height: auto;
        margin: 0 auto;
    }

    table.table-bordered {
        border: none;
    }

    table.table-bordered th,
    table.table-bordered td {
        border: none;
    }

    table.table-bordered tbody tr {
        background-color: transparent;
    }

    .chat-bubble {
        background-color: #FFFFFF;
        border-radius: 10px;
        padding: 10px;
        margin-bottom: 10px;
    }

    .chat-content {
        color: #333333;
    }

    .chat-content .title {
        font-weight: bold;
        margin-bottom: 5px;
    }

    .chat-content .date {
        font-size: 12px;
        color: #999999;
    }
    
    .chat-content .name {
        font-size: 12px;
        color: #000000;
        font-weight: bold;
    }

    .chat-window {
        max-width: 600px;
        margin: 0 auto;
    }
</style>

</head>
<body>
<jsp:include page="96_menu_btn.jsp" />

<div id="contentContainer">
    <div class="card2-body">
        <div class="row">
            <div class="col-lg-9">
                <div class="card2">
                    <div class="card2-body">
                        <h4 class="card2-title text-center">히스토리 게시판</h4>
                        <table class="table table-bordered table-hover">
    <tbody>
   <c:forEach var="vo" items="${list_detect}">
    <tr>
        <td>
            <div class="card2">
                <div class="row">
                    <div class="col-md-6 img-box-left">
                        <img alt="이미지" src="${cpath}/resources/${vo.org_img}">
                    </div>
                    <div class="col-md-6 text-box-right chat-bubble">
                        <div class="chat-content">
                            <div class="title">${vo.dd_comment}</div>
                            <div class="date"><fmt:formatDate value="${vo.dd_date}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                            <div class="name">${vo.m_name}</div>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </tr>
</c:forEach>

    </tbody>
</table>
                 </div>
                </div>
            </div>
            <div class="col-3">
                <jsp:include page="97_right.jsp" />
            </div>
        </div>
    </div>
</div>

</body>
</html>