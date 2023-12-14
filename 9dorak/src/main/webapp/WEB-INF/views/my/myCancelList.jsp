<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<style>
.nullcancel {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}
</style>

<div class="overlap-group-wrapper">
	<c:choose>
		<c:when test="${not empty cancelList}">
			<c:forEach items="${cancelList}" var="cancel">
				<div class="overlap-group">
					<div class="coupons">
						<div class="frame">
							<div class="frame-2">
								<div class="text-wrapper">취소완료</div>
							</div>
							<div class="frame-3"></div>
						</div>
					</div>
					<div class="frame-4"></div>
					<div class="primary-button">
						<div class="cancel">취소상세</div>
					</div>
					<div class="text-wrapper-2">${cancel.ORDERDETAIL_PRICE}</div>
					<div class="text-wrapper-3">${cancel.PRO_NAME }</div>
					<div class="text-wrapper-4">${cancel.PAY_STATUS }</div>
					<img class="rectangle" src="${cpath}/${cancel.PROIMAGE_IMAGE}" />
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullcancel">취소내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>
</div>