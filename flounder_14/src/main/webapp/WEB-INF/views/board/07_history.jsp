
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

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

            function loadMoreContent() {
                if (loading) {
                    return;
                }

                loading = true;

                $.ajax({
                    url: 'path/to/endpoint', // Replace with the actual endpoint URL
                    type: 'GET',
                    data: {page: page},
                    success: function (response) {
                        container.append(response);
                        loading = false;
                        page++;
                    },
                    error: function () {
                        loading = false;
                    }
                });
            }

            $(window).scroll(function () {
                if ($(window).scrollTop() + $(window).height() >= $(document).height()) {
                    loadMoreContent();
                }
            });

            loadMoreContent();
        });
    </script>
<style>
.container {
	border: 1px solid #5AD5C8;
}

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
	border: 1px solid #5AD5C8;
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
	border: 1px solid #5AD5C8;
}

table.table-bordered th, table.table-bordered td {
	border: 1px solid #5AD5C8;
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
.feed-box {
  border: 1px solid #5AD5C8;
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
                        <c:forEach var="vo" items="${list_detect}">
                            <div class="col-5 mb-4">
                                <div class="card" style="padding: 20px;">
                                    <div class="card-img-container"
                                        style="width: 490px; height: 300px; overflow: hidden;">
                                        <img src="${cpath}/resources/${vo.org_img}"
                                            class="card-img-top" alt="이미지"
                                            style="width: 100%; height: 100%; object-fit: cover;">
														</div>


														<div class="col-md-6 text-box-right chat-bubble">


																<div class="name">${vo.m_name}</div>
															<div class="chat-content">
																<div class="title">${vo.dd_comment}</div>
																


																<div class="date">
																	<fmt:formatDate value="${vo.dd_date}"
																		pattern="yyyy-MM-dd HH:mm:ss" />
																</div>
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
	

</body>
</html>