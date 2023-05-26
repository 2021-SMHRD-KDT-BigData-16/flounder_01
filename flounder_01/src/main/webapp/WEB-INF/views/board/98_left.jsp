<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<div class="card" style="min-height: 500px; max-height: 1000px">
  <div class="row">
    <div class="card-body text-center">
      <h4 class="card-title">LEFT</h4>
      <div>
        <p>어서오세요 "회원"님</p>
        <button class="btn btn-primary">Logout</button>
      </div>
    </div>
  </div>
</div>