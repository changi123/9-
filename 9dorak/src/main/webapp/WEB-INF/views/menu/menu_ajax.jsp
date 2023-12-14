<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/menuStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

	<c:forEach items="${slist}" var="search">
		<div class="green-beans">
			<div class="overlap-group">
				<div class="text-wrapper-2">${search.pro_name}</div>
				<!-- <div class="frame">
                <a href="#" class="view-details-btn">자세히 볼게요</a>
            </div> -->
				<a class="frame"
					href="${cpath }/menu/menuSpecificReview.do?pro_no=${search.pro_no}">
					<button class="view-details-btn">자세히 볼게요</button>
				</a>
				<div class="mask-group-wrapper">
					<img class="mask-group" src="img/mask-group-8.png" />
				</div>
				
				<div class="like-text">${search.pro_like }</div>
				<img class="vector"
					src="${cpath}/resources/images/menu/menu-heart-fill.png" />
				<div class="text-wrapper-4">${search.pro_price}원</div>
			</div>
		</div>
	</c:forEach>

</body>
<script type="text/javascript">
/* $(".filter button").on("click", function() {

    var a = $("button.selected");

    alert($(this).text());

    // $(".top-categories button.selected");
    
    // alert($(".clicked-category"));
    
    var element = $("[class*='frame-'][class*='clicked-category']");
    var childDivText = element.find("div").text();
    alert(childDivText);
    
    
}); */

</script>
</html>
