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
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.169_509 {
	overflow: hidden;
}

.e169_509 {
	background-color: rgba(255, 255, 255, 1);
	width: 1440px;
	height: 1788px;
	position: absolute;
}

.e169_510 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e169_511 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_512 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_513 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 314px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_514 {
	color: rgba(0, 0, 0, 1);
	width: 93px;
	height: 22px;
	position: absolute;
	left: 421px;
	top: 17px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_515 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 541px;
	top: 17px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_516 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 648px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_517 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 755px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_518 {
	color: rgba(0, 0, 0, 1);
	width: 89px;
	height: 22px;
	position: absolute;
	left: 951px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_519 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_520 {
	box-shadow: 0px 0px 22px
		rgba(204.00000303983688, 0, 0, 0.800000011920929);
	border-radius: 500px;
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 15px;
	height: 15px;
	position: absolute;
	left: 1057px;
	top: 10px;
}

.e169_521 {
	width: 1337px;
	height: 760px;
	position: absolute;
	left: 78px;
	top: 346px;
}

.e169_527 {
	width: 950.1522827148438px;
	height: 742px;
	position: absolute;
	left: 386.84765625px;
	top: 18px;
}

.e169_528 {
	width: 950.1522827148438px;
	height: 742px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_584 {
	width: 347px;
	height: 93px;
	position: absolute;
	left: 157.15234375px;
	top: 1.1368683772161603e-13px;
}

.e169_586 {
	width: 347px;
	height: 93px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_587 {
	color: rgba(0, 0, 0, 1);
	width: 245px;
	height: 30px;
	position: absolute;
	left: 52.5px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 25px;
	letter-spacing: 0;
}

.e169_588 {
	color: rgba(255, 127.5, 0, 1);
	width: 89px;
	height: 36px;
	position: absolute;
	left: 129px;
	top: 54px;
	font-family: Inter;
	text-align: left;
	font-size: 30px;
	letter-spacing: 0;
}

.e169_639 {
	width: 327px;
	height: 310px;
	position: absolute;
	left: 10px;
	top: 114px;
	background-image: url(${cpath}/resources/images/my/image_34.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_532 {
	background-color: rgba(255, 255, 255, 1);
	width: 250px;
	height: 262px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
}

.169_532 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e169_533 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e169_534 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 145px;
	height: 26px;
	position: absolute;
	left: 52px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 21px;
	letter-spacing: 0;
	line-height: px;
}

.e169_535 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 71px;
	height: 20px;
	position: absolute;
	left: 53px;
	top: 27px;
	font-family: Inter;
	text-align: left;
	font-size: 13px;
	letter-spacing: 0.800000011920929;
	line-height: px;
}

.e169_536 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_537 {
	width: 198px;
	height: 154px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e169_538 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_539 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e169_626 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
}

.e169_627 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e169_624 {
	background-color: rgba(254.99996960163116, 174.5559909939766, 100.30001074075699, 1);
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 104px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e169_625 {
	color: rgba(255, 255, 255, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e169_546 {
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1359px;
}

.e169_547 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_548 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e169_549 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e169_550 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 393px;
	height: 89px;
	position: absolute;
	left: 0px;
	top: 138px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_551 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_552 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e169_553 {
	color: rgba(0, 0, 0, 1);
	width: 167.9425811767578px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e169_554 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e169_555 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 228.40191650390625px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_556 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 234px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_557 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 148.90908813476562px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_558 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e169_559 {
	color: rgba(0, 0, 0, 1);
	width: 156.1761016845703px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e169_560 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e169_561 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 103.710693359375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_562 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 123.23270416259766px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_563 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 162.2767333984375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_564 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 165.93710327148438px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 102px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_565 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 194px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 136px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_566 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e169_567 {
	color: rgba(0, 0, 0, 1);
	width: 295px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e169_568 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e169_569 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 264.0036315917969px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_570 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 277.8985595703125px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_571 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 239.4202880859375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e169_572 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_573 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 320px;
	background-image: url(${cpath}/resources/images/my/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e169_633 {
	width: 335.1780090332031px;
	height: 60.015625px;
	position: absolute;
	left: 385px;
	top: 200px;
}

.e169_634 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 152.17800903320312px;
	height: 18px;
	position: absolute;
	left: 193.292969px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e169_635 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 300px;
	height: 41px;
	position: absolute;
	left: 0px;
	top: 28.015625px;
	font-family: Roboto;
	text-align: left;
	font-size: 32px;
	letter-spacing: 0;
	line-height: px;
}

.e145_1496 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 300px;
	height: 41px;
	position: absolute;
	left: 0px;
	top: 28.015625px;
	font-family: Roboto;
	text-align: left;
	font-size: 32px;
	letter-spacing: 0;
	line-height: px;
}

.e169_636 {
	width: 15.217805862426758px;
	height: 23.37931px;
	position: absolute;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-image: url(/myapp/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	left: 167.841797px;
	top: -2px;
	background-image: url(/myapp/resources/images/my/image_8.png);
}

.e169_637 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 160.610756px;
	height: 18px;
	position: absolute;
	left: 2.05078125px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}
</style>
</head>
<body>
	<div class=e169_509>
		<div class=e169_510>
			<div class=e169_511>
				<div class="e169_512"></div>
			</div>
			<span class="e169_513">메뉴보기</span><span class="e169_514">구독하기</span><span
				class="e169_515">요모조모</span><span class="e169_516">도란도란</span><span
				class="e169_517">이벤트</span><span class="e169_518">로그아웃</span>
			<div class="e169_519"></div>
			<div class="e169_520"></div>
		</div>
		<div class=e169_521>
			<div class=e169_527>
				<div class=e169_528>
					<div class=e169_584>
						<div class=e169_586>
							<span class="e169_587">현재 고객님의 포인트 </span><span class="e169_588">${loginmem.mem_point }점</span>
							<div class="e169_639"></div>
						</div>
					</div>
				</div>
			</div>
			<div class=e169_532>
				<div class=e169_533>
					<span class="e169_534">${loginmem.mem_id }</span><span
						class="e169_535">LV.${loginmem.mem_grade }</span>
					<div class="e169_536"></div>
				</div>
				<div class=e169_537>
					<div class=e169_538>
						<span class="e169_539">찜 목록</span>
					</div>
					<div class=e169_626>
						<span class="e169_627">쿠폰 목록</span>
					</div>
					<div class=e169_624>
						<span class="e169_625">나의 포인트</span>
					</div>
				</div>
			</div>
		</div>
		<div class=e169_546>
			<div class="e169_547"></div>
			<div class=e169_548>
				<div class=e169_549>
					<span class="e169_550">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e169_551"></div>
				</div>
			</div>
			<div class=e169_552>
				<span class="e169_553">Contact Us</span>
				<div class=e169_554>
					<span class="e169_555">1234 Country Club Ave</span><span
						class="e169_556">NC 123456, London, UK</span><span
						class="e169_557">+0123 456 7891</span>
				</div>
			</div>
			<div class=e169_558>
				<span class="e169_559">User Link</span>
				<div class=e169_560>
					<span class="e169_561">About Us</span><span class="e169_562">Contact
						Us</span><span class="e169_563">Order Delivery</span><span
						class="e169_564">Payment & Tex</span><span class="e169_565">Terms
						of Services</span>
				</div>
			</div>
			<div class=e169_566>
				<span class="e169_567">Opening Restaurant</span>
				<div class=e169_568>
					<span class="e169_569">Sat-Wet: 09:00am-10:00PM</span><span
						class="e169_570">Thursdayt: 09:00am-11:00PM</span><span
						class="e169_571">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e169_572"></div>
			<div class="e169_573"></div>
		</div>
		<div class=e169_633>
			<span class="e169_634">나의 포인트</span><span class="e169_635">나의
				포인트</span>
			<div class="e169_636"></div>
			<span class="e169_637">찜 목록 / 포인트 및 쿠폰</span>
		</div>
	</div>
</body>
<script>
	$(".e169_538").on("click", function() {
		$.ajax({
			url : "${cpath}/my/pointAndCoupon.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		});
	})
	$(".e169_626").on("click", function() {

		$.ajax({
			url : "${cpath}/my/coupon_ajax.do",
			type : "get",
			success : function(res) {
				$("body").html(res);

			}
		}) // ajax

	})
</script>
</html>