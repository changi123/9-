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
.154_564 {
	overflow: hidden;
}

.e154_564 {
	background-color: rgba(255, 255, 255, 1);
	width: 1440px;
	height: 1788px;
	position: absolute;
}

.e154_565 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e154_566 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e154_567 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e154_568 {
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

.e154_569 {
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

.e154_570 {
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

.e154_571 {
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

.e154_572 {
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

.e154_573 {
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

.e154_574 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e154_575 {
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

.e154_576 {
	width: 1337px;
	height: 906px;
	position: absolute;
	left: 78px;
	top: 200px;
}

.e154_577 {
	width: 300px;
	height: 69.015625px;
	position: absolute;
	left: 307px;
	top: 0px;
}

.e154_578 {
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
	height: 18px;
	position: absolute;
	left: 193.292969px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e154_579 {
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

.e154_580 {
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
}

.e154_581 {
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

.e154_582 {
	width: 950.1522827148438px;
	height: 742px;
	position: absolute;
	left: 386.84765625px;
	top: 164px;
}

.e154_583 {
	width: 950.1522827148438px;
	height: 742px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e156_637 {
	background-color: rgba(255, 255, 255, 1);
	width: 700px;
	height: 57px;
	/* position: absolute; */
	position: relative;
	left: 0.15234375px;
	top: 0px;
	border: 1px solid gray;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
	border-top-left-radius: 16px;
	left: 0.15234375px;
}

.156_637 {
	border: 1px solid
		rgba(215.04000663757324, 215.04000663757324, 224.000001847744, 1);
}

.ei156_637_4461_77640 {
	width: 556px;
	height: 39px;
	position: absolute;
	left: 16px;
	top: 9px;
}

.ei156_637_4461_77641 {
	color: rgba(154.00000602006912, 154.00000602006912, 166.00000530481339, 1);
	width: 556px;
	height: 15px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 12px;
	letter-spacing: 0;
}

.ei156_637_4461_77642 {
	width: 556px;
	height: 20px;
	position: absolute;
	left: 0px;
	top: 19px;
}

.ei156_637_4461_77643 {
	color: rgba(60.00000022351742, 60.00000022351742, 67.00000360608101, 1);
	width: 165px;
	height: 19px;
	position: absolute;
	left: 0px;
	top: 1px;
	font-family: Inter;
	text-align: left;
	font-size: 16px;
	letter-spacing: 0;
}

.ei156_637_4461_77644 {
	background-color: rgba(216.04777336120605, 240.05307644605637, 236.77962809801102, 1);
	width: 40px;
	height: 20px;
	position: absolute;
	left: 130px;
	top: 0px;
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	border-bottom-left-radius: 4px;
	border-bottom-right-radius: 4px;
}

.ei156_637_4461_77644_1669_22429 {
	color: rgba(60.00000022351742, 60.00000022351742, 67.00000360608101, 1);
	width: 24px;
	height: 12px;
	position: absolute;
	left: 8px;
	top: 4px;
	font-family: Inter;
	text-align: left;
	font-size: 12px;
	letter-spacing: 0;
}

.ei156_637_4576_82564 {
	width: 72px;
	height: 24px;
	position: absolute;
	left: 588px;
	top: 16.5px;
}

.e156_689 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 580.15234375px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e156_688 {
	width: 41px;
	height: 39.5px;
	/* 	position: absolute; */
	position: relative;
	left: 328.15234375px;
	top: 40px;
	background-image: url(${cpath}/resources/images/my/image_33.png);
	background-repeat: no-repeat;
	background-size: cover;
	left: 328.15234375px;
	left: 328.15234375px;
}

.e154_591 {
	width: 250px;
	height: 262px;
	position: absolute;
	left: 0px;
	top: 146px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
}

.154_591 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e154_592 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e154_593 {
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

.e154_594 {
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

.e154_595 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e154_596 {
	width: 198px;
	height: 206px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e155_635 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e155_636 {
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

.e155_633 {
	background-color: rgba(254.99996960163116, 174.5559909939766, 100.30001074075699, 1);
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e155_634 {
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

.e154_601 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 104px;
}

.e154_602 {
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

.e154_603 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 156px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e154_604 {
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

.e154_605 {
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1359px;
}

.e154_606 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e154_607 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e154_608 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e154_609 {
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

.e154_610 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e154_611 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e154_612 {
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

.e154_613 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e154_614 {
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

.e154_615 {
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

.e154_616 {
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

.e154_617 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e154_618 {
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

.e154_619 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e154_620 {
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

.e154_621 {
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

.e154_622 {
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

.e154_623 {
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

.e154_624 {
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

.e154_625 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e154_626 {
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

.e154_627 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e154_628 {
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

.e154_629 {
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

.e154_630 {
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

.e154_631 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e154_632 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 320px;
	background-image: url(${cpath}/resources/images/my/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<div class=e154_564>
		<div class=e154_565>
			<div class=e154_566>
				<div class="e154_567"></div>
			</div>
			<span class="e154_568">메뉴보기</span><span class="e154_569">구독하기</span><span
				class="e154_570">요모조모</span><span class="e154_571">도란도란</span><span
				class="e154_572">이벤트</span><span class="e154_573">로그아웃</span>
			<div class="e154_574"></div>
			<div class="e154_575"></div>
		</div>
		<div class=e154_576>
			<div class=e154_577>
				<span class="e154_578">쿠폰 목록</span><span class="e154_579">쿠폰
					목록</span>
				<div class="e154_580"></div>
				<span class="e154_581">찜 목록 / 포인트 및 쿠폰</span>
			</div>
			<div class=e154_582>
				<div class=e154_583>
					<c:if test="${empty clist}">
						<p>등록된 쿠폰이 없습니다.</p>
					</c:if>
					<c:forEach var="item" items="${clist}">
						<div class="e156_637">
							<div class="ei156_637_4461_77640">
								<span class="ei156_637_4461_77641">${item.coupon_code }</span>
								<div class="ei156_637_4461_77642">
									<span class="ei156_637_4461_77643">${item.coupon_name}</span>

								</div>
							</div>
							<div class="ei156_637_4576_82564"></div>
							<span class="e156_689">${item.coupon_check}</span>
						</div>
					</c:forEach>
					<input type="text" id="coupon_code" name="coupon"
						style="display: none; width: 200px; height: 50px; border: 1px solid gray; border-radius: 30px; position: relative; left: 246px; top: 20px"
						placeholder="쿠폰번호를 입력해주세요!" />
					<div
						style="display: none; position: relative; width: 100px; left: 310px; top: 17px; border: 1px solid gray; border-radius: 30px; top: 40px"
						id="couponRegister">등록하기</div>

					<div class="e156_688"></div>
				</div>
			</div>
			<div class=e154_591>
				<div class=e154_592>
					<span class="e154_593">${loginmem.mem_id }</span><span
						class="e154_594">LV.${loginmem.mem_grade }</span>
					<div class="e154_595"></div>
				</div>
				<div class=e154_596>
					<div class=e155_635>
						<span class="e155_636">찜 목록</span>
					</div>
					<div class=e155_633>
						<span class="e155_634">쿠폰 목록</span>
					</div>
					<div class=e154_601>
						<span class="e154_602">나의 포인트</span>
					</div>
					<!-- 			<div class=e154_603>
						<span class="e154_604">적립 및 사용 목록</span>
					</div> -->
				</div>
			</div>
		</div>
		<div class=e154_605>
			<div class="e154_606"></div>
			<div class=e154_607>
				<div class=e154_608>
					<span class="e154_609">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e154_610"></div>
				</div>
			</div>
			<div class=e154_611>
				<span class="e154_612">Contact Us</span>
				<div class=e154_613>
					<span class="e154_614">1234 Country Club Ave</span><span
						class="e154_615">NC 123456, London, UK</span><span
						class="e154_616">+0123 456 7891</span>
				</div>
			</div>
			<div class=e154_617>
				<span class="e154_618">User Link</span>
				<div class=e154_619>
					<span class="e154_620">About Us</span><span class="e154_621">Contact
						Us</span><span class="e154_622">Order Delivery</span><span
						class="e154_623">Payment & Tex</span><span class="e154_624">Terms
						of Services</span>
				</div>
			</div>
			<div class=e154_625>
				<span class="e154_626">Opening Restaurant</span>
				<div class=e154_627>
					<span class="e154_628">Sat-Wet: 09:00am-10:00PM</span><span
						class="e154_629">Thursdayt: 09:00am-11:00PM</span><span
						class="e154_630">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e154_631"></div>
			<div class="e154_632"></div>
		</div>
	</div>
</body>
<script>
	$(".e156_688").on("click", function() {
		$("#coupon_code").show();
		$("#couponRegister").show();
	})
	$("#couponRegister").on(
			"click",
			function() {
				/* alert($("#coupon").val()); */

				$.ajax({
					url : "${cpath}/my/couponReg.do?coupon_code="
							+ $('#coupon_code').val(),
					type : "get",
					success : function(res) {
						if (res == "쿠폰 등록 성공") {

							$.ajax({
								url : "${cpath}/my/coupon_ajax.do",
								type : "get",
								success : function(res) {
									$("body").html(res);

								}
							}) // ajax
						} else {
							alert(res);
						}
					}
				});
			});

	$(".e155_635").on("click", function() {
		$.ajax({
			url : "${cpath}/my/pointAndCoupon.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		});
	})
	$(".e154_601").on("click", function() {
		$.ajax({
			url : "${cpath}/my/point_ajax.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		});
	})
</script>
</html>