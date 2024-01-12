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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/myMenuStyle.css"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="width: 100%">

	<div class="e79_160">
	
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
									<a class="header-a"
										href="${pageContext.request.contextPath}/my/myPage.do"
										style="font-weight: bold; left: -1rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_name}" /> 님 |
									</a>
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

		<!-- ajax 처리할 부분 -->
		<div class=e122_194>
		
			<div class=e81_183>
				<span class="e79_330">내 정보 수정</span>
				<span class="e79_405">내 정보 수정</span>
				<div class="e79_385"></div>
				<span class="e79_325">내 정보</span>
			</div><!-- e81_183 -->
			
			<div class=e79_253>
				<div class=e79_254>
					<span class="e79_256">${mem.mem_name }</span><span class="e79_257">LV.${mem.mem_grade }</span>
				<!-- 	<div class="e79_424"></div> -->
							<c:choose>
				<c:when
					test="${sessionScope.loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
					<div class="e79_424"
						style="background-image: url(${cpath}/${sessionScope.loginmem.mem_image});"></div>
				</c:when>
				<c:otherwise>
					<div class="e79_424"
						style="background-image: url(${cpath}/resources/upload/${sessionScope.loginmem.mem_image}); "></div>
				</c:otherwise>
			</c:choose>
				</div>
				<div class=e79_258>
					<div class=e79_259>
						<span class="e79_260">내 정보 수정</span>
					</div>
					<!-- <div class=e79_261>
						<span class="e79_262">환불 계좌 관리</span>
					</div> -->
					<div class=e79_263>
						<span class="e79_264">배송지 관리</span>
					</div>
					<!-- <div class=e79_265>
						<span class="e79_266">알림 수신 관리</span>
					</div> -->
				</div>
			</div><!-- e79_253 -->
		
				<div class=e79_162>
					<form action="#" enctype="multipart/form-data">
						<c:choose>
							<c:when
								test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
								<div class="e79_388" id="uploadedImage"
									style="background-image: url(${cpath}/${mem.mem_image});"></div>
							</c:when>
							<c:otherwise>
								<div class="e79_388" id="uploadedImage"
									style="background-image: url(${cpath}/resources/upload/${mem.mem_image});"></div>
							</c:otherwise>
						</c:choose>

						<div class="e79_425">
							<label for="fileInput" class="e79_426">Update</label> <input
								type="file" id="fileInput" name="singleFile"
								style="display: none" onchange="uploadFile()" />
						</div>
						<div class="e79_427">
							<div class="e82_185">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
									<path d="M1.46582 4.00639H15.0658M5.39862 3.99999V3.63359C5.39862 2.88207 5.69716 2.16133 6.22856 1.62993C6.75997 1.09853 7.4807 0.799988 8.23222 0.799988C8.98374 0.799988 9.70448 1.09853 10.2359 1.62993C10.7673 2.16133 11.0658 2.88207 11.0658 3.63359V3.99999M6.64822 7.19999V12M9.88982 7.19999V12M11.8658 15.2H4.66582C4.24147 15.2 3.83451 15.0314 3.53445 14.7314C3.23439 14.4313 3.06582 14.0243 3.06582 13.6V3.99999H13.4658V13.6C13.4658 14.0243 13.2972 14.4313 12.9972 14.7314C12.6971 15.0314 12.2902 15.2 11.8658 15.2Z" stroke="#1A1A1A" stroke-width="1.28" stroke-linecap="round" stroke-linejoin="round"/>
								</svg>
							</div>
							<span class="e79_430">Remove</span>
						</div>
					</form>

					<form action="#">
						<div class=e79_410>
							<span class="e79_244">아이디</span>
							<!--  	<div class="e79_409"></div> -->
							<input id="mem_id" type="text" class="e79_409"
								value="${mem.mem_id }" readonly="readonly"></input>

						</div>
						<div class=e79_411>
							<span class="e79_412">비밀번호</span>
							<!-- 	<div class="e79_413"></div> -->
							<input id="mem_pw" type="password" class="e79_413"
								value="${mem.mem_pw }"></input>
						</div>
						<div class=e79_415>
							<span class="e79_416">이름</span>
							<!-- <div class="e79_417"></div> -->
							<input id="mem_name" type="text" class="e79_417"
								value="${mem.mem_name }"></input>
						</div>
						<div class=e79_418>
							<span class="e79_419">생년월일</span>
							<!-- 				<div class="e79_420"></div> -->
							<input id="mem_bd" type="date" class="e79_420"
								value="${mem.mem_bd }"></input>
						</div>
						<div class=e79_421>
							<span class="e79_422">추천인 코드</span>
							<!-- 			<div class="e79_423"></div> -->
							<input class="e79_423" value="${mem.mem_code }"
								readonly="readonly"></input>
						</div>
						<div class=e79_168>
							<span class="e79_169">Save Changes</span>
						</div>
						<!-- <div class=e79_166>
							<span class="e79_167">Cancel</span>
						</div> -->
						<div class=e79_164>
							<span class="e79_165">회원탈퇴</span>
						</div>
					</form>
				</div><!-- e79_162 -->
				
		</div><!-- e122_194 -->
	</div><!-- e79_160 -->
	
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
			

</body>
<script type="text/javascript">
	$(".e79_168").on("click", function() {
		var param = {
			mem_id : $("#mem_id").val(),
			mem_pw : $("#mem_pw").val(),
			mem_name : $("#mem_name").val(),
			mem_bd : $("#mem_bd").val()
		}

		$.ajax({

			url : "${cpath}/my/updateMember.do",
			data : param,
			success : function(res) {
			
				location.reload();
			}

		})
	})

	$(".e79_166").on("click", function() {
		$("form")[0].reset();
	})

	$(".e79_164").on(
			"click",
			function() {
				if (confirm("정말 탈퇴하시겠습니까?")) {
					location.href = "${cpath}/my/deleteMember.do?mem_id="
							+ $("#mem_id").val();
				}
			});

	$(".e79_263").on("click", function() {
		$.ajax({

			url : "${cpath}/my/myDelivery.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	function uploadFile() {
		var input = document.getElementById('fileInput');
		var file = input.files[0];

		if (file) {
			var formData = new FormData();
			formData.append('singleFile', file);

			$.ajax({
				url : "${cpath}/my/profileUplode.do",
				type : "post",
				data : formData,
				enctype : "multipart/form-data",
				processData : false,
				contentType : false,
				success : function(res) {
					window.location.reload();
				}
			})
		}
	}
	
	
	$(".e79_427").on("click",function(){
		$.ajax({
			url : "${cpath}/my/profileDelete.do",
			type : "post",
			success : function(res) {
				/* alert("성공") */
				window.location.reload();
			}
		})
	})
	
	// 장바구니 
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
