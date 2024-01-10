<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/basketStyle.css?d"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

			<div class="case">
				<div class="smallMenu">
					<div class="text-wrapper-21">장바구니</div>
				</div>
				<div class="div cart-wrapper">
					<div class="group-wrapper">
						<div class="group">
							<!-- 내 장바구니! -->
							<c:if test="${empty basket}">
								<div class="empty">
									<span id="emptyComment">${sessionScope.loginmem.mem_name}님의
										장바구니가 텅 비었어요!</span>
								</div>
							</c:if>
						</div>
						<div class="frame-13">
							<div class="view-3">
								<input type="checkbox" class="eachBox" id="selectAll" onclick="toggleAllCheckboxes()">
								<div class="text-wrapper-12">선택해제</div>
								<div class="text-wrapper-13">선택삭제</div>
							</div>

						</div>
						<c:forEach items="${basket}" var="item" varStatus="status">
							<div class="cart-menus-wrapper">
								<div class="cart-menus">
									<div class="frame-14">
										<div class="frame-15">
											<!-- 날짜 -->
											<input type='hidden' value='${status.count}'
												class='dateIndex' />
											<div class="text-wrapper-14" id="dateIndex${status.count}">${item.basket_date}</div>

											<div class="group-2">
												<!-- 체크 박스 -->
												<div class="frame-19">
													<input class="eachBox" type="checkbox" id="checkbox-2-${status.count}" name="selection" onchange="basketList(${item.basket_pro_count},${item.pro_no},'${item.pro_name}',${item.pro_price},${status.count},${item.pro_sc})">
													<div class="text-wrapper-18">${item.mem_name}</div>
												</div>

												<div class="frame-16">
													<div class="frame-17">
														<img class="rectangle" src="${cpath}/resources/upload/${item.proimage_image}" />
														<div class="frame-18">
															<div class="text-wrapper-15">${item.pro_name}</div>
															<input class="text-wrapper-16" id="proPrice" type="number" value="${item.pro_price}" readOnly />
															<div class="text-wrapper-3" id="total-amount">
																총 금액 <span id="totalAmount${status.count}">${item.pro_price*item.basket_pro_count}</span>원
															</div>
														</div>
													</div>
													<div class="buttonCount">
														<input type='hidden' value='${item.pro_no}' class='pro_no${status.count}' />
														<input type='hidden' value='${item.pro_name}' class='pro_name${status.count}' />
														<input type='hidden' value='${item.pro_price}' class='pro_price${status.count}' />
														<input type='hidden' value='${status.count}' class='index-num${status.count}' />
														<input type='hidden' value='${item.mem_id}'	class='mem_id${status.count}' />
														<input type='hidden' value='${item.pro_sc}'	class='pro_sc${status.count}' />

														<div class="entypo-minus-wrapper" data-action="minus" data-count="${status.count}">
															<img class="img-3" src="/myapp/resources/images/menu/minus.png">
														</div>
														<span id="result${status.count}" class="text-wrapper-17">${item.basket_pro_count}</span>
														<div class="entypo-plus-wrapper" data-action="plus" data-count="${status.count}">
															<img class="img-3" src="/myapp/resources/images/menu/plus.png">
														</div>
													</div>
												</div>
												<div class="deleteButton">
													<img class="deleteItemModalButton"
														src="${cpath}/resources/images/wallet/delete_btn.svg" />
													<!-- 삭제 modal -->
													<div id="modal" class="modal">
														<div class="modal-content">
															<p>정말로 삭제하시겠습니까?</p>
															<button class="btn btn-cancel" onclick="closeModal()">취소</button>
															<button class="btn btn-delete"
																onclick="deleteBasket('${item.mem_id}',${item.pro_no},${status.count})">삭제</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="view-2">
						<div class="frame-2">
							<div class="frame-3">
								<div class="text-wrapper-2">주문정보</div>
								<div class="text-wrapper-3" id="total-items">
									총 <span id="total_count">${totalItems}</span> Items
								</div>
							</div>
							<form action="pay.do" method="post">
								<div class="frame-4">
									<table id="cartRow">
									</table>
								</div>

								<div class="frame-11">
									<div class="text-wrapper-10">총 결제 예상 금액
									<input class="text-wrapper-10" type="number" name="order_price"
										value="${totalAmount}">${totalAmount} 원</div>
								</div>
								
								<div class="orderButton">
									<label class="submitButton">주문하기</label> <input
										class="text-wrapper-11" type="submit" value="주문하기"
										style="display: none;">
								</div>
							</form>
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
					<div class="footer-text-wrapper-3">Thursday: 09:00am-11:00PM</div>
					<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
				</div>
			</div>
		</footer>
	</div>
</body>

<script>
// 로그인 여부 확인
function loginBasket() {
	var mem_id = "${sessionScope.loginmem.mem_id}";
	
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

function lightsOn() {
	let lights = document.createElement("div");
	lights.setAttribute("class","ellipse-light");
	lights.setAttribute("id","lightsOnID");
	document.querySelector("#lightsParent").append(lights);
	console.log("장바구니 가득 차서 불 켜짐!");
}

function logCheckboxValue(checkbox) {
	console.log("Checkbox value: ", checkbox.value);
	var displayDiv = document.createElement('div');
	displayDiv.textContent = checkbox.value;
	document.body.appendChild(displayDiv);
}

 function toggleAllCheckboxes() {
	    const selectAllCheckbox = document.getElementById('selectAll');
	    const isChecked = selectAllCheckbox.checked;

	    const checkboxes = document.querySelectorAll('.eachBox');
	    checkboxes.forEach(checkbox => {
	        checkbox.checked = isChecked;
	        const event = new Event('change', { bubbles: true });
	        checkbox.dispatchEvent(event);

	    });
	} 
 
 
 
 
 
 
 

	var minusClicked = false;

	// 장바구니 수량 증가
	$(".entypo-plus-wrapper").on("click", function() {
	    stockCheck("plus", $(this).attr("data-count"));
	});

	// 장바구니 수량 감소
	$(".entypo-minus-wrapper").on("click", function() {
	    stockCheck("minus", $(this).attr("data-count"));
	});
	
	function stockCheck(action, count) {
	    var stock = Number($(".pro_sc" + count).val());

	    if (stock <= 0) {
	        alert("재고가 없습니다!");
	    } else {
	        updateCount(action, count);
	    }
	}
	
// 장바구니 수량 변경
function updateCount(myaction, count) {
	    var price = Number($(".pro_price" + count).val());
	    var index = $(".index-num" + count).val();
	    var pro_no = $(".pro_no" + count).val();
	    var pro_name = $(".pro_name" + count).val();
	    var mem_id = $(".mem_id" + count).val();
	    var quantity = Number($("#result" + index).html());
	    var stock = Number($(".pro_sc" + count).val());
	    var changedNumb = count;
	    
	    if (myaction == "plus") {
	        if (quantity >= stock) {
	            alert("이미 최대 주문 가능 수량에 도달했습니다");
	            quantity = stock;
	        } else {
	            quantity = Math.min(stock, quantity + 1);
	        }
	    } else if (myaction == "minus") {
	        if (quantity == 1) {
	            alert("최소 주문 수량은 1개 입니다!");
	        } else {
	            quantity = Math.max(1, quantity - 1);
	        }
	    }
	    
	    $('#result' + index).html(quantity);
	    updateTotalAmount(quantity,price,index);

	    var obj = {
				mem_id: mem_id,
	            pro_no: pro_no,
	            basket_pro_count: quantity,
			};
	    
	    $.ajax({
	    	type: "POST",
			url:"${cpath}/wallet/updateBasket.do",
			data :  obj,
			success : function(response){
				if(response === "성공!"){
					console.log("콘솔 - 업데이트 성공!!");
				}
			}
		});
	    
	    // 주문 정보 업데이트 하기
	    $("#cartRow tr td:nth-child(1)").each(function(index, item){
	    	  var myName = "#checkbox-2-" + (index+1);
	    	  var checkOk = $(myName).prop("checked");
	    	  var cartProName = $(item).find("input").val();
			  if(checkOk && pro_name==cartProName){
				 var basket_pro_count = Number($(this).parent().find(":nth-child(2)").find("input").val());
				 if(myaction=="minus") {
				      $(this).parent().find(":nth-child(2)").find("input").val(basket_pro_count-1);
				 } else { 
					  $(this).parent().find(":nth-child(2)").find("input").val(basket_pro_count+1);
				 }
			  } 
		 });
		 
		// 체크에 의한 상품 수량 수정
		basketList(quantity, pro_no, pro_name, price, index);
	}
	
	// 장바구니 수량 업데이트
	function updateTotalAmount(quantity,price,index) {
    	var totalAmount = quantity*price;
    	$('#totalAmount' + index).html(totalAmount);
    }
	
	// 날짜 중복 검사 .. 똑같은 날짜는 장바구니 목록에서 숨기기
	$(document).ready(function() {
		$(".dateIndex").each(function() {
	        var index = $(this).val();
	        var currentDateHTML = $('#dateIndex' + index).text();
	        var nextDateHTML = $('#dateIndex' + (parseInt(index, 10) + 1)).text();

	        if (currentDateHTML === nextDateHTML) {
	            $('#dateIndex' + (parseInt(index, 10) + 1)).hide();
	        }
	    });
	});
	
 	// 장바구니 삭제 기능 모달 버튼
	var modal = document.getElementById('modal');
    var btns = document.querySelectorAll(".deleteItemModalButton");
    
    btns.forEach(function(btn) {
        btn.onclick = function() {
            modal.style.display = "block";
        }
    });

    function closeModal() {
        modal.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == modal) {
            closeModal();
        }
    }
    
    // 장바구니 삭제
    function deleteBasket(mem_id, pro_no, index) {
    	        $.ajax({
    	            type: "POST",
    	            url: "${cpath}/wallet/deleteBasket.do",
    	            contentType: "application/json",
    	            data: JSON.stringify({
    	                mem_id: mem_id,
    	                pro_no: pro_no
    	            }),
    	            success: function(response) {
    	                if (response.success) {
    	                    console.log("콘솔 - 삭제 성공!!");
    	                    location.reload(); 
    	                } else {
    	                	console.error("콘솔 - 장바구니 삭제 실패", response.message);
    	                	alert("장바구니 삭제 실패 ㅜㅜㅜ!!");
    	                } 
    	            }
    	        });
    	 }
    
// 주문 정보 목록
function basketList(quantity, pro_no, pro_name, price, index, pro_sc) {
    var myName = "#checkbox-2-" + index;
    var checkOk = $(myName).prop("checked");
    var totalAmount = quantity * price;
    var search = false;
	var stock = Number($(".pro_sc" + index).val());
    
	// checkBox가 선택이 되어 있으면
	if(checkOk) {
		if(stock <= 0) {
			alert("재고가 없습니다!");
			$(myName).prop("checked", false);
		} else {
			$("#cartRow tr td:nth-child(1)").each(function(index, item) {
			 var cartProName = $(item).find("input").val();
			 // checkBox가 선택이 되어있고, 목록에 이미 존재하는 상품이라면, 기존 수량 업데이트하기
			  if (pro_name==cartProName) {
				 var a =  Number($(this).parent().find(":nth-child(2)").find("input").val());
				 $(this).parent().find(":nth-child(2)").find("input").val(a+quantity);
				 search=true;
			  } 
		 });
		 // checkBox가 선택이 되어있고, 목록에 이미 존재하는 상품이 아니면 새로운 행으로 데이터 추가하기
         if (search==false) {
        	 var str = `
		    		<tr>
	        	 	    <td><input type="text" name="pro_name" value="\${pro_name}"></td>
			    		<td><input type="number" name="orderdetail_count" value="\${quantity}"></td>
			    		<td><input type="number" name="total_amount" value="\${price*quantity}"></td>
			    		<td><input type="number" type='hidden' name="pro_no" value="\${pro_no}" style="display: none;"></td>
		    		</tr>
		    	`;
		     $("#cartRow").html($("#cartRow").html() + str);
         }
         rowList();
		}
         // checkBox가 선택 해제되면
	 } else {
		 $("#cartRow tr td:nth-child(1)").each(function(index, item) {
			  var cartProName = $(item).find("input").val();
			  if(pro_name==cartProName){
				 var a =  Number($(this).parent().find(":nth-child(2)").find("input").val());
				 // 만일 상품의 수가 0 이하면 주문 정보에서 없애기
				 if(a-quantity<=0) {
					 $(this).parent().remove();
				 // 0 초과이면 빼기
				 } else {  
				      $(this).parent().find(":nth-child(2)").find("input").val(a-quantity);
				 }
			  } 
		 });
		 rowList();
	 }
}

// 주문 정보
function rowList() {
    // 주문으로 들어가는 총 상품 수
	let totalItems = 0;
    $("#cartRow tr td:nth-child(2)").each(function(index, item) {
        const listItems = parseFloat($(item).find("input").val());
        if (!isNaN(listItems)) {
        	totalItems += listItems;
        }
    });
    $("#total_count").html(totalItems);
    
    // 주문으로 들어가는 총 가격
    let totalAmount = 0;
    $("#cartRow tr td:nth-child(3").each(function(index, item) {
        const eachPrices = parseFloat($(item).find("input").val());
        if (!isNaN(eachPrices)) {
        	totalAmount += eachPrices;
        }
    });
    $(".text-wrapper-10 input[name='order_price']").val(totalAmount);
};

$(".orderButton").on("click", function() {
    submitOrder();
});

// 주문하기 버튼 submit
function submitOrder() {
    var mem_id = "${sessionScope.loginmem.mem_id}";
    const order_price = $('.text-wrapper-10').find("input").val();
    const requestData = {
            mem_id: mem_id,
            order_price: order_price
    };
    
    // order 테이블 insert
    $.ajax({
        type: "POST",
        url: "${cpath}/wallet/insertOrder.do",
        contentType: "application/json",
        data: JSON.stringify(requestData),
        success: function(response) {
            if (response.success && response.order_no) {
                console.log("콘솔 insertOrder 성공");
                insertOrderDetails(response.order_no); // 반환된 order_no 전달
            } else {
            	console.log("콘솔 insertOrder 실패:", response.message || "Unexpected error");
                console.log(response.order_no);
            }
        }
    });
    
    // form 내용 submit
    $("form").attr("action", "${cpath}/wallet/pay.do");
    $("form").submit();
}

// orderDetail 테이블 insert
function insertOrderDetails(order_no) {

    $("#cartRow tr").each(function() {
        const pro_no = $(this).find("input[name='pro_no']").val();
        const orderdetail_count = $(this).find("input[name='orderdetail_count']").val();
    
    // ajax를 상품 별로 수행 
    $.ajax({
        type: "POST",
        url: "${cpath}/wallet/insertOrderDetail.do",
        contentType: "application/json",
        data: JSON.stringify({
        	order_no: order_no,
            pro_no: pro_no,
            orderdetail_count: orderdetail_count
        }),
        success: function(response) {
            if (response.success) {
                console.log("콘솔 insertOrderDetail 성공");
            } else {
                console.log("콘솔 insertOrderDetail 실패:", response.message);
            }
        }
    });
  });
}

</script>
</html>
