<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>00 Intro</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  </head>
   <style>
    body {
      background-image: url("./resources/images/sea03.gif");
      background-size: cover;
      background-repeat: no-repeat;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }
    
    .start-button {
      color: white;
      font-weight: bold;
     
      font-size: 26px;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s;
      background-color: #5AD5C8;
      border: 2px solid white; /* 테두리 추가 */
      border-radius: 5px; /* 테두리를 각지게 만들기 */
      border-width: 3px; /* 테두리 선 굵기 조정 */
    }
    
    .start-button:hover {
      
      background-color: transparent; /* 배경 없애기 */
    }
  </style>
</head>

<body>
  <button class="start-button" onClick="location.href='./04'">Welcom</button>
</body>

</html>





