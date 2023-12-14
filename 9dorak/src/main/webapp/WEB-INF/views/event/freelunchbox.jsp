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
	href="${cpath}/resources/css/freelunchboxStyle.css?e" type="text/css" />
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Barlow&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
			<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-event"
					OnClick="location.href ='${pageContext.request.contextPath}/event/challenge.do'" style="cursor: pointer;">
					이벤트</div>
					<div class="text-menu"
					OnClick="location.href ='${pageContext.request.contextPath}/menu/menu.do'" style="cursor: pointer;">
					메뉴보기</div>
					<div class="text-subscribe"
					OnClick="location.href ='${pageContext.request.contextPath}/sub/sub.do'" style="cursor: pointer;">
					구독하기</div>
					<div class="text-yomo"
					OnClick="location.href ='${pageContext.request.contextPath}/yomo/notice.do'" style="cursor: pointer;">
					요모조모</div>
					<div class="text-doran"
					OnClick="location.href ='${pageContext.request.contextPath}/doran/doran.do'" style="cursor: pointer;">
					도란도란</div>
				</div>
				<img class="untitled-2"
					src="${cpath}/resources/images/main/header-logo.png" />
				<div class="div-3">
					<div class="text-wrapper-28"><a OnClick="location.href ='${pageContext.request.contextPath}/login/loginForm.do'" style="cursor: pointer;">로그인</a>
					 | 
					 <a OnClick="location.href ='${pageContext.request.contextPath}/register/registerType.do'" style="cursor: pointer;">회원가입</a></div>
					<div class="group-20" OnClick="location.href ='${pageContext.request.contextPath}/wallet/basket.do'" style="cursor: pointer;">
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
	<div class=e50_17>
		<div class=e50_18>
			<div class=e50_19>
				<span class="e50_20">구도락 무료 체험팩 선택</span>
				<span class="e50_21">구독하기 전 무료 체험을 통해 먼저 경험해보세요!</span>
			</div>
			<div class=e50_22>
				<div class=e50_23>
					<div class=e50_24>
						<div class="e50_25"></div>
					</div>
					<div class=e50_26>
						<div class="e50_27"></div>
					</div>
					<div class=e50_28>
						<div class="e50_29"></div>
					</div>
				</div>
				<div class=e50_30>
					<div class=e50_31>
						<div class="e50_32"></div>
						<div class=e50_33>
							<span class="e50_34">한돈 돼지 김치찜 도시락</span>
						</div>
					</div>
					<div class=e50_35>
						<div class="e50_36"></div>
						<div class=e50_37>
							<span class="e50_38">참치 마요 도시락</span>
						</div>
					</div>
					<div class=e50_39>
						<div class="e50_40"></div>
						<div class=e50_41>
							<span class="e50_42">쇠고기 도시락</span>
						</div>
					</div>
				</div>
			</div>
			<div class=e50_43>
				<div class="e50_44"></div>
				<span class="e50_45">0원 결제하기</span>
			</div>
		</div>
					<footer class="footer">
				<div class="footer-company-loco">
					<div class="footer-company">
						<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요
							우리는 홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
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
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
	</div>
	
</body>
</html>