<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>

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
</head>
  

<script>
	function takePhoto() {
		// 넙치 사진을 찍는 동작을 수행하는 코드 작성
		// (이미지 캡처, 머신러닝 결과 계산 등)

		// 머신러닝 결과를 가져오고 표시하는 함수 호출
		displayMachineLearningResult();
	}

	function displayMachineLearningResult() {
		// 머신러닝 결과를 가져와서 표시하는 코드 작성
		// (API 호출, 머신러닝 모델 호출 등)

		// 결과를 가져와서 표시할 영역의 HTML 요소 선택
		var resultArea = document.getElementById("result");

		// 가져온 머신러닝 결과를 resultArea에 표시
		resultArea.innerHTML = "머신러닝 결과를 표시하는 내용";
	}


</script>

<body>
	<jsp:include page="96_menu_btn.jsp" />

	<div class="card-body">
		<div class="row">
			<div class="col-lg-3">
				<jsp:include page="98_left.jsp" />
			</div>
			<div class="col-lg-6">
				<div class="card">
					<div class="card-header" style="text-align: center;">
						<h4 class="card-title">넙치질병 증상감지 BOARD</h4>
						</div>
					<div class="card-body" style="text-align: center;">
						<p class="card-text">첫번째 광어</p>
						<!-- 넙치 사진을 넣을 영역 -->
						<div class="row justify-content-center" style="text-align: center;">
							<div class="col-lg-2">
								<div class="fish-photo">
									<img src="./resources/images/f01.jpg" alt="넙치사진"
										style="width: 200px; height: 200px;">
								</div>
							</div>
							<div class="col-lg-1"></div>
							<!-- 이곳에 공백 컬럼 추가 -->
							<div class="col-lg-2">
								<img src="./resources/images/f02.png" alt="넙치사진"
									style="width: 200px; height: 200px;">
							</div>
						</div>

						<!-- 넙치 사진을 찍는 버튼과 머신러닝 결과 표시 영역 -->
						<div class="row justify-content-center">
							<div class="col-lg-6">
								<button id="take-photo-btn" class="btn btn-primary btn-lg"
									onclick="takePhoto()"
									style="background-color: #65FFF0; width: 40%; text-align: center;">넙치
									사진 찍기</button>
							</div>
						</div>
						
						<div id="result" class="card bg-light p-3" >
							<!-- 머신러닝 결과를 표시할 내용 -->
						</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3" >
					<jsp:include page="97_right.jsp" />
				</div>
		
		

</body>
</html>