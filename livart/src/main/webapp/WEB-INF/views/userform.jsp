<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<html lang="ko" xml:lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

<title>리바트</title>
<meta property="og:title" content="현대 리바트 통합 쇼핑몰">
<meta property="og:site_name" content="리바트몰">
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.hyundailivart.co.kr">
<meta property="og:description"
	content="현대 리바트 가구 쇼핑몰, 온라인, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름 등 종합 브랜드 통합 쇼핑몰">
<meta property="og:image"
	content="https://static.hyundailivart.co.kr/assets/images/common/livart.svg">

<link rel="shortcut icon" type="image/x-icon"
	href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/member.css?ver=20220425">

<link rel="stylesheet" type="text/css"
	href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css">
<style shopback-extension-v7-0-10="" data-styled-version="4.2.0"></style>
<link rel="stylesheet" type="text/css"
	href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


<!-- 로그인 되어있을시 회원가입 페이지 접근시 메인페이지로 이동 -->
<%
	String joinid = (String)session.getAttribute("loginUserid");
	joinid = joinid==null?"":joinid;
%>
<c:if test="${!empty sessionScope.loginUserid}">
	<script type="text/javascript">
window.location.href="/main.jsp";
</script>
</c:if>


<body class="body-responsive">
	<div class="skipnavi">
		<a href="#container">본문 바로가기</a>
	</div>

	<header class="header-responsive">
		<h1 class="header-responsive-logo">
			<a href="/index" class="memberLogo"><img
				src="https://static.hyundailivart.co.kr/assets/images/mbr/logo.png"
				alt="LIVART"></a>
		</h1>
	</header>

	<section id="container" class="section-responsive" role="main">
		<div class="container">

			<form id="joinForm" name="joinForm" action="/livart/membersave"
				onsubmit="return validate()" method="post">

				<fieldset>
					<legend>가입 필수정보 입력</legend>
					<div class="field relative-item member-input__cnts">
						<h2 class="section-responsive-title">개인정보입력</h2>
					</div>

					<div class="field input-wrap">
						<div class="field input-wrap member-input__cnts">
							<label for="name" class="label required"><em
								class="sr-only">필수입력</em>이름</label>
							<div class="control">
								<input id="mbrNm" name="username" class="input" type="text"
									maxlength="10" placeholder="이름 입력">
							</div>
						</div>
						<label for="idCheck" class="label required"><em
							class="sr-only">필수입력</em>아이디</label>
						<div class="has-button-fixed">
							<div class="control is-expanded">
								<input id="mbrId" name="user_id" class="input" type="text"
									placeholder="아이디 입력" maxlength="20" data-valid-engnum="true">
							</div>
							<div class="buttons">
								<button type="button" onclick="nameCheck()"
									class="button is-primary is-outlined is-fullwidth b-idChk">중복
									체크</button>
							</div>
						</div>
						<p class="help idMsg"></p>
					</div>


					<!-- 일반회원/간편회원 -->
					<div class="field input-wrap member-input__cnts">
						<label for="name" class="label required"><em
							class="sr-only">필수입력</em>비밀번호</label>
						<div class="control">
							<input id="password" name="pwd" class="input" type="password"
								placeholder="비밀번호 입력">
						</div>
					</div>
					<div class="field input-wrap member-input__cnts">
						<label for="name" class="label required"><em
							class="sr-only">필수입력</em>비밀번호 확인</label>
						<div class="control">
							<input id="confirm_password" name="mbrNm" class="input"
								type="password" placeholder="비밀번호 확인">
						</div>
					</div>
					<div class="field input-wrap member-input__cnts">
						<label for="phoneNumber" class="label required"><em
							class="sr-only">필수입력</em>휴대폰번호</label>
						<div class="control">
							<input id="mbrNm" name="phone" class="input" type="text"
								maxlength="11" placeholder="ex) 01012341234">
						</div>
					</div>
					<div class="field input-wrap member-input__cnts">
						<label for="eml" class="label required"><em
							class="sr-only">필수입력</em>이메일</label>
						<div class="control">
							<input id="mbrNm" name="email" class="input" type="text"
								placeholder="ex) xxx@xx.com">
						</div>
					</div>
					<div class="section-responsive-inner member-input__button">
						<div class="field">
							<button class="button is-primary is-fullwidth b-joinBtn"
								type="submit">
								회원 가입하기</a>
						</div>
						<div class="field reset-button">
							<a class="link b-cleanBtn" href="javascript:">초기화 <i
								class="ico-reset"></i></a>
						</div>
					</div>





				</fieldset>



				<div></div>
			</form>
		</div>
	</section>


	<script>
	
	
		
		// 성환
	
		// 아이디 중복 체크 및 비밀번호 확인
	
	
	
	
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) { // 만일 두 인풋 필드값이 같지 않을 경우
				// setCustomValidity의 값을 지정해 무조건 경고 표시가 나게 하고
				confirm_password.setCustomValidity("비밀번호가 다릅니다.");
			} else { // 만일 두 인풋 필드값이 같을 경우
				// 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
				// 따라서 빈값을 주어 submit 처리되게 한다
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
		
		// 비밀번호가 같은지 다른지 확인, 비밀번호 input 값이 달라지면 다시 한번 검증
		
	
		
		
		
		var checkedID =false;
		
		
		var inputID = document.getElementById("mbrId");
		
		function changeID() {
			checkedID=false;
			
		}
		
		inputID.onchange = changeID;
		
		
		function validate() {
			if(!checkedID){
				alert("아이디 중복체크를 해주세요");
			}
			
			return checkedID;
		}
		
		
		
		function nameCheck() {
			
			var tfUsername = $('input#mbrId').val();
			
			console.log(tfUsername);
			
			$.ajax({
				 type: 'get',
	               url : '/livart/check?checkid='+tfUsername
			    ,
			    
			    success :  function(result){
		               console.log(result);
		               console.log('아이디 중복 체크 실행: success')
		               if(result ==1 ){
		                  alert('아이디가 중복되었습니다.')
		               }else if(result==0){
		                  alert('사용하실 수 있는 아이디 입니다.')
		                  checkedID=true;
		               }else if(result==2){
		                  alert('아이디를 입력해주세요')
		               }else{
		                  console.log('develop: 서버오류');
		               }
		               
		            },
			    error : function(error) { // 결과 에러 콜백함수
			        console.log(error)
			    }
			})
			
		}
		
		// 아이디 중복 확인 ajax 사용.
		// 아이디 필드값이 달라지면 다시 한번 검증해야함.
		
		
		
	</script>
</body>
</html>





