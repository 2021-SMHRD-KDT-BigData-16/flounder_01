<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<style>
  .nav-item:hover .nav-link::after {
    content: attr(data-korean-name); /* Show Korean translation as pseudo-element content */
    position: absolute;
    top: 100%;
    left: 50%;
    transform: translateX(-50%);
    background-color: #000A2E; /* Set background color to #000A2E */
    color: white;
    padding: 5px;
    border-radius: 3px;
    font-size: 12px;
    opacity: 0;
    transition: opacity 0.3s;
  }


</style>



<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #000A2E;">
  <a class="navbar-brand" href="#" onClick="location.href='./02'">02 Info</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#" onMouseOver="showKoreanText(this, '질병검출')" onMouseOut="showKoreanText(this, 'Disease Detection')" onClick="location.href='./03'">Disease Detection</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" onMouseOver="showKoreanText(this, '히스토리')" onMouseOut="showKoreanText(this, 'Disease History')" onClick="location.href='./07'">Disease History</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" onMouseOver="showKoreanText(this, '질병검색')" onMouseOut="showKoreanText(this, 'Disease Search')" onClick="location.href='./04'">Disease Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" onMouseOver="showKoreanText(this, '정보공유')" onMouseOut="showKoreanText(this, 'Information Sharing')" onClick="location.href='./05'">Information Sharing</a>
      </li>
   </ul>
   <script>
  function showKoreanText(element, text) {
    element.textContent = text;
  }
</script>
    </ul>
    <form class="form-inline my-2 my-lg-0" style="position: absolute; right: 20px;">
      <button class="btn btn-outline-light my-2 my-sm-0" type="button" data-toggle="collapse" data-target="#menuCollapse" aria-controls="menuCollapse" aria-expanded="false">
        <span class="navbar-toggler-icon"></span>
      </button>
    </form>
  </div>
</nav>
