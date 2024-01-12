<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/loginStyle.css?s"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.5.0/kakao.min.js"
	integrity="sha384-kYPsUbBPlktXsY6/oNHSUDZoTX6+YI51f63jCPEIPFP09ttByAdxd2mEjKuhdqn4"
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">
	Kakao.init('${kakao_apikey}');
	console.log(Kakao.isInitialized()); // 초기화 판단여부

	//카카오 로그인 후 토큰 값 저장.
	function loginWithKakao() {
		Kakao.Auth.loginForm({
			success : function(authObj) {
				console.log(authObj); // access토큰 값
				Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

				// 쿠키에 access_token 저장
				document.cookie = 'authorize-access-token='
						+ authObj.access_token + '; Path=/;';

				getInfo();
			},
			fail : function(err) {
				console.log(err);
			}
		});
	}

	// 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
	function getInfo() {
		Kakao.API.request({
			url : '/v2/user/me',
			success : function(res) {
				console.log(res);

				// 이메일, 닉네임, id
				var account_email = res.kakao_account.email;
				var profile_nickname = res.properties.nickname;
				var id = res.id;

				console.log(account_email, profile_nickname, id);

				// 받아온 정보를 kakaoLoginPro 함수에 전달
				kakaoLoginPro(res);
			},
			fail : function(error) {
				alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
			}
		});
	}

	// Ajax를 이용하여 백엔드로 전송
	function kakaoLoginPro(response) {
		var data = {
			name : response.properties.nickname,
			email : response.kakao_account.email,
			id : response.id
		}
		$.ajax({
			type : 'POST',
			url : 'kakaoLoginPro.do',
			data : data,
			dataType : 'json',
			success : function(data) {
				console.log(data)
				if (data.JavaData == "YES") {
					alert("로그인 되었습니다.");
					location.href = '${cpath}'; // 메인페이지로
				} else if (data.JavaData == "register") {
					$("#kakaoEmail").val(response.kakao_account.email);
					$("#kakaoName").val(response.properties.nickname);
					$("#kakaoId").val(response.id);
					$("#kakaoForm").submit();
					alert("회원가입이 필요합니다.");
				} else {
					alert("로그인에 실패했습니다");
				}

			},
			error : function(xhr, status, error) {
				alert("로그인에 실패했습니다." + error);
			}
		});
	}

	function kakaoLogout() {
		//토큰이 있는지 확인
		if (!Kakao.Auth.getAccessToken()) {
			console.log('Not logged in.');
			return;
		}
		//카카오 로그아웃
		Kakao.Auth.logout(function() {
			console.log(Kakao.Auth.getAccessToken()); //null

			deleteCookie();
			alert("로그아웃 되었습니다.");
			window.location.href = '${cpath}/my/logout.do';
		});
	}
	function deleteCookie() {
		document.cookie = 'authorize-access-token=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
	}
</script>

<script>
	function showLoginError() {
		var errorMessage = "${loginErrorMessage}";

		if (errorMessage !== "") {
			alert(errorMessage);
		}
	}
	window.onload = showLoginError;
</script>

<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="login">
		<div class="overlap-wrapper">
			<div class="overlap">
				<p class="element">
					<span class="span">아이를 위한 9일의 약속<br /></span> <span
						class="text-wrapper-8">구도락</span>
				</p>
				<div class="group">
					<div class="div">
						<div class="group-wrapper">
							<div class="group-2">
								<img class="line" />
								<div class="text-wrapper">구도락에 또 오셨군요 !</div>
								<div class="text-wrapper-2">로그인</div>
							</div>
						</div>
						<form action="${pageContext.request.contextPath}/login/login.do"
							method="post">
							<div class="view">
								<div class="group-3">
									<div class="id">
										<div class="text-wrapper-3">아이디</div>
										<div class="overlap-group-wrapper">
											<input type="text" name="mem_id" class="overlap-group"
												placeholder="9dorak">
										</div>
									</div>
								</div>
								<div class="password">
									<div class="text-wrapper-4">비밀번호</div>
									<div class="overlap-group-wrapper">
										<input type="password" name="mem_pw" class="overlap-group"
											placeholder="**********">
									</div>
								</div>
							</div>
							<div class="login-button">
								<button class="div-wrapper" type="submit">
									<div class="text-wrapper-5">로그인 하기</div>
								</button>
							</div>
						</form>
						<a class="kakao" href="javascript:loginWithKakao()"><img
							src="${pageContext.request.contextPath}/resources/images/login/kakao_login_medium_narrow.png"
							style="width: 200px"></a>
					</div>
					<div class="frame">
						<p class="p">
							<span class="span">아이디가 없으신가요 ?&nbsp;&nbsp;</span> <span
								class="text-wrapper-6">&nbsp;&nbsp;</span>
							<button onclick="location.href='../register/registerType.do'"
								type="submit" class="text-wrapper-7">회원가입 하기</button>
						</p>
						<p class="div-2">
							<span class="span">기억이 나지 않나요 ?&nbsp;&nbsp;</span>
							<button
								onclick="location.href='${pageContext.request.contextPath}/login/findIdForm.do'"
								type="submit" class="text-wrapper-9">아이디 / 비밀번호 찾기</button>
						<p id="token-result"></p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<form name="kakaoForm" id="kakaoForm" method="get"
		action="../register/registerType.do">
		<input type="hidden" name="email" id="kakaoEmail" /> <input
			type="hidden" name="name" id="kakaoName" /> <input type="hidden"
			name="id" id="kakaoId" />
	</form>
</body>
</html>
