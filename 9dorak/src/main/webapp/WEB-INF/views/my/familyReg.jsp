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
.178_596 {
	overflow: hidden;
}

.e178_596 {
	background-color: rgba(255, 255, 255, 1);
	width: 1440px;
	height: 1788px;
	position: absolute;
}

.e178_597 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e178_598 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_599 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_600 {
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

.e178_601 {
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

.e178_602 {
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

.e178_603 {
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

.e178_604 {
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

.e178_605 {
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

.e178_606 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_607 {
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

.e178_608 {
	width: 1298px;
	height: 906px;
	position: absolute;
	left: 78px;
	top: 200px;
}

.e178_609 {
	width: 300px;
	height: 69.015625px;
	position: absolute;
	left: 307px;
	top: 0px;
}

.e178_610 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 152.17800903320312px;
	height: 18px;
	position: absolute;
	left: 125.29296875px;
	top: -9.094947017729282e-13px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e178_611 {
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

.e178_612 {
	width: 15.217805862426758px;
	height: 11.37930965423584px;
	position: absolute;
	left: 91.841796875px;
	top: 3px;
	background-image: url(${cpath}/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_613 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 77.61075592041016px;
	height: 18px;
	position: absolute;
	left: 2.05078125px;
	top: -9.094947017729282e-13px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e178_614 {
	width: 950px;
	height: 799px;
	position: absolute;
	left: 348px;
	top: 107px;
}

.e178_615 {
	width: 950px;
	height: 799px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_739 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 244px;
	top: 500px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
}

.178_739 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_740 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 144px;
	height: 18px;
	position: absolute;
	left: 28px;
	top: 15px;
	font-family: Roboto;
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e178_728 {
	border-radius: 500px;
	width: 300px;
	height: 200px;
	position: absolute;
	left: 147px;
	top: 24px;
	background-image: url(${cpath}/resources/images/my/ellipse_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.178_728 {
	border: 5px solid rgba(250.00000029802322, 249.00000035762787, 255, 1);
}

.e178_729 {
	color: rgba(0, 0, 0, 1);
	width: 185px;
	height: 58px;
	position: absolute;
	left: 236px;
	top: 280px;
	font-family: Inter;
	text-align: left;
	font-size: 48px;
	letter-spacing: 0;
}

.e178_738 {
	width: 77.26097869873047px;
	height: 50.37036895751953px;
	position: absolute;
	left: 70.26953125px;
	top: 367px;
	background-image: url(${cpath}/resources/images/my/image_6.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_737 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 134.43411254882812px;
	height: 42px;
	position: absolute;
	left: 44px;
	top: 423px;
	font-family: Inter;
	text-align: left;
	font-size: 24px;
	letter-spacing: 0.800000011920929;
	line-height: px;
}

.e178_731 {
	width: 411px;
	height: 102px;
	position: absolute;
	left: 196px;
	top: 365px;
}

.e178_732 {
	color: rgba(108.37500303983688, 108.37500303983688, 108.37500303983688, 1);
	width: 182.33592224121094px;
	height: 29px;
	position: absolute;
	left: 67.42139434814453px;
	top: 65px;
	font-family: Inter;
	text-align: left;
	font-size: 24px;
	letter-spacing: 0;
}

.e178_733 {
	color: rgba(108.37500303983688, 108.37500303983688, 108.37500303983688, 1);
	width: 87px;
	height: 29px;
	position: absolute;
	left: 324px;
	top: 65px;
	font-family: Inter;
	text-align: left;
	font-size: 24px;
	letter-spacing: 0;
}

.e178_734 {
	color: rgba(0, 0, 0, 1);
	width: 223px;
	height: 45px;
	position: absolute;
	left: 48.00144958496094px;
	top: 5px;
	font-family: Inter;
	text-align: left;
	font-size: 37px;
	letter-spacing: 0;
}

.e178_735 {
	transform: rotate(180deg);
	background-color: rgba(108.00000116229057, 108.00000116229057, 108.00000116229057, 1);
	width: 3.0904393196105957px;
	height: 100px;
	position: absolute;
	left: 3.0904393196105957px;
	top: 2px;
}

.e178_736 {
	transform: rotate(180deg);
	background-color: rgba(108.00000116229057, 108.00000116229057, 108.00000116229057, 1);
	width: 3.0904393196105957px;
	height: 100px;
	position: absolute;
	left: 276.08984375px;
	top: 0px;
}

.e178_741 {
	width: 71px;
	height: 52px;
	position: absolute;
	left: 321px;
	top: 5px;
	background-image: url(${cpath}/resources/images/my/myimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_713 {
	width: 88px;
	height: 35px;
	position: absolute;
	left: 101px;
	top: 577px;
}

.e178_726 {
	color: rgba(0, 0, 0, 1);
	width: 91px;
	height: 35px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 30px;
	letter-spacing: 0;
}

.e178_714 {
	width: 56px;
	height: 3.885780586188048e-16px;
	position: absolute;
	left: 32px;
	top: 0px;
}

.e178_717 {
	color: rgba(0, 0, 0, 1);
	width: 78px;
	height: 35px;
	position: absolute;
	left: 463px;
	top: 577px;
	font-family: Roboto;
	text-align: left;
	font-size: 30px;
	letter-spacing: 0;
}

.e178_718 {
	width: 280px;
	height: 112px;
	position: absolute;
	left: 9.5px;
	top: 646px;
}

.e178_719 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 34.77336502075195px;
	top: 64px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
}

.178_719 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_720 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 144px;
	height: 18px;
	position: absolute;
	left: 28px;
	top: 15px;
	font-family: Roboto;
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e178_721 {
	background-color: rgba(255, 255, 255, 1);
	width: 280px;
	height: 42.3828125px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-radius: 8px;
}

.178_721 {
	border: 1px solid
		rgba(126.21172472834587, 126.21172472834587, 126.21172472834587, 1);
}

.e178_722 {
	width: 280px;
	height: 112px;
	position: absolute;
	left: 353px;
	top: 646px;
}

.e178_723 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 54.42787551879883px;
	top: 64px;
	background-color: #ffffff; border-radius : 16px; border : 2px solid;
	border-color: #e7e7e7;
	border-radius: 16px;
	border: 2px solid;
}

.178_723 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_724 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 138px;
	height: 18px;
	position: absolute;
	left: 31px;
	top: 15px;
	font-family: Roboto;
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e178_725 {
	background-color: rgba(255, 255, 255, 1);
	width: 280px;
	height: 42.3828125px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
}

.178_725 {
	border: 1px solid
		rgba(126.21172472834587, 126.21172472834587, 126.21172472834587, 1);
}

.e178_629 {
	width: 250px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 146px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
	border-radius: 16px;
}

.178_629 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e178_630 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e178_631 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 83px;
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

.e178_632 {
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

.e178_633 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_634 {
	width: 198px;
	height: 102px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e178_639 {
	background-color: rgba(254.99996960163116, 174.5559909939766, 100.30001074075699, 1);
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e178_640 {
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

.e178_635 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
}

.e178_636 {
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

.e178_643 {
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1359px;
}

.e178_644 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_645 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e178_646 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_647 {
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

.e178_648 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_649 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e178_650 {
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

.e178_651 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e178_652 {
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

.e178_653 {
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

.e178_654 {
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

.e178_655 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e178_656 {
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

.e178_657 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e178_658 {
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

.e178_659 {
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

.e178_660 {
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

.e178_661 {
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

.e178_662 {
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

.e178_663 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e178_664 {
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

.e178_665 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e178_666 {
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

.e178_667 {
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

.e178_668 {
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

.e178_669 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_670 {
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
	<div class=e178_596>
		<div class=e178_597>
			<div class=e178_598>
				<div class="e178_599"></div>
			</div>
			<span class="e178_600">메뉴보기</span><span class="e178_601">구독하기</span><span
				class="e178_602">요모조모</span><span class="e178_603">도란도란</span><span
				class="e178_604">이벤트</span><span class="e178_605">로그아웃</span>
			<div class="e178_606"></div>
			<div class="e178_607"></div>
		</div>
		<div class=e178_608>
			<div class=e178_609>
				<span class="e178_610">지인 등록</span><span class="e178_611">지인
					등록</span>
				<div class="e178_612"></div>
				<span class="e178_613">마이페이지</span>
			</div>
			<div class=e178_614>
				<div class=e178_615>
					<div class=e178_739>
						<span class="e178_740">코드 복사</span>
					</div>
					<div class="e178_728"></div>
					<span class="e178_729">${mem.mem_name }</span>
					<div class="e178_738"></div>
					<span class="e178_737">LV.${mem.mem_grade }</span>
					<div class=e178_731>
						<span class="e178_732">추천인 코드</span><span class="e178_733">내정보</span><span
							class="e178_734">${mem.mem_code }</span>
						<div class="e178_735"></div>
						<div class="e178_736"></div>
						<a class="e178_741" href="${cpath}/my/myMenu.do"></a>
					</div>
					<div class=e178_713>
						<span class="e178_726">가족</span>
					</div>
					<span class="e178_717">지인</span>
					<div class=e178_718>
						<div class=e178_719>
							<span class="e178_720">가족 코드 등록</span>
						</div>
						<input class="e178_721" id= "people_code"></input>
					</div>
					<div class=e178_722>
						<div class=e178_723>
							<span class="e178_724">지인 코드 등록</span>
						</div>
						<input class="e178_725"></input>
					</div>
				</div>
			</div>
			<div class=e178_629>
				<div class=e178_630>
					<span class="e178_631">${mem.mem_id }</span><span class="e178_632">LV.${mem.mem_grade }</span>
					<div class="e178_633"></div>
				</div>
				<div class=e178_634>
					<div class=e178_639>
						<span class="e178_640">지인 등록</span>
					</div>
					<div class=e178_635>
						<span class="e178_636">지인 목록 조회</span>
					</div>
				</div>
			</div>
		</div>
		<div class=e178_643>
			<div class="e178_644"></div>
			<div class=e178_645>
				<div class=e178_646>
					<span class="e178_647">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e178_648"></div>
				</div>
			</div>
			<div class=e178_649>
				<span class="e178_650">Contact Us</span>
				<div class=e178_651>
					<span class="e178_652">1234 Country Club Ave</span><span
						class="e178_653">NC 123456, London, UK</span><span
						class="e178_654">+0123 456 7891</span>
				</div>
			</div>
			<div class=e178_655>
				<span class="e178_656">User Link</span>
				<div class=e178_657>
					<span class="e178_658">About Us</span><span class="e178_659">Contact
						Us</span><span class="e178_660">Order Delivery</span><span
						class="e178_661">Payment & Tex</span><span class="e178_662">Terms
						of Services</span>
				</div>
			</div>
			<div class=e178_663>
				<span class="e178_664">Opening Restaurant</span>
				<div class=e178_665>
					<span class="e178_666">Sat-Wet: 09:00am-10:00PM</span><span
						class="e178_667">Thursdayt: 09:00am-11:00PM</span><span
						class="e178_668">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e178_669"></div>
			<div class="e178_670"></div>
		</div>
	</div>
</body>
<script>
	$(".e178_719").on("click",function(){
		//alert(people_code);
		$.ajax({
			url : "${cpath}/register/codeCheck.do",
			data : {
				mem_code : $("#people_code").val()
			},
			success : function(data) {
				if (data === "false") {
					alert("추천인 코드를 확인하세요");
				} 

			}
		}) // 추천인 코드 존재 확인
		
	})
</script>
</html>