<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();
%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.9.2/dist/confetti.browser.min.js"></script>
	<script>
        $(document).ready(function() {
            const body = $('body')[0];
            const bodyRect = body.getBoundingClientRect();
            confetti({
                particleCount: 100,
                spread: 180,
                origin: {
                    x: (bodyRect.left + bodyRect.width / 2) / window.innerWidth,
                    y: (bodyRect.top + bodyRect.height / 2) / window.innerHeight
                }
            });
        });
    </script>
<style type="text/css">
.e106_348 {
	width: 607px;
	height: 360px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 285px;
}

.e106_291 {
	width: 607px;
	height: 115px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: -30px;
	background-image:
		url(${cpath}/resources/images/register/ProgressBar_3.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_193 {
	color: rgba(0, 0, 0, 1);
	width: 467px;
	height: 72px;
	position: absolute;
	left: 132px;
	top: 150px;
	text-align: left;
	font-size: 40px;
	letter-spacing: 0;
}

.e106_394 {
	width: 300px;
	height: 77.960205078125px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 880px;
}

.e106_395 {
	box-shadow: 0px 10px 30px
		rgba(196.00000351667404, 80.00000283122063, 17.00000088661909,
		0.5099999904632568);
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 202px;
	height: 73.960205078125px;
	position: absolute;
	left: 56px;
	top: -363px;
	border-top-left-radius: 35px;
	border-top-right-radius: 35px;
	border-bottom-left-radius: 35px;
	border-bottom-right-radius: 35px;
	cursor: pointer;
}

.v39_199 {
	color: rgba(255, 255, 255, 1);
	width: 131px;
	height: 23px;
	position: absolute;
	left: 40px;
	top: 24px;
	text-align: center;
	font-size: 22px;
	letter-spacing: 3;
	font-weight: bold;
}

</style>
</head>
<body>
	<header class="header">
		<div class="top-nav">
			<div class="navbar">
				<div class="text-event">
					<a class="header-a"
						href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
				</div>
				<div class="text-menu">
					<a class="header-a"
						href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
				</div>
				<div class="text-subscribe">
					<a class="header-a"
						href="${pageContext.request.contextPath}/sub/sub.do">구독하기</a>
				</div>
				<div class="text-yomo">
					<a class="header-a"
						href="${pageContext.request.contextPath}/yomo/notice.do">요모조모</a>
				</div>
				<div class="text-doran">
					<a class="header-a"
						href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/main.do"> <img
				class="untitled-2"
				src="${cpath}/resources/images/main/header-logo.png" />
			</a>
			<div class="div-3">
				<div class="text-wrapper-28">
					<c:choose>
						<c:when test="${not empty sessionScope.loginmem.mem_id}">
							<span style="font-weight: bold; left: -1rem; position: relative;">
								<c:out value="${sessionScope.loginmem.mem_name}" /> 님 |
							</span>
							<a class="header-a"
								href="${pageContext.request.contextPath}/my/logout.do"
								style="position: relative; left: -1rem">로그아웃</a>
						</c:when>
						<c:otherwise>
							<a class="header-a"
								href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
                            <a class="header-a"
								href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="group-20" id="lightsParent">
							<div class="header-overlap-group-3" onclick="loginBasket()">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
							</div>
						</div>
			</div>
		</div>
	</header>

	<div class=e106_348>
		<div class="e106_291"></div>
		<span class="e106_193">회원가입을 환영합니다!</span>
	</div>

	<div class=e106_394>
		<a href="${pageContext.request.contextPath}/main.do" class="e106_395">
			<div class="v39_199">홈으로 이동</div>
		</a>
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
				<div class="footer-text-wrapper-3">Payment & Tex</div>
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
</body>
<script type="text/javascript">
//장바구니 
function loginBasket() {
		var mem_id = "${sessionScope.loginmem.mem_id}";

		// 로그인 여부 확인
		if (mem_id == "") {
			alert("로그인이 필요한 서비스입니다 !");
			window.location.href="${cpath}/login/loginForm.do";
			return;
		} else {
			window.location.href="${pageContext.request.contextPath}/wallet/basket.do";
		}
}

window.onload = emptyBasket;

function emptyBasket() {
	var mem_id = "${sessionScope.loginmem.mem_id}";

			$.ajax({
				type : "POST",
				url : "${cpath}/wallet/emptyBasket.do",
				data : {
					mem_id : mem_id,
				},
				dataType : "json",
				success : function(response) {
					if (response.success) {
						console.log("콘솔 - 상품이 이미 장바구니에 존재합니다! - 불키자");
						lightsOn();
					} else {
						console.log("콘솔 - 상품이 장바구니에 없음 - 불꺼");
					}
				}
		});
}

// 장바구니 불켜기
function lightsOn() {
	let lights = document.createElement("div");
	lights.setAttribute("class","ellipse-light");
	lights.setAttribute("id","lightsOnID");
	document.querySelector("#lightsParent").append(lights);

	console.log("장바구니 가득 차서 불 켜짐!");
}
</script>
</html>