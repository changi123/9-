<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/orderPaymentStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(function() {
		myPayment();
	});
	function myPayment() {
		$.ajax({
			url : "paymentList.do",
			success : function(responseData) {
					$("#here").html(responseData);
				}				
			}
		});
	}
</script>
</head>

<body>
	<div class="div-wrapper">
		<div class="div">

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
									<span
										style="font-weight: bold; left: 2.5rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님
									</span>
								</c:when>
								<c:otherwise>
									<a class="header-a"
										href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
			                        <a class="header-a"
										href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="group-20">
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

			<div class="account-navigation">
				<div class="ol">
					<div class="frame">
						<div class="text-wrapper">주문/결제 내역</div>
						<div class="li">
							<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
								viewBox="0 0 10 10" fill="none">
            <path fill-rule="evenodd" clip-rule="evenodd"
									d="M2.38408 0.949976C2.33265 0.898177 2.29192 0.836754 2.26422 0.769215C2.23652 0.701676 2.2224 0.629342 2.22266 0.556345C2.22292 0.483348 2.23755 0.411116 2.26572 0.343775C2.2939 0.276433 2.33506 0.215299 2.38686 0.163865C2.43866 0.112431 2.50008 0.0717024 2.56762 0.0440059C2.63516 0.0163094 2.70749 0.00218694 2.78049 0.00244488C2.85349 0.00270282 2.92572 0.0173361 2.99306 0.0455092C3.0604 0.0736823 3.12153 0.114844 3.17297 0.166643L7.61741 4.61109C7.72089 4.71518 7.77896 4.85598 7.77896 5.00275C7.77896 5.14952 7.72089 5.29033 7.61741 5.39442L3.17297 9.83886C3.12153 9.89066 3.0604 9.93182 2.99306 9.96C2.92572 9.98817 2.85349 10.0028 2.78049 10.0031C2.70749 10.0033 2.63516 9.9892 2.56762 9.9615C2.50008 9.93381 2.43866 9.89308 2.38686 9.84164C2.33506 9.79021 2.2939 9.72908 2.26572 9.66173C2.23755 9.59439 2.22292 9.52216 2.22266 9.44916C2.2224 9.37617 2.23652 9.30383 2.26422 9.23629C2.29192 9.16875 2.33265 9.10733 2.38408 9.05553L6.43408 5.00553L2.38408 0.949976Z"
									fill="#767676" />
        </svg>
							<div class="text-wrapper-2">결제 내역</div>
						</div>
					</div>
				</div>
				<div class="text-wrapper-3">결제 내역</div>
			</div>
			<div class="group">
				<div id="here">
				</div>
				<div class="frame-6">
					<button class="frame-7">
						<div class="text-wrapper-7">최근 6개월</div>
					</button>
					<button class="frame-8">
						<div class="text-wrapper-8">2023</div>
					</button>
					<button class="frame-8">
						<div class="text-wrapper-8">2022</div>
					</button>
					<button class="frame-8">
						<div class="text-wrapper-8">2021</div>
					</button>
					<button class="frame-8">
						<div class="text-wrapper-8">2020</div>
					</button>
				</div>
			</div>
			<div class="menu-wrapper">
				<div class="menu">
					<div class="username">
						<div class="medium"></div>
						<div class="text-wrapper-16">${loginmem.mem_id }</div>
						<div class="text-wrapper-17">LV.${loginmem.mem_grade }</div>
					</div>
					<div class="links">
						<div class="privacy">
							<a class="header-a"
								href="${pageContext.request.contextPath}/my/orderDetails.do">주문
								내역</a>
						</div>
						<div class="duolingo-for-schools">
							<div class="text-wrapper-19" onclick="myPayment()">결제 내역</div>
						</div>
						<div class="duolingo-for-schools-2">
							<a class="header-a"
								href="${pageContext.request.contextPath}/my/orderCancel.do">결제
								취소 내역</a>
						</div>
					</div>
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
						<div class="footer-text-wrapper-3">Thursday: 09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>