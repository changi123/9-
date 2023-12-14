<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<style>
.nullpayment {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}
</style>


<div class="overlap-group-wrapper">
	<c:choose>
		<c:when test="${not empty paymentList}">
			<c:forEach items="${paymentList}" var="payment">
				<div class="overlap-group">
					<div class="frame-2"></div>
					<div class="primary-button">
						<div class="cancel">결제상세</div>
					</div>
					<div class="cancel-wrapper">
						<div class="cancel">결제취소</div>
					</div>
					<div class="text-wrapper-4">${payment.ORDERDETAIL_PRICE}</div>
					<div class="text-wrapper-5">${payment.PRO_NAME }</div>
					<div class="text-wrapper-6">${payment.PAY_DATE }</div>
					<img class="rectangle" src="${cpath}/${payment.PROIMAGE_IMAGE}" />
					<div class="coupons">
						<div class="frame-3">
							<div class="frame-4">
								<div class="coupons-2">${payment.PAY_STATUS }</div>
							</div>
							<div class="frame-5"></div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullpayment">결제내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>
</div>