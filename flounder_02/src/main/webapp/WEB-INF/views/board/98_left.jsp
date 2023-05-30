<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
  .btn-primary {
    width: 100%;
    margin-top: 20px;
    border-radius: 5px;
    background-color: #000a2e;
    color: white;
    font-weight: bold;
    border: 1px solid white;
  }
  
  .btn-primary:hover {
    background-color: none;
    cursor: pointer;
  }
  
</style>

<body>
  <div class="card bg-light">
    <div class="row justify-content-center align-items-center" style="min-height: 500px; max-height: 1600px;">
      <div class="col-sm-6">
        <div class="card-body text-center">
          <h4 class="card-title"></h4>
          <div>
            <c:if test="${!empty mvo}">
              <h4 class="card-title">${mvo.m_name}</h4>
              <p class="card-text">회원님, 환영합니다.</p>
              <form action="${cpath}/logout" method="post">
                <button class="btn btn-primary">로그아웃</button>
              </form>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
