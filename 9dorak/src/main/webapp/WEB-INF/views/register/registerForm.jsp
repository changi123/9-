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
<link rel="stylesheet" href="${cpath}/resources/css/registerStyle.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>

</head>
<body>
	<div class=e106_187>



		<div class=e106_334>
			<span class="e106_335">아이를 위한 9일의 약속 <span
				style="color: orange;">구도락</span></span>
		</div>
		<div class=e106_348>
			<div class="e106_291"></div>
			<span class="e106_193">회원가입</span>
			<div class="e106_454"></div>
			<span class="e106_455">구도락에 가입하고 다양한 도시락을 체험해보세요!</span>
		</div>
		<form
			action="${pageContext.request.contextPath }/register/registerFinish.do"
			method="post">
			<div class=e106_393>
				<div class=e106_421>
					<div class=e106_400>
						<button class="e106_401" id="idCheck">
							<div class="e106_402">중복확인</div>
						</button>
					</div>
					<!--  -->
					<c:choose>
						<c:when test="${id == ''}">
							<input class="e106_422" type="text" id="mem_id" name="mem_id"
								value="" ${kakao==1?"readonly":"" }
								placeholder="10자리 이하의 아이디를 입력하세요" />
						</c:when>
						<c:otherwise>
							<input class="e106_422" type="text" id="mem_id" name="mem_id"
								value="${id }" ${kakao==1?"readonly":"" }
								placeholder="10자리 이하의 아이디를 입력하세요" />
						</c:otherwise>
					</c:choose>
					<!--  -->
					<span class="e106_423">아이디</span>
				</div>
				<div class=e106_418>
					<input class="e106_419" type="password" id="mem_pw" name="mem_pw"
						placeholder="비밀번호는 대소문자 및 특수문자를 입력하세요" /> <span class="e106_420">비밀번호</span>
				</div>
				<div class=e106_415>
					<input class="e106_416" type="text" id="mem_name" name="mem_name"
						placeholder="이름을 입력해주세요" /> <span class="e106_417">이름</span>
				</div>
				<div class=e106_412>
					<input class="e106_413" type="email" name="mem_email"
						value="${email }" ${kakao==1?"readonly":"" } id="mem_email"
						placeholder="hcghcg17@naver.com" /> <span class="e106_414">이메일</span>
					<!--  -->
		<!-- 			<div class=e106_397 id="emailCheck">
						<div class="e106_398"></div>
						<div class="e106_399">이메일인증</div>
						<input type="hidden" id="mail-Check-Btn" />
					</div> -->
					<!--  -->
					<c:choose>
						<c:when test="${empty id}">
							<div class="e106_397" id="emailCheck">
								<div class="e106_398"></div>
								<div class="e106_399">이메일인증</div>
								<input type="hidden" id="mail-Check-Btn" />
							</div>
							<input class="form-control mail-check-input" id="numInput"
								placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled"
								maxlength="6" style="display: none;">
							<span id="mail-check-warn" class="mail-check-warn"></span>
						</c:when>
						<c:otherwise>
							<div class="e106_397" id="emailCheck">
								<input type="hidden" id="mail-Check-Btn" style="display: none"
									disabled="true" />
							</div>
						</c:otherwise>
					</c:choose>

					<!--  -->

				</div>

				<div class=e106_409>
					<input class="e106_410" type="date" name="mem_bd" id="mem_bd" /> <span
						class="e106_411">생년월일</span>
				</div>
				<div class=e106_406>
					<input class="e106_407" type="text" id="mem_phone" name="mem_phone"
						placeholder="01096681635" /> <span class="e106_408">휴대폰</span>
				</div>
				<div class=e106_403>
					<span class="e106_386">추천인 입력 <span class="choice">(선택)</span></span>
					<div class="e106_456"></div>

					<input class="e106_457" type="text" placeholder="추천인 코드 입력"
						name="mem_code" id="mem_code" /> <span class="e106_458">고객님과
						추천인 모두에게 구도락 포인트를 드려요!</span><span class="e106_459">추천인</span>
				</div>
				<div class=e106_394>
					<button class="e106_395" id="register">
						<div class="v39_199">회원가입</div>
					</button>

				</div>
			</div>
			<input type="hidden" value="idUncheck" id="idCheckValue" />
		</form>
		<!--  -->
		<div class=e108_189>
			<a href="${cpath }/login/loginForm.do" class="e108_188">로그인하기</a><span
				class="e108_187">이미 계정이 있나요? </span>
		</div>


	</div>

</body>
<script type="text/javascript">
	$("#idCheck").on("click", function(e) {
		e.preventDefault();
		if ($("#mem_id").val().length == 0) {
			alert("아이디를 입력해주세요");
			return;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/register/idCheck.do",
			data : {
				mem_id : $("#mem_id").val()
			},
			success : function(data) {
				if (data === "false") {
					$("#idCheckValue").val("idUncheck");
					alert("사용 불가능한 아이디 입니다.")
				} else if (data === "true") {
					$("#idCheckValue").val("idcheck");
					alert("사용 가능한 아이디 입니다.")
				}
			}

		}); // ajax

	}); // idcheck

	$("#register")
			.on(
					"click",
					function(e) {

						e.preventDefault();

						if ($("#idCheckValue").val() == "idUncheck") {
							alert("아이디 중복 체크하세요 ");
							e.preventDefault();
							return;
						}

						if ($('#mail-Check-Btn').prop('disabled')) {
							// disabled 가 true 일 때의 처리
							console.log('인증완료');
						} else {
							// disabled 가 false 일 때의 처리
							alert("이메일 또는 인증번호를 확인하세요");
							e.preventDefault();
							return;
						}

						//e.preventDefault();

						if ($("#mem_id").val().length == 0) {
							alert("아이디를 입력해주세요");
							$("#mem_id").focus();
							return;
						} else if ($("#mem_name").val().length == 0) {
							alert("이름을 입력해주세요");
							$("#mem_name").focus();
							return;
						} else if ($("#mem_pw").val().length == 0) {
							alert("비밀번호를 입력해주세요");
							$("#mem_pw").focus();
							return;
						} else if ($("#mem_email").val().length == 0) {
							alert("이메일을 입력해주세요");
							$("#mem_email").focus();
							return;
						} else if ($("#mem_bd").val().length == 0) {
							alert("생년월일을 입력해주세요");
							$("#mem_bd").focus();
							return;
						} else if ($("#mem_phone").val().length == 0) {
							alert("휴대폰 번호를 입력해주세요");
							$("#mem_phone").focus();
							return;
						}

						if ($("#mem_code").val().length != 0) {

							$.ajax({
										url : "${pageContext.request.contextPath}/register/codeCheck.do",
										data : {
											mem_code : $("#mem_code").val()
										},
										success : function(data) {
											if (data === "false") {
												alert("추천인 코드를 확인하세요");
												e.preventDefault();
											} else if (data == "true") {
												$("form").submit();
											}

										}
									});
						} else {
							$("form").submit();
						}
					});

	$("#emailCheck").on("click", function(event) {

		const email = $('#mem_email').val();
		const checkInput = $('.mail-check-input') 
		$.ajax({
			type : 'get',
	
			url : '${cpath}/register/emailCheck.do?email=' + email,
			success : function(data) {

				console.log("data : " + data);
				checkInput.attr('disabled', false);
				$("#numInput").show();
				code = data;
				alert('인증번호가 전송되었습니다.')
			}
		});  //ajax

	}); // emailCheck
	$('.mail-check-input').blur(
			function() {
				const inputCode = $(this).val();
				const $resultMsg = $('#mail-check-warn');

				if (inputCode === code) {
					$resultMsg.html('인증번호가 일치합니다.');
					$resultMsg.css('color', 'green');
					$('#mail-Check-Btn').attr('disabled', true);
					$('#userEamil1').attr('readonly', true);
					$('#userEamil2').attr('readonly', true);
					$('#userEmail2').attr('onFocus',
							'this.initialSelect = this.selectedIndex');
					$('#userEmail2').attr('onChange',
							'this.selectedIndex = this.initialSelect');
				} else {
					$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
					$resultMsg.css('color', 'red');
				}
			});
</script>
</html>