<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/doranFeedDetailStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>Insert title here</title>

</head>
<script>
	var c = "${comments}";
	var doran = "${doran}";
	console.log(c);
	console.log(doran);
</script>
<body>

	<div class="div-wrapper">
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
									<span
										style="font-weight: bold; left: 2.5rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님
									</span>
								</c:when>
								<c:otherwise>
									<a class="header-a"
										href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
			                        <a class="header-a"
										href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="group-20">
							<div class="header-overlap-group-3">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
								<div class="ellipse-light"></div>
								<!-- <div class="text-wrapper-29">2</div> -->
							</div>
						</div>
					</div>
				</div>
			</header>

			<div class="group-2">
				<div class="feeds">
					<div class="group-3">
						<div class="overlap-group-2">
							<button class="detailfeed_deleteBtn" onclick="deleteDoran(${doran.doran_no})">
								<img class="detailfeed_deleteBtnImg"
									src="${cpath}/resources/images/doran/detailfeed_deleteBtn.png" />
							</button>
							<img class="unsplash"
								src="${cpath }/resources/upload/${doran.doran_image}" />
							<p class="p">${doran.doran_cont}</p>



							<div class="doran-underInfo">
								<div class="doran-review">
									<div class="doran-review-like">
										<img class="doran-review-likeicon"
											src="${cpath }/resources/images/doran/icon_doran-like-fill.png" />
										<div class="doran-review-like2">${doran.dlike}</div>
									</div>
									<div class="doran-review-reviewCnt">
										<img class="doran-review-reviewCnticon"
											src="${cpath}/resources/images/doran/icon_doranviewcnt.png" />
										<div class="doran-review-reviewCnt2">${doran.doran_view}</div>
									</div>
									<div class="doran-review-dcomment">
										<img class="doran-review-dcommenticon"
											src="${cpath }/resources/images/doran/icon_dorancomment.png" />
										<div class="doran-review-dcomment2">${doran.dcomment}</div>
									</div>
								</div>
								<div class="doran-uploadInfo-time">${doran.doran_date}</div>


							</div>

							<div class="group-4">
								<img class="unsplash-ykc-qhmjk"
									src="img/unsplash-y3kc-7qhmjk.svg" />
								<div class="frame-2">
									<div class="frame-3">
										<div class="text-wrapper-10">${doran.mem_id}</div>
									</div>
									<div class="group-5">
										<div class="text-wrapper-12">${doran.doran_title}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="frame-4">
					<div class="text-wrapper-13">COMMENTS ☁️</div>
					<div class="overlap-wrapper">
						<div class="overlap">
							<div class="frame-5">
								<div class="frame-wrapper">
									<div class="frame-6">

										<c:forEach items="${comments}" var="comment" varStatus="loop">
											<div class="comment">
												<div class="reply">
													<div class="comments-info">
														<div class="text-wrapper-14">${comment.mem_id}</div>
														<div class="text-wrapper-16">${comment.comment_date}</div>
													</div>
													<div class="message">
														<div class="overlap-group-3">
															<div class="text">
																<div class="text-wrapper-15">${comment.comment_cont}</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

									</div>
									<!-- frame-6 -->
								</div>
							</div>
							<div class="group-6">
								<div class="overlap-2">
									<div class="input-comments">
										<img class="unsplash-upihhsyew"
											src="img/unsplash-u3pi6hhsyew.svg" />
										<div class="textzone">
											<div class="overlap-group-4">
												<textarea class="text-wrapper-17"
													placeholder="자유롭게 작성해 보세요 ..." id="comment"></textarea>
											</div>
										</div>
										<div class="group-wrapper">
											<div class="group-7">
												<div class="overlap-group-5">
													<div class="rectangle"></div>
													<button class="text-wrapper-19" onclick="commentSubmit()">
														<span class="comment-span">댓글달기</span>
													</button>
												</div>
											</div>
										</div>
									</div>
									<img class="line" src="img/line-7.svg" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- group-2 -->

			<div class="group-8">
				<div class="group-9">
					<div class="group-10">
						<div class="div-2">

							<!-- 로그인 안되어 있으면 프로필 설정 안보이게 하기  -->
							<div class="doran-profile">
								<div class="doran-profile-photo">
									<img class="doran-profile-photoImg"
										src="${cpath }/resources/images/doran/test.png" />
								</div>
								<div class="doran-profile-info">
									<div class="doran-profile-info-memname">${sessionScope.loginmem.mem_id}</div>
									<div class="doran-profile-info-grade">
										<div class="doran-profile-info-lv">LV.</div>
										<div class="doran-profile-info-memgrade">${sessionScope.loginmem.mem_grade}</div>
									</div>
								</div>
								<div class="doran-profile-point">
									<div class="info-point">
										<div>보유한포인트</div>
										<div>${sessionScope.loginmem.mem_point}</div>
									</div>
									<div class="progress-div">
										<progress id="progress" class="overlap-group-3" id="progress"
											value="${sessionScope.loginmem.mem_point}" min="0" max="324"></progress>
									</div>
								</div>
								<button class="doran-button-frofile-setting">
									<span>프로필 설정하기</span>
								</button>
							</div>

						</div>
					</div>
				</div>

				<form
					action="${pageContext.request.contextPath}/doran/doranUpload.do"
					method="get">
					<button type="submit" class="group-18">
						<div class="group-19">
							<img class="create"
								src="${cpath }/resources/images/doran/icon_darantext.png" />
							<div class="text-wrapper-write">글 작성하기</div>
						</div>
					</button>
				</form>

			</div>
			<div class="group-11">
				<div class="group-12">
					<div class="overlap-group-6">
						<div class="card">
							<div class="frame-7">
								<div class="ellipsis-wrapper">
									<div class="ellipsis">
										<img class="ellipsis-img"
											src="${cpath }/resources/images/doran/doran_logo.png" />
									</div>
								</div>
							</div>
							<div class="tab">
								<button class="text-wrapper-20">도란도란</button>
							</div>
							<div class="tab-2">
								<button class="text-wrapper-21">내가 쓴 글</button>
							</div>
						</div>
						<div class="text-wrapper-22">도란도란</div>
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


			<script>
			var memId = "${sessionScope.loginmem.mem_id}";
			var doranProfile = document.querySelector('.doran-profile');
			var doranWriting = document.querySelector('.group-18');

			if (memId == '') {
				doranProfile.style.display = 'none';
				doranWriting.style.display = 'none';
			}
			
			function commentSubmit() {
			    var memId = "${sessionScope.loginmem.mem_id}";

			    if (!memId || memId.trim() === "") {
			        alert("로그인이 필요한 서비스입니다 !");
			        window.location.href = "${cpath}/login/loginForm.do";
			        return;
			    }

			    var commentText = document.getElementById('comment').value;
			   

			    $.ajax({
			        url: "${cpath}/doran/uploadComment.do",
			        method: "POST",
			        data: {
			            "newComment": commentText,
			            "doranNo": ${doran.doran_no}
			        },
			        success: function (responseData) {
			            if (responseData.success) {
			               
			                updateComments(responseData.comments);

			                document.getElementById('comment').value = "";
			            } else {
			                
			                alert("댓글 업데이트에 실패했습니다. 에러 메시지: " + responseData.error);
			            }
			        },
			        error: function () {
			            console.error("에러가 발생했습니다 ! 다시 시도해 주세요");
			        }
			    });
			}

			// 댓글을 업데이트하는 함수
			function updateComments(comments) {
			    // 기존 댓글을 삭제
			    $(".frame-6").empty();

			    // 새로운 댓글을 추가
			    for (var i = 0; i < comments.length; i++) {
			        var comment = comments[i];
			        var commentHtml = generateCommentHtml(comment);
			        $(".frame-6").append(commentHtml);
			    }
			}

			
			function generateCommentHtml(comment) {
			    // 날짜를 읽기 쉬운 형태로 변환
			    var commentDate = new Date(comment.comment_date).toLocaleString();
			
			    
			    var html = '<div class="comment">' +
			        '<div class="reply">' +
			        '<div class="comments-info">' +
			        '<div class="text-wrapper-14">' + comment.mem_id + '</div>' +
			        '<div class="text-wrapper-16">' + commentDate + '</div>' +
			        '</div>' +
			        '<div class="message">' +
			        '<div class="overlap-group-3">' +
			        '<div class="text">' +
			        '<div class="text-wrapper-15">' + comment.comment_cont + '</div>' +
			        '</div>' +
			        '</div>' +
			        '</div>' +
			        '</div>' +
			        '</div>';
			
			    return html;
			}
			
			// 삭제 버튼 숨기기/보이기
			$(document).ready(function() {
			    var loggedInUser = "${sessionScope.loginmem.mem_id}";
			    var Author = "${doran.mem_id}";
			    if (loggedInUser === Author) {
			        $(".detailfeed_deleteBtn").show();
			    } else {
			        $(".detailfeed_deleteBtn").hide();
			    }
			});
			
			function deleteDoran(doranNo) {
			    if (confirm("게시글을 정말 삭제하시겠습니까?")) {
			        $.ajax({
			            url: "${cpath}/doran/deleteDoran.do",
			            type: "POST",
			            data: {
			                "doranNo": doranNo
			            },
			            success: function (responseData) {
			                if (responseData.success) {
			                    
			                    alert("게시글이 삭제되었습니다.");
			                    window.location.href = "${cpath}/doran/doran.do";
			                   
			                } else {
			                    
			                    alert("게시글 삭제에 실패했습니다. 에러 메시지: " + responseData.error);
			                }
			            },
			            error: function () {
			                console.error("게시글 삭제 중 에러가 발생했습니다.");
			            }
			        });
			    }
			}


			
						
			
			</script>

		</div>
	</div>
	<!-- div-wrapper -->
</body>
</html>