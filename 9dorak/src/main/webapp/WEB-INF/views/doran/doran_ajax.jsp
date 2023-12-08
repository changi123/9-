<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<div class="doran-card">

	<c:forEach items="${dlist}" var="doran" varStatus="loop">
		<div class="doran-feed" id="doran-feed-${loop.index}">

			<div class="doran-topInfo">
				<div>
					<img class="doran-uploadInfo-profile"
						src="${cpath }/resources/images/doran/test.png" />
				</div>
				<div class="doran-uploadInfo">
					<div class="doran-uploadInfo-memid">${doran.mem_id }</div>
					<div class="doran-uploadInfo-title">${doran.doran_title }</div>
				</div>
			</div>
			<div class="doran-uploadContent">
				<c:choose>
					<c:when test="${not empty doran.doran_image}">
						<img class="doran-uploadContent-image"
							src="${cpath}/resources/upload/${doran.doran_image}" />
					</c:when>
					<c:otherwise>
						<!-- 이미지가 비어있을 경우 아무것도 표시하지 않음 -->
					</c:otherwise>
				</c:choose>
				<div class="doran-uploadContent-content">${doran.doran_cont}</div>
			</div>
			<div class="doran-underInfo">
				<div class="doran-review">
					<div class="doran-review-like" onclick="toggleLike(${loop.index})">
						<img class="doran-review-likeicon"
							id="like-icon-${doran.doran_no}"
							src="${cpath }/resources/images/doran/icon_doran-like-unfill.png" />
						<div class="doran-review-like2">${doran.dlike}</div>
					</div>
					<div class="doran-review-reviewCnt">
						<img class="doran-review-reviewCnticon"
							src="${cpath }/resources/images/doran/icon_doranviewcnt.png" />
						<div class="doran-review-reviewCnt2">${doran.doran_view}</div>
					</div>
					<div class="doran-review-dcomment">
						<img class="doran-review-dcommenticon"
							src="${cpath }/resources/images/doran/icon_dorancomment.png" />
						<div class="doran-review-dcomment2">${doran.dcomment}</div>
					</div>
				</div>
				<div class="doran-uploadInfo-time">${doran.doran_date }</div>
			</div>
		</div>
		<script>
    // 이미지가 없을 경우 높이를 200px로 설정하는 class 추가
    var doranImage = '${doran.doran_image}'; // Use single quotes here
    var doranFeed = document.getElementById("doran-feed-${loop.index}");

    if (doranFeed && !doranImage.trim()) {
        doranFeed.classList.add('doran-feed-no-image');
    }

    function toggleLike(index) {
        var likeIcon = document.getElementById("like-icon-" + index);
        alert('${dlist[index].doran_no}'); // Use single quotes here


        if (likeIcon) {
            // 이미지 파일 이름이 'unfill'로 끝나면 'fill'로 변경하고 그 반대도 적용
            likeIcon.src = likeIcon.src.endsWith("-unfill.png") ?
                '${cpath}/resources/images/doran/icon_doran-like-fill.png' : // Use single quotes here
                '${cpath}/resources/images/doran/icon_doran-like-unfill.png'; // Use single quotes here

            alert('${sessionScope.loginmem.mem_id}'); // Use single quotes here

            // 세션에 저장된 값 가져오기
            var memId = '${sessionScope.loginmem.mem_id}'; // Use single quotes here
            var indexNum = ${dlist[index].doran_no};
            var vv = '${dlist[index].doran_title}'; // Use single quotes here

            var doranVO = ${doran}; // Assuming dlist[loop.index] returns a doranVO object
            var doranNo = doranVO ? doranVO.doran_no : null;

            console.log(doranNo);
            alert(doranNo);

            $.ajax({
                url: '${cpath}/doran/doranLikeUpdate.do', // Use single quotes here
                data: {
                    "doran_no": doranNo,
                    "mem_id": memId
                },
                success: function (responseData) {
                    alert(responseData);
                }
            });
        }
    }
</script>




	</c:forEach>

</div>
