<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <title>04 search</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    .search-button {
        background-color: #000A2E; 
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
        
    </style>
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
                    <!-- 질병검색 -->
                    <div class="card-body" style="position: relative;">
                        <h4 class="card-title text-center">질병검색</h4>
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
                    </div>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td>병명</td>
                                <td>증상</td>
                                <td>원인체</td>
                                <td>URL</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="vo" items="${list_search}">
                                <tr>
                                    <td>${vo.ds_name}</td>
                                    <td>${vo.ds_simple}</td>
                                    <td>${vo.ds_cause}</td>
                                    <td>상세보기</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- 질병검색 끝 -->
                </div>
            </div>
            <div class="col-lg-3">
                <jsp:include page="97_right.jsp" />
            </div>
        </div>
    </div>
</body>

</html>
