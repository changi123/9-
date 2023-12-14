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
<meta charset="utf-8" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/myDeliveryListStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
console.log("${dlist}");
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
										style="font-weight: bold; left: -1rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님 |
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
			<div class="frame">
				<button class="frame-2">
					최근 6개월
				</button>
				<button class="frame-3">
					2023
				</button>
				<button class="frame-3">
					2022
				</button>
				<button class="frame-3">
					2021
				</button>
				<button class="frame-3">
					2020
				</button>
			</div>
			<div class="frame-4">
					
			
				<div class="frame-5">
					<div class="frame-6">
						<div class="text-wrapper-3">2023. 11. 25 주문</div>
						
					</div>
					<div class="frame-7">
						<div class="frame-6">
							<p class="element">
								<span class="span">결제완료ᆞ </span> <span class="text-wrapper-4">11.
									27 (월) 도착예정</span>
							</p>
						</div>
						<div class="group">
							<div class="frame-8">
								<img class="mask-group" src="img/mask-group-2.png" />
								<div class="frame-9">
									<p class="p">배부르9 | 9일 도시락 패키지, 1세트</p>
									<div class="text-wrapper-5">59,000원</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="frame-5">
					<div class="frame-6">
						<div class="text-wrapper-3">2023. 11. 25 주문</div>
					</div>
					<div class="frame-7">
						<div class="frame-6">
							<p class="element">
								<span class="span">결제완료ᆞ </span> <span class="text-wrapper-4">11.
									27 (월) 도착예정</span>
							</p>
						</div>
						<div class="group">
							<div class="frame-8">
								<img class="mask-group" src="img/mask-group-2.png" />
								<div class="frame-9">
									<p class="p">배부르9 | 9일 도시락 패키지, 1세트</p>
									<div class="text-wrapper-5">59,000원</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="frame-5">
					<div class="frame-6">
						<div class="text-wrapper-3">2023. 11. 25 주문</div>
					</div>
					<div class="frame-7">
						<div class="frame-6">
							<p class="element">
								<span class="span">도시락 준비 중ᆞ </span> <span class="text-wrapper-4">11.
									27 (월) 도착예정</span>
							</p>
						</div>
						<div class="group">
							<div class="frame-8">
								<img class="mask-group" src="img/mask-group-2.png" />
								<div class="frame-9">
									<p class="p">배부르9 | 9일 도시락 패키지, 1세트</p>
									<div class="text-wrapper-5">59,000원</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="view">
				<div class="frame-11">
					<div class="frame-12">
						<div class="text-wrapper-7">배송 내역 정보</div>
						<div class="text-wrapper-8">김수인님</div>
					</div>
					<div class="frame-13">
						<div class="frame-14">
							<div class="text-wrapper-9">다음 배송 도착 예정일</div>
							<div class="frame-wrapper">
								<div class="element-wrapper">
									<p class="element-2">
										배부르9 | 9일 도시락 패키지 : 2023.11.24(금)<br />배터지9 | 19일 도시락 패키지:
										2023.11.26(일)
									</p>
								</div>
							</div>
						</div>
						<div class="frame-14">
							<div class="text-wrapper-10">다음 배송 수량</div>
							<div class="frame-wrapper">
								<div class="frame-15">
									<p class="element-3">
										배부르9 | 9일 도시락 패키지 : 1세트<br />배터지9 | 19일 도시락 패키지 : 1세트
									</p>
								</div>
							</div>
						</div>
						<div class="frame-14">
							<div class="text-wrapper-9">총 구독 수량</div>
							<div class="frame-wrapper">
								<div class="frame-16">
									<p class="element-4">
										배부르9 | 9일 도시락 패키지 : 4세트<br />배터지9 | 19일 도시락 패키지 : 5세트
									</p>
								</div>
							</div>
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
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<div class="menu">
				<div class="username">
					<div class="medium"></div>
					<div class="text-wrapper-19">김수인</div>
					<div class="text-wrapper-20">LV.낑깡</div>
				</div>
				<div class="links">
					<div class="list-privacy">
						<div class="text-wrapper-21">배송 내역 조회</div>
					</div>
				</div>
			</div>
			<div class="account-navigation">
				<div class="ol">
					<div class="frame-17">
						<div class="text-wrapper-22">마이페이지</div>
						<div class="li">
							<img class="svg" src="${cpath}/resources/images/my/image_8.png" />
							<div class="text-wrapper-23">배송 내역 조회</div>
						</div>
					</div>
				</div>
				<div class="text-wrapper-24">배송 내역 조회</div>
			</div>

		</div>
	</div>
</body>
</html>