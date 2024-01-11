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
	href="${cpath}/resources/css/adminSalesStyle.css?e" type="text/css" />
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락 관리자페이지</title>
</head>
<body>
	<div class=e2099_2373>
		<div class="e2099_2463"></div>
		<div class="e2099_2467"></div>
		<div class="e2099_2483"></div>
		<span class="e2099_2468">메뉴관리</span> <span class="e2099_2469">회원관리</span>
		<span class="e2099_2470">주문관리</span> <span class="e2099_2472">구독관리</span>
		<span class="e2099_2473">게시판관리</span> <span class="e2099_2474">이벤트관리</span>
		<span class="e2099_2475">쿠폰/포인트관리</span> <span class="sales">매출관리</span>
		<div class="admin_login">
			<div class="e2099_2478"></div>
			<span class="e2099_2477">관리자</span>
			<div class="e2101_2491"></div>
			<a href="${pageContext.request.contextPath}/my/logout.do"
				class="e2101_2490">로그아웃</a>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
			<div class="top-div">
				<div class="total-info">
					<div class="total-title">Revenue</div>
					<div class="total-size">
						${orderTotal}원
						<svg xmlns="http://www.w3.org/2000/svg" width="85" height="41"
							viewBox="0 0 85 41" fill="none">
						<g filter="url(#filter0_d_2287_3144)">
						<path
								d="M5 24.3152C7.01238 25.1501 12.3839 25.0894 17.7709 18.1671C24.5046 9.51427 30.774 11.7913 38.2043 21.5827C45.6347 31.3741 50.743 36.156 58.4056 22.7213C66.0681 9.2866 66.9969 4.73248 80 2"
								stroke="#FF8901" stroke-width="3" />
						</g>
						<defs>
						<filter id="filter0_d_2287_3144" x="0.425781" y="0.531982"
								width="83.8828" height="39.9685" filterUnits="userSpaceOnUse"
								color-interpolation-filters="sRGB">
						<feFlood flood-opacity="0" result="BackgroundImageFix" />
						<feColorMatrix in="SourceAlpha" type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
								result="hardAlpha" />
						<feOffset dy="4" />
						<feGaussianBlur stdDeviation="2" />
						<feColorMatrix type="matrix"
								values="0 0 0 0 0.141176 0 0 0 0 0.278431 0 0 0 0 0.941176 0 0 0 0.16 0" />
						<feBlend mode="normal" in2="BackgroundImageFix"
								result="effect1_dropShadow_2287_3144" />
						<feBlend mode="normal" in="SourceGraphic"
								in2="effect1_dropShadow_2287_3144" result="shape" />
						</filter>
						</defs>
					</svg>
					</div>

				</div>

				<div class="total-info">
					<div class="total-title">Orders</div>
					<div class="total-size">
						${orderCnt }건
						<svg xmlns="http://www.w3.org/2000/svg" width="85" height="41"
							viewBox="0 0 85 41" fill="none">
						<g filter="url(#filter0_d_2287_3132)">
						<path
								d="M5 24.3152C7.01238 25.1501 12.3839 25.0894 17.7709 18.1671C24.5046 9.51427 30.774 11.7913 38.2043 21.5827C45.6347 31.3741 50.743 36.156 58.4056 22.7213C66.0681 9.2866 66.9969 4.73248 80 2"
								stroke="#FF392B" stroke-width="3" />
						</g>
						<defs>
						<filter id="filter0_d_2287_3132" x="0.425781" y="0.531982"
								width="83.8828" height="39.9685" filterUnits="userSpaceOnUse"
								color-interpolation-filters="sRGB">
						<feFlood flood-opacity="0" result="BackgroundImageFix" />
						<feColorMatrix in="SourceAlpha" type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
								result="hardAlpha" />
						<feOffset dy="4" />
						<feGaussianBlur stdDeviation="2" />
						<feColorMatrix type="matrix"
								values="0 0 0 0 0.129412 0 0 0 0 0.588235 0 0 0 0 0.32549 0 0 0 0.16 0" />
						<feBlend mode="normal" in2="BackgroundImageFix"
								result="effect1_dropShadow_2287_3132" />
						<feBlend mode="normal" in="SourceGraphic"
								in2="effect1_dropShadow_2287_3132" result="shape" />
						</filter>
						</defs>
					</svg>
					</div>
				</div>
				<div class="total-info">
					<div class="total-title">Member</div>
					<div class="total-size">
						${memCnt }명
						<svg xmlns="http://www.w3.org/2000/svg" width="85" height="41"
							viewBox="0 0 85 41" fill="none">
						<g filter="url(#filter0_d_2287_3132)">
						<path
								d="M5 24.3152C7.01238 25.1501 12.3839 25.0894 17.7709 18.1671C24.5046 9.51427 30.774 11.7913 38.2043 21.5827C45.6347 31.3741 50.743 36.156 58.4056 22.7213C66.0681 9.2866 66.9969 4.73248 80 2"
								stroke="#279F51" stroke-width="3" />
						</g>
						<defs>
						<filter id="filter0_d_2287_3132" x="0.425781" y="0.531982"
								width="83.8828" height="39.9685" filterUnits="userSpaceOnUse"
								color-interpolation-filters="sRGB">
						<feFlood flood-opacity="0" result="BackgroundImageFix" />
						<feColorMatrix in="SourceAlpha" type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
								result="hardAlpha" />
						<feOffset dy="4" />
						<feGaussianBlur stdDeviation="2" />
						<feColorMatrix type="matrix"
								values="0 0 0 0 0.129412 0 0 0 0 0.588235 0 0 0 0 0.32549 0 0 0 0.16 0" />
						<feBlend mode="normal" in2="BackgroundImageFix"
								result="effect1_dropShadow_2287_3132" />
						<feBlend mode="normal" in="SourceGraphic"
								in2="effect1_dropShadow_2287_3132" result="shape" />
						</filter>
						</defs>
					</svg>
					</div>
				</div>
			</div>

			<div class="weekly-wrapper">
				<div class="chart-wrapper">
					<div class="sold-text">Weekly Revenue</div>
					<canvas class="my-chart" id="myChart" width="700" height="400"></canvas>
				</div>
			</div>
			<div class="pie-and-member">
				<div class="pie-wrapper">
					<div class="sold-text" style="margin-top: -1.5rem;">가장 많이 팔린
						상품</div>
					<div style="margin-top: 1rem;">
						<canvas class="pie-chart" id="pie-chart" width="200" height="200"></canvas>
					</div>
					<div class="under-wrapper">
						<div class="under-div">
							<div class="under-left">
								<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
									viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#FFBADF" />
</svg>
								<p class="name">우삼겹 묵은지김치찌개</p>
							<!--  <p class="price">5000원</p> -->
								<p class="name">49%</p>
							</div>
							<div class="under-left">
								<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
									viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#FF766C" />
</svg>
								<p class="name">제주모자반 미역국</p>
								<!--  <p class="price">5000원</p> -->
								<p class="name">25%</p>
							</div>
						</div>

						<div class="under-div">
							<div class="under-left">
								<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
									viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#2F80ED" />
</svg>
								<p class="name">꽃게애호박 된장찌개</p>
								
								<p class="name">16%</p>
							</div>
							<div class="under-left">
								<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
									viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#6FACFF" />
</svg>
								<p class="name">특선 LA갈비구이</p>
								<!--  <p class="price">5000원</p> -->
								<p class="name">10%</p>
							</div>
						</div>
					</div>
				</div>
				<div class="pie-wrapper">
					<div class="sold-text" style="margin-top: 1rem;">가장 많이 구매한
						회원</div>
					<div class="member-wrapper">
						<div class="member">
							<div class="member-image"></div>
							<div class="member-name-and-id">
								<div class="member-name">김수인</div>
								<div class="member-id">ksween</div>
							</div>
							<div class="member-payed">90,0000</div>
						</div>
						<div class="member">
							<div class="member-image" style="background-image:url('${cpath}/resources/images/register/baby.png'); "></div>
							<div class="member-name-and-id">
								<div class="member-name">한종범</div>
								<div class="member-id">jongbumee</div>
							</div>
							<div class="member-payed">75,0000</div>
						</div>
						<div class="member">
							<div class="member-image" style="background-image:url('${cpath}/resources/images/image.png'); "></div>
							<div class="member-name-and-id">
								<div class="member-name">홍찬기</div>
								<div class="member-id">hongHong</div>
							</div>
							<div class="member-payed">50,0000</div>
						</div>
						<div class="member">
							<div class="member-image" style="background-image:url('${cpath}/resources/images/my/baseProfile.png'); "></div>
							<div class="member-name-and-id">
								<div class="member-name">한마음</div>
								<div class="member-id">oneHeart</div>
							</div>
							<div class="member-payed">29,0000</div>
						</div>
						<div class="member">
							<div class="member-image" style="background-image:url('${cpath}/resources/images/register/parent.png'); "></div>
							<div class="member-name-and-id">
								<div class="member-name">동지현</div>
								<div class="member-id">zizi</div>
							</div>
							<div class="member-payed">17,0000</div>
						</div>
					</div>
				</div>
			</div>
<div class="weekly-wrapper" style="margin-top:2rem; flex-direction: column;">

			<table id="products" border="1">
				<caption>
					매출 관리<br>
					<form action="" id="setRows">
						<p>
							<input type="hidden" name="rowPerPage" value="5">
						</p>
					</form>
					<div class="e815_1065">
						<button class="ei815_1066_6_1">검색</button>
						<input type="text" class="annoKeyword " placeholder="주문회원ID를 입력하세요">
					</div>
				</caption>
				<thead>
					<tr>
						<th style="border-radius: 10px 0px 0px 0px;">주문고유번호</th>
						<th>결제상태</th>
						<th>결제날짜</th>
						<th>결제방법</th>
						<th>결제금액</th>
						<th>입금자명</th>
						<th>입금액</th>
						<th>입금은행</th>
						<th style="border-radius: 0px 10px 0px 0px;">영수증</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="pay" items="${payList}" varStatus="rowStatus">
						<tr>
							<td>${pay.order_no}</td>
							<td>${pay.pay_status}</td>
							<td>${pay.pay_date}</td>
							<td>${pay.pay_method}</td>
							<td>${pay.pay_price}</td>
							<td>${pay.pay_depo}</td>
							<td>${pay.pay_depoprice}</td>
							<td>${pay.pay_depobank}</td>
							<td>${pay.imp_uid}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$.getScript("https://cdn.jsdelivr.net/npm/chart.js").done(function() {
			Chart.defaults.font.family = 'Wanted Sans Variable';
			const ctx = document.getElementById('myChart');
			const myChart = new Chart(ctx,{ type : 'bar', data : { labels : [ "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
				datasets : [ {
				label : "주별 매출 금액",
				data : [ 1000000, 19050000, 10006500, 3000000, 5060000, 800900, 9000000 ],
				backgroundColor : function(context) {
					var chart = context.chart;
					var ctx = context.chart.ctx;
					var gradient = ctx.createLinearGradient(0,0,0,chart.height);
					gradient.addColorStop(1,'#775FFC');
					gradient.addColorStop(0.5,'#84D9FD');
					gradient.addColorStop(0,'#E6EDF9');
					return gradient;
				},
				borderRadius : 90,
				}]
			},
			options : {
			maintainAspectRatio : false,
			scales : {
			x : { barPercentage : 0.9, categoryPercentage : 0.8,
				},
			y : { beginAtZero : true,
				},
			},
			legend : {
				display : false,
			},
			title : {
				display : true,
				text : '매출 금액 in 2024',
				font : {
					family : "Wanted Sans Variable",
					},
				},
				plugins : {
				legend : {
				labels : {
				fontFamily : "Wanted Sans Variable",
							},
							},
						},
					},
				});

				}).fail(function(jqxhr, settings, exception) {
				console.error("Failed to load Chart.js library:", exception);
				});
			});

	$(document).ready(function() {
		$.getScript("https://cdn.jsdelivr.net/npm/chart.js").done(function() {
			Chart.defaults.font.family = 'Wanted Sans Variable';
			const pie = document.getElementById('pie-chart');
			const pieChart = new Chart(pie, {
				type : 'pie',
				data : {
				labels : [ "우삼겹 묵은지김치찌개", "제주모자반 미역국", "꽃게애호박 된장찌개", "특선 LA갈비구이" ],
				datasets : [{
				label : "주문 건수",
				backgroundColor : [ "#FFBADF", "#FF766C", "#6FACFF", "#74E1FF" ],
				data : [ 250, 95, 75, 60 ]
				}]
			},
			options : { title : {
					display : true,
					text : '가장 많이 팔린 상품',
					font : { family : "Wanted Sans Variable",},
					}
			}
		});
		}).fail(function(jqxhr, settings, exception) {
			console.error("Failed to load Chart.js library:", exception);
		});
	});

	$(".ei815_1066_6_1").on("click", function() {
		$.ajax({
			url : "${cpath}/admin/searchadminOrder.do",
			type : 'GET',
			data : {
				mem_id : $(".e815_1067").val()
			},
			success : function(data) {
				$('.e2099_2486').html(data);
			}
		});
	})

	$(".e2099_2468").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMenu.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2469").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMember.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2472").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSub.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2473").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminNotice.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2474").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminEvent.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2475").on("click", function() {
		$.ajax({
			url : "${cpath}/admin/adminPoint.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".sales").on("click", function() {
		$.ajax({
			url : "${cpath}/admin/adminSales.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	$(".e2099_2470").on("click", function() {
		$.ajax({
			url : "${cpath}/admin/adminOrder.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		})
	})

	//페이징 처리 함수
	var $setRows = $('#setRows');

	$setRows.submit(function(e) {
				e.preventDefault();
				var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환
				var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
				if (!rowPerPage) {
					alert(zeroWarning);
					return;
				}
				$('#nav').remove();
				var $products = $('#products');

				$products.after('<div id="nav">');

				var $tr = $($products).find('tbody tr');
				var rowTotals = $tr.length;
				//  console.log(rowTotals);

				var pageTotal = Math.ceil(rowTotals / rowPerPage);
				var i = 0;

				for (; i < pageTotal; i++) {
					$('<a href="#"></a>').attr('rel', i).html(i + 1).appendTo(
							'#nav');
				}

				$tr.addClass('off-screen').slice(0, rowPerPage).removeClass(
						'off-screen');

				var $pagingLink = $('#nav a');
				$pagingLink.on('click', function(evt) {
					evt.preventDefault();
					var $this = $(this);
					if ($this.hasClass('active')) {
						return;
					}
					$pagingLink.removeClass('active');
					$this.addClass('active');

					var currPage = $this.attr('rel');
					var startItem = currPage * rowPerPage;
					var endItem = startItem + rowPerPage;

					$tr.css('opacity', '0.0').addClass('off-screen').slice(
							startItem, endItem).removeClass('off-screen')
							.animate({
								opacity : 1
							}, 300);
				});

				$pagingLink.filter(':first').addClass('active');
			});

	$setRows.submit();

	$(document).ready(function() {
		$('#products tbody').on('click', 'tr', function() {
			var order_no = $(this).find('td:first').text();
			$.ajax({
				type : 'POST',
				url : '${cpath}/admin/adminSales.do',
				data : {
					order_no : order_no
				},
				success : function(response) {
					$("body").html(response);
					console.log(order_no, "넘어오기 성공");
				},
				error : function(error) {
					console.error('Error:', error);
				}
			});
		});
	});
</script>
</html>