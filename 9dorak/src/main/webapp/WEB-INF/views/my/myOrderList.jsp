<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<style>
.nullorder {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}
</style>

<div class="group-5">
	<c:choose>
		<c:when test="${not empty orderList}">
			<c:forEach items="${orderList}" var="order">
				<div class="overlap-group-2">
					<div class="coupons">
						<div class="frame">
							<div class="frame-2">
								<div class="coupons-2">${order.ORDER_STATUS }</div>
							</div>
							<div class="frame-3"></div>
						</div>
					</div>
					<div class="frame-4"></div>
					<div class="primary-button">
						<div class="cancel" data-order="${order.ORDERDETAIL_NO}">주문상세</div>
					</div>
					<div class="text-wrapper-13">${order.ORDERDETAIL_PRICE}</div>
					<div class="text-wrapper-14">${order.PRO_NAME }</div>
					<div class="text-wrapper-15">${order.ORDER_DATE }</div>
					<img class="rectangle" src="${cpath}/${order.PROIMAGE_IMAGE}" />
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullorder">주문내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>

</div>