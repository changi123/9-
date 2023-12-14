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
<link rel="stylesheet" href="${cpath}/resources/css/mainStyle.css"
	type="text/css" />
<%-- <link rel="stylesheet" href="${cpath}/resources/css/myPageStyle.css"
	type="text/css" /> --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!--아이콘-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- 부트스트랩 icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 부트스트랩 js -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!-- 폰트어썸 js -->
<script src="https://kit.fontawesome.com/1169190f22.js"
	crossorigin="anonymous"></script>

<!--css-->
<link rel="stylesheet" href="css/market/common.css">
<link rel="stylesheet" href="css/market/index.css">
<link rel="stylesheet" href="css/market/join.css">

<!-- js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="js/market/menu_hover.js"></script>
<script src="js/market/login_modal.js"></script>

<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
<div class="screen">
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
						<div class="group-20" id="lightsParent">
							<div class="header-overlap-group-3" onclick="loginBasket()">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
								<!-- <div class="text-wrapper-29">2</div> -->
							</div>
						</div>
					</div>
				</div>
			</header>


	<span class="e1433_2546">좋아요 ❤️</span>
	<span class="e1433_2547">추천 👍</span>
	<span class="e1433_2548">못먹는 음식은 NOPE 🙅🏻</span>
	<div class=e1433_2549>
		<span class="e1433_2550">대부분의 아이들이 좋아하는 메뉴들이에요</span>
	</div>
	<div class=e1433_2551>
		<span class="e1433_2552">다양한 메뉴와 추천 상품을 즐겨보세요</span>
	</div>
	<div class=e1433_2553>
		<span class="e1433_2554"> <a
			href="${pageContext.request.contextPath}/menu/menu.do"
			style="color: white; text-decoration: none;">전체 메뉴 보기</a>
		</span>
	</div>
	<div class=e1433_2555>
		<span class="e1433_2556"> <a
			href="${pageContext.request.contextPath}/menu/menu.do"
			style="color: white; text-decoration: none;"> <span>전체 메뉴 보기</span>
		</a>
		</span>
	</div>
	<div class=e1433_2557>
		<span class="e1433_2558"> <a
			href="${pageContext.request.contextPath}/menu/menu.do"
			style="color: white; text-decoration: none;"> <span>전체 메뉴 보기</span></a>
		</span>
	</div>

	<!-- 추천 상품 마무리-->
	<div class=e1433_2559>
		<div class=e1433_2560>
			<!-- <span class="e1433_2561">추천상품</span> -->
			<button class="category-button" id="enviButton" value="1"
				onClick="categoryButtonClick('envi')">🌏환경친화</button>
		</div>
		<div class=e1433_2562>
			<!-- <span class="e1433_2563">환경친화</span>-->
			<button class="category-button" id="saltButton" value="2"
				onClick="categoryButtonClick('salt')">🧂저염</button>
		</div>
		<div class=e1433_2564>
			<!-- <span class="e1433_2565">저염</span> -->
			<button class="category-button" id="sugarButton" value="3"
				onClick="categoryButtonClick('sugar')">🧂저당</button>
		</div>
		<div class=e1433_2566>
			<!-- <span class="e1433_2567">저당</span> -->
			<button class="category-button" id="cowButton" value="4"
				onClick="categoryButtonClick('cow')">🐮소</button>
		</div>
		<div class=e1433_2568>
			<!-- <span class="e1433_2569">돼지</span> -->
			<button class="category-button" id="pigButton" value="5"
				onClick="categoryButtonClick('pig')">🐷돼지</button>
		</div>
		<div class=e1433_2570>
			<!-- <span class="e1433_2571">닭</span> -->
			<button class="category-button" id="chickenButton" value="6"
				onClick="categoryButtonClick('chicken')">🐔닭</button>
		</div>
		<div class=e1433_2572>
			<!-- <span class="e1433_2573">생선</span> -->
			<button class="category-button" id="fishButton" value="7"
				onClick="categoryButtonClick('fish')">🐟생선</button>
		</div>
		<div class=e1433_2574>
			<!-- <span class="e1433_2575">샐러드</span> -->
			<button class="category-button" id="saladButton" value="8"
				onClick="categoryButtonClick('salad')">🥗샐러드</button>
		</div>
		<div class=e1433_2576>
			<!-- <span class="e1433_2577">과일</span> -->
			<button class="category-button" id="fruitsButton" value="9"
				onClick="categoryButtonClick('fruits')">🍎과일</button>
		</div>
	</div>
	<!-- 추천 상품 끝-->

	
	<div class=e1433_2606>
		<div class=e1433_2607>
			<span class="e1433_2608">못 먹는 음식은 제외하고, 세심하게 메뉴를 골라보세요</span>
		</div>
		<div class=allergy-bar>
			<div class=e1433_2610>
				<button class="allergy-button" id="cerealsButton" value="곡류"
					onClick="allerButtonClick('cereals')">🌾 곡류</button>
			</div>
			<div class=e1433_2615>
				<button class="allergy-button" id="eggsButton" value="난류"
					onClick="allerButtonClick('eggs')">🥚 난류</button>
			</div>
			<div class=e1433_2620>
				<button class="allergy-button" id="milkButton" value="우유"
					onClick="allerButtonClick('milk')">🍼 우유</button>
			</div>
			<div class=e1433_2625>
				<button class="allergy-button" id="fruitButton" value="과일"
					onClick="allerButtonClick('fruit')">🍎 과일</button>
			</div>
			<div class=e1433_2630>
				<button class="allergy-button" id="nutsButton" value="견과류"
					onClick="allerButtonClick('nuts')">🥜 견과류</button>
			</div>
			<div class=e1433_2635>
				<button class="allergy-button" id="seafoodButton" value="해산물"
					onClick="allerButtonClick('seafood')">🍤 해산물</button>
			</div>
		</div>
	</div>

	<!-- <div class="e1433_2640"></div> -->
	<!-- 	<div class=e1433_2641>
		<div class="e1433_2642"></div>
		<div class=e1433_2643>
			<div class=e1433_2644>
				<div class="ei1433_2644_1_68"></div>
			</div>
			<div class=e1433_2645>
				<div class="ei1433_2645_1_64"></div>
			</div>
			<div class=e1433_2646>
				<div class="ei1433_2646_1_64"></div>
			</div>
			<div class=e1433_2647>
				<div class="ei1433_2647_1_64"></div>
			</div>
			<div class=e1433_2648>
				<div class="ei1433_2648_1_64"></div>
			</div>
		</div>
		<div class="e1433_2649"></div>
	</div> -->
	<div class=e1433_2650>
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${cpath}/resources/images/main/main_family.png"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<a href="${cpath}/event/challenge.do"> <img
						src="${cpath}/resources/images/main/main_event.png"
						class="d-block w-100" alt="...">
					</a>
				</div>
				<div class="carousel-item">
					<img src="${cpath}/resources/images/main/main_family.png"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<a href="${cpath}/event/challenge.do"> <img
						src="${cpath}/resources/images/main/main_event.png"
						class="d-block w-100" alt="...">
					</a>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<div class=e1433_2689>
		<div class=e1433_2690>
			<div class=e1433_2691>
				<div class="e1433_2692"></div>
				<div class="e1433_2694"></div>
			</div>
			<div class=e1433_2695>
				<span class="e1433_2696">${likelist[0].pro_price}원</span> <span
					class="e1433_2697">${likelist[0].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[0].pro_no}"
					class=e1433_2698> <span class="e1433_2699"> 자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2700>
			<div class=e1433_2701>
				<div class="e1433_2702"></div>
				<div class="e1433_2704"></div>
			</div>
			<div class=e1433_2705>
				<span class="e1433_2706">${likelist[1].pro_price}원</span> <span
					class="e1433_2707">${likelist[1].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[1].pro_no}"
					class=e1433_2708> <span class="e1433_2709">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2710>
			<div class=e1433_2711>
				<div class="e1433_2712"></div>
				<div class="e1433_2714"></div>
			</div>
			<div class=e1433_2715>
				<span class="e1433_2716">${likelist[2].pro_price}원</span> <span
					class="e1433_2717">${likelist[2].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[2].pro_no}"
					class=e1433_2718> <span class="e1433_2719">자세히보기</span>
				</a>
			</div>
		</div>
	</div>
	<div class=e1433_2720>
		<div class=e1433_2721>
			<div class=e1433_2722>
				<div class="e1433_2723"></div>
				<div class="e1433_2725"></div>
			</div>
			<div class=e1433_2726>
				<span class="e1433_2727">${likelist[3].pro_price}원</span> <span
					class="e1433_2728">${likelist[3].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[3].pro_no}"
					class=e1433_2729> <span class="e1433_2730">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2731>
			<div class=e1433_2732>
				<div class="e1433_2733"></div>
				<div class="e1433_2735"></div>
			</div>
			<div class=e1433_2736>
				<span class="e1433_2737">${likelist[4].pro_price}원</span> <span
					class="e1433_2738">${likelist[4].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[4].pro_no}"
					class=e1433_2739> <span class="e1433_2740">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2741>
			<div class=e1433_2742>
				<div class="e1433_2743"></div>
				<div class="e1433_2745"></div>
			</div>
			<div class=e1433_2746>
				<span class="e1433_2747">${likelist[5].pro_price}원</span> <span
					class="e1433_2748">${likelist[5].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${likelist[5].pro_no}"
					class=e1433_2749> <span class="e1433_2750">자세히보기</span>
				</a>
			</div>
		</div>
	</div>

	<!-- category start -->
	<div class=e1433_2751>
		<div class=e1433_2752>
			<div class=e1433_2753>
				<div class="e1433_2754"></div>
				<div class="e1433_2756"></div>
			</div>
			<div class=e1433_2757>
				<span class="e1433_2758">${prolist[0].pro_price}원</span> <span
					class="e1433_2759">${prolist[0].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[0].pro_no}"
					class=e1433_2760> <span class="e1433_2761">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2762>
			<div class=e1433_2763>
				<div class="e1433_2764"></div>
				<div class="e1433_2766"></div>
			</div>
			<div class=e1433_2767>
				<span class="e1433_2768">${prolist[1].pro_price}원</span> <span
					class="e1433_2769">${prolist[1].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[1].pro_no}"
					class=e1433_2770> <span class="e1433_2771">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2772>
			<div class=e1433_2773>
				<div class="e1433_2774"></div>
				<div class="e1433_2776"></div>
			</div>
			<div class=e1433_2777>
				<span class="e1433_2778">${prolist[2].pro_price}원</span> <span
					class="e1433_2779">${prolist[2].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[2].pro_no}"
					class=e1433_2780> <span class="e1433_2781">자세히보기</span>
				</a>
			</div>
		</div>
	</div>

	<!-- menu start -->
	<div class=e1433_2782>
		<div class=e1433_2783>
			<div class=e1433_2784>
				<div class="e1433_2785"></div>
				<div class="e1433_2787"></div>
			</div>
			<div class=e1433_2788>
				<span class="e1433_2789">${prolist[0].pro_price}원</span> <span
					class="e1433_2790">${prolist[0].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[0].pro_no}"
					class=e1433_2791> <span class="e1433_2792">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2793>
			<div class=e1433_2794>
				<div class="e1433_2795"></div>
				<div class="e1433_2797"></div>
			</div>
			<div class=e1433_2798>
				<span class="e1433_2799">${prolist[1].pro_price}원</span> <span
					class="e1433_2800">${prolist[1].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[1].pro_no}"
					class=e1433_2801> <span class="e1433_2802">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2803>
			<div class=e1433_2804>
				<div class="e1433_2805"></div>
				<div class="e1433_2807"></div>
			</div>
			<div class=e1433_2808>
				<span class="e1433_2809">${prolist[2].pro_price}원</span> <span
					class="e1433_2810">${prolist[2].pro_name}</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${prolist[2].pro_no}"
					class=e1433_2811> <span class="e1433_2812">자세히보기</span>
				</a>
			</div>
		</div>
	</div>
	<!-- menu end -->

	<!-- <span class="e1433_2813">아이와 함께 즐겨요 👨‍👩‍👧‍👦 </span> -->
	<!-- <span class="e1433_2814">아이와 함께 즐기는 이벤트와 챌린지</span> -->






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
		<!-- div -->
</div>

	<script type="text/javascript">
		//카테고리
		$(".e1433_2559 button").on("click", function() {
			$.ajax({
				url : "${cpath}/searchCategoryCheck.do",
				type : 'GET',
				data : {
					//카테고리 검색
					ingre_no : $(this).val()
				},
				success : function(data) {
					$('.e1433_2751').html(data);
				},
				error : function() {
					alert("에러");
				}
			});
		})

		let selectedButton2 = null;

		function categoryButtonClick(category) {
			alert(category);
			const button = document.getElementById(category + 'Button');
			if (selectedButton2 === button) {
				button.classList.remove('selected');
				selectedButton2 = null;
			} else {
				if (selectedButton2) {
					selectedButton2.classList.remove('selected');
				}
				button.classList.add('selected');
				selectedButton2 = button;
			}
			/* allerCheck(); */
		}

		//알러지
		$(".allergy-bar button").on("click", function() {
			$.ajax({
				url : "${cpath}/searchAllergyCheck.do",
				type : 'GET',
				data : {
					//알러지타입 검색
					pro_aller : $(this).val()
				},
				success : function(data) {
					$('.e1433_2782').html(data);
				},
				error : function() {
					alert("에러");
				}
			});
		})

		let selectedButton = null;

		function allerButtonClick(allergy) {
			/* alert($(this).val()); */
			alert(allergy);
			const button = document.getElementById(allergy + 'Button');
			if (selectedButton === button) {
				button.classList.remove('selected');
				selectedButton = null;
			} else {
				if (selectedButton) {
					selectedButton.classList.remove('selected');
				}
				button.classList.add('selected');
				selectedButton = button;
			}
			/* allerCheck(); */
		}

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
								//alert("상품이 이미 장바구니에 존재합니다! - 불키자");
								lightsOn();
							} else {
								console.log("콘솔 - 상품이 장바구니에 없음 - 불꺼");
							}
						},
						error : function(xhr, status, error) {
							console.error("콘솔 - Error during basket operation. Status: " + status);
							console.error("콘솔 - Server response: " + xhr.responseText);
							//alert("An error occurred during the checkBasket operation!");
						}

					});
		}

		function lightsOn() {
			let lights = document.createElement("div");
			lights.setAttribute("class","ellipse-light");
			lights.setAttribute("id","lightsOnID");
			document.querySelector("#lightsParent").append(lights);

			console.log("장바구니 가득 차서 불 켜짐!");
		}
		
	</script>
</div>
	<!-- screen -->
</body>
</html>
