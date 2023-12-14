<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/friendaddStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<header class="header">
		<div class="top-nav">
			<div class="navbar">
				<div class="text-event"
					OnClick="location.href ='${pageContext.request.contextPath}/event/challenge.do'"
					style="cursor: pointer;">이벤트</div>
				<div class="text-menu"
					OnClick="location.href ='${pageContext.request.contextPath}/menu/menu.do'"
					style="cursor: pointer;">메뉴보기</div>
				<div class="text-subscribe"
					OnClick="location.href ='${pageContext.request.contextPath}/sub/sub.do'"
					style="cursor: pointer;">구독하기</div>
				<div class="text-yomo"
					OnClick="location.href ='${pageContext.request.contextPath}/yomo/notice.do'"
					style="cursor: pointer;">요모조모</div>
				<div class="text-doran"
					OnClick="location.href ='${pageContext.request.contextPath}/doran/doran.do'"
					style="cursor: pointer;">도란도란</div>
			</div>
			<img class="untitled-2"
				src="${cpath}/resources/images/main/header-logo.png" />
			<div class="div-3">
				<div class="text-wrapper-28">
					<a
						OnClick="location.href ='${pageContext.request.contextPath}/login/loginForm.do'"
						style="cursor: pointer;">로그인</a> | <a
						OnClick="location.href ='${pageContext.request.contextPath}/register/registerType.do'"
						style="cursor: pointer;">회원가입</a>
				</div>
				<div class="group-20"
					OnClick="location.href ='${pageContext.request.contextPath}/wallet/basket.do'"
					style="cursor: pointer;">
					<div class="header-overlap-group-3">
						<img class="header-group-21"
							src="${cpath}/resources/images/main/header-cart.png" />
						<div class="ellipse-light"></div>
						<!-- <div class="text-wrapper-29">2</div> -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="screen">
		<div id="event_menu">
			<ul>
				<li><a
				href="${pageContext.request.contextPath}/event/challenge.do"
				>챌린지 ZONE</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/freelunchbox.do">도시락
						무료 체험</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/makelunchbox.do">도시락
						만들9</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendreco.do">친구
						추천</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendadd.do">친구
						추가</a></li>
			</ul>
		</div>
	</div>
	<hr>
	<div class=e62_324>
		<div class=e62_466>

			<div class=e62_325>
				<div class=e62_326>
					<p class="e62_327">친구 추가로 혜택을 함께 누려보세요</p>
					<p class="e62_328">지인이나 가족 목록에 사람을 추가해보세요! 회원 코드를 복사하고 등록하면</p>
				</div>
			</div>
			<span class="e62_465">두 분 모두에게 <span class="pointer">900P</span>
				를 드려요 !
			</span>
		</div>
		<div class=e63_173>
			<span class="e62_373">추가한 친구</span><span class="e62_374">추가된
				친구</span>
		</div>
	</div>
	<footer class="footer">
		<div class="footer-company-loco">
			<div class="footer-company">
				<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요 우리는
					홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
				<img class="footer-logo"
					src="${cpath}/resources/images/main/footer-logo.png" />
			</div>
			<div class="footer-social-icon">
				<div class="footer-facebook">
					<img class="footer-mask-group"
						src="${cpath}/resources/images/main/footer-facebook.png" />
				</div>
				<div class="footer-instagram">
					<img class="footer-img"
						src="${cpath}/resources/images/main/footer-insta.png" />
				</div>
				<div class="footer-twitter">
					<img class="footer-mask-group-2"
						src="${cpath}/resources/images/main/footer-twitter.png" />
				</div>
				<div class="footer-linkind">
					<img class="footer-mask-group-2"
						src="${cpath}/resources/images/main/footer-linkedin.png" />
				</div>
			</div>
		</div>
		<div class="footer-contact-us">
			<div class="footer-text-wrapper-2">Contact Us</div>
			<div class="footer-group">
				<div class="footer-text-wrapper-3">1234 Country Club Ave</div>
				<div class="footer-text-wrapper-3">NC 123456, London, UK</div>
				<div class="footer-text-wrapper-3">+0123 456 7891</div>
			</div>
			<div class="footer-overlap-group-wrapper">
				<div class="footer-overlap-group">
					<div class="footer-vector-wrapper">
						<img class="footer-vector"
							src="${cpath}/resources/images/main/footer-email-button.png" />
					</div>
					<input class="footer-enter-email"
						placeholder="Enter your email....">
				</div>
			</div>
		</div>
		<div class="footer-user-link">
			<div class="footer-text-wrapper-7">User Link</div>
			<div class="footer-group-2">
				<div class="footer-text-wrapper-3">About Us</div>
				<div class="footer-text-wrapper-3">Contact Us</div>
				<div class="footer-text-wrapper-3">Order Delivery</div>
				<div class="footer-text-wrapper-3">Payment &amp; Tex</div>
				<div class="footer-text-wrapper-3">Terms of Services</div>
			</div>
		</div>
		<div class="footer-opening-restaurant">
			<div class="footer-text-wrapper-7">Opening Restaurant</div>
			<div class="footer-group-3">
				<div class="footer-text-wrapper-3">Sat-Wet: 09:00am-10:00PM</div>
				<div class="footer-text-wrapper-3">Thursdayt: 09:00am-11:00PM</div>
				<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
			</div>
		</div>
	</footer>
	<script>
		$(document).ready(function() {
			function fadeInSequentially(elements, interval) {
				var index = 0;
				var intervalId = setInterval(function() {
					elements.eq(index).addClass("active");
					index++;

					if (index === elements.length) {
						clearInterval(intervalId);
					}
				}, interval);
			}

			var elements = $(".e62_326, .e63_173, .e62_465");
			fadeInSequentially(elements, 500); // 각 요소가 1초 간격으로 나타납니다.
		});
	</script>
</body>
</html>