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
	href="${cpath}/resources/css/challengeStyleDetail.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	function pagination() {
		var req_num_row = 5;
		var $tr = jQuery('tbody tr');
		var total_num_row = $tr.length;
		var num_pages = 0;
		if (total_num_row % req_num_row == 0) {
			num_pages = total_num_row / req_num_row;
		}
		if (total_num_row % req_num_row >= 1) {
			num_pages = total_num_row / req_num_row;
			num_pages++;
			num_pages = Math.floor(num_pages++);
		}

		jQuery('.pagination').append("<li><a class=\"prev\">Previous</a></li>");

		for (var i = 1; i <= num_pages; i++) {
			jQuery('.pagination').append("<li><a>" + i + "</a></li>");
			jQuery('.pagination li:nth-child(2)').addClass("active");
			jQuery('.pagination a').addClass("pagination-link");
		}

		jQuery('.pagination').append("<li><a class=\"next\">Next</a></li>");

		$tr.each(function(i) {
			jQuery(this).hide();
			if (i + 1 <= req_num_row) {
				$tr.eq(i).show();
			}
		});

		jQuery('.pagination a').click('.pagination-link', function(e) {
			e.preventDefault();
			$tr.hide();
			var page = jQuery(this).text();
			var temp = page - 1;
			var start = temp * req_num_row;
			var current_link = temp;

			jQuery('.pagination li').removeClass("active");
			jQuery(this).parent().addClass("active");

			for (var i = 0; i < req_num_row; i++) {
				$tr.eq(start + i).show();
			}

			if (temp >= 1) {
				jQuery('.pagination li:first-child').removeClass("disabled");
			} else {
				jQuery('.pagination li:first-child').addClass("disabled");
			}

		});

		jQuery('.prev').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:first-child').removeClass("active");
		});

		jQuery('.next').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:last-child').removeClass("active");
		});

	}

	jQuery('document').ready(function() {
		pagination();

		jQuery('.pagination li:first-child').addClass("disabled");

	});
</script>
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
	<div class="screen"></div>
	<div id="event_menu">
		<ul>
			<li><a>챌린지 ZONE</a></li>
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
	<hr>
	<br></br>
	<div class="board">
		챌린지명 <br> <input type="text" value="${chall.challenge_name}"
			id="challenge_name"></input> <br> 챌린지내용 <br> <input
			type="text" value="${chall.challenge_cont}" id="challenge_cont"></input>
		<br> 챌린지 작성자 <br> <input type="text" value="${chall.mem_id}"
			id="mem_id"></input> <br> 챌린지 등록날짜 <br> <input type="text"
			value="${chall.challenge_date}" id="challenge_date"></input> <br>
		좋아요 <br> <input type="text" value="${likeCnt}"
			readonly="readonly" id="likeCnt"></input> <br> 첨부사진 <br> <img
			src="${cpath}/resources/upload/${chall.challenge_image}" /> <br>
		<input type="hidden" value="${chall.challenge_no}" id="challenge_no"></input>
		<br>
		<div class="button_two">
		<c:if test="${loginmem.mem_id eq chall.mem_id}">
			<button class="button1" id="update">수정</button>
			<button class="button2" id="delete">삭제</button>
		</c:if>
		<c:if test="${likeCheck == 1}">
			<button class="button3" id="like" style="background-color: yellow;">좋아요</button>
			<input type="hidden" value="1" id="check">
		</c:if>
		<c:if test="${likeCheck == 0}">
			<button class="button3" id="like">좋아요</button>
			<input type="hidden" value="0" id="check">
		</c:if>
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

</body>
<script>
	$("#update").on("click", function() {
		/*  alert("알림입니다"); */
		//alert($("#challenge_name").val())
		var challenge_name = $("#challenge_name").val();
		var challenge_cont = $("#challenge_cont").val();
		var challenge_date = $("#challenge_date").val();
		var challenge_no = $("#challenge_no").val();
		var param = {
			"challenge_name" : challenge_name,
			"challenge_cont" : challenge_cont,
			"challenge_no" : challenge_no
		}
		$.ajax({
			url : "${cpath}/event/challengeUpdate.do",
			type : "post",
			data : param,
			success : function(res) {
				alert(res);
				location.href = "${cpath}/event/challenge.do";
			}
		})
	}) // update

	$("#delete").on("click", function() {

		var challenge_no = $("#challenge_no").val();
		var param = {
			"challenge_no" : challenge_no
		}
		$.ajax({
			url : "${cpath}/event/challengeDelete.do",
			type : "post",
			data : param,
			success : function(res) {
				alert(res);
				location.href = "${cpath}/event/challenge.do";
			}
		})
	}) // delete
	
	$("#like").on("click", function() {
		/*  alert($("#challenge_no").val());*/
		alert($("#check").val())
		
 		var challenge_no = $("#challenge_no").val();
		var param = {
				"challenge_no" : challenge_no,
				"check" : $("#check").val()
			}
		$.ajax({
			url : "${cpath}/event/challengelikeUpdate.do",
			type : "post",
			data : param,
			success : function(res) {
				alert(res);
				if(res=="좋아요 성공"){
				      var likeCntInput = $("#likeCnt");
				      var currentLikeCnt = parseInt(likeCntInput.val());
				      var newLikeCnt = currentLikeCnt + 1;
				      likeCntInput.val(newLikeCnt);
				      location.reload();
				}
				else if(res=="좋아요 취소"){
				      var likeCntInput = $("#likeCnt");
				      var currentLikeCnt = parseInt(likeCntInput.val());
				      var newLikeCnt = currentLikeCnt - 1;
				      likeCntInput.val(newLikeCnt);		
				      location.reload();
				}
				/* location.href = "${cpath}/event/challenge.do"; */
			}
		})
	});
</script>
</html>