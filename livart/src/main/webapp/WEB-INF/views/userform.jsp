<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<html lang="ko" xml:lang="ko"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

    <title>리바트</title>
    <meta property="og:title" content="현대 리바트 통합 쇼핑몰">
    <meta property="og:site_name" content="리바트몰">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.hyundailivart.co.kr">
    <meta property="og:description" content="현대 리바트 가구 쇼핑몰, 온라인, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름 등 종합 브랜드 통합 쇼핑몰">
    <meta property="og:image" content="https://static.hyundailivart.co.kr/assets/images/common/livart.svg">

    <link rel="shortcut icon" type="image/x-icon" href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico">
    <link rel="stylesheet" href="https://static.hyundailivart.co.kr/assets/css/member.css?ver=20220425">

<link rel="stylesheet" type="text/css" href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css"><style shopback-extension-v7-0-10="" data-styled-version="4.2.0"></style><link rel="stylesheet" type="text/css" href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css"></head>

<body class="body-responsive">
    <div class="skipnavi">
        <a href="#container">본문 바로가기</a>
    </div>

    <header class="header-responsive">
        <h1 class="header-responsive-logo">
            <a href="/index" class="memberLogo"><img src="https://static.hyundailivart.co.kr/assets/images/mbr/logo.png" alt="LIVART"></a>
        </h1>
    </header>

    <section id="container" class="section-responsive" role="main">
        <div class="container">

            <form id="joinForm" name="joinForm" action="/livart/membersave" method="post">

                <fieldset>
                    <legend>가입 필수정보 입력</legend>
                    <div class="field relative-item member-input__cnts">
                        <h2 class="section-responsive-title">개인정보입력</h2>
                    </div>

                    <div class="field input-wrap">
                    <div class="field input-wrap member-input__cnts">
                        <label for="name" class="label required"><em class="sr-only">필수입력</em>이름</label>
                        <div class="control">
                            <input id="mbrNm" name="name" class="input" type="text" maxlength="10" placeholder="이름 입력">
                        </div>
                    </div>
                        <label for="idCheck" class="label required"><em class="sr-only">필수입력</em>아이디</label>
                        <div class="has-button-fixed">
                            <div class="control is-expanded">
                                <input id="mbrId" name="user_id" class="input" type="text" placeholder="아이디 입력" maxlength="20" data-valid-engnum="true">
                            </div>
                            <div class="buttons">
                                <button type="button" class="button is-primary is-outlined is-fullwidth b-idChk">중복
                                    체크</button>
                            </div>
                        </div>
                        <p class="help idMsg"></p>
                    </div>


                    <!-- 일반회원/간편회원 -->
                    <div class="field input-wrap member-input__cnts">
                        <label for="name" class="label required"><em class="sr-only">필수입력</em>비밀번호</label>
                        <div class="control">
                            <input id="mbrNm" name="pwd" class="input" type="text" maxlength="10" placeholder="비밀번호 입력">
                        </div>
                    </div>
                    <div class="field input-wrap member-input__cnts">
                        <label for="name" class="label required"><em class="sr-only">필수입력</em>비밀번호 확인</label>
                        <div class="control">
                            <input id="mbrNm" name="mbrNm" class="input" type="text" maxlength="10" placeholder="비밀번호 확인">
                        </div>
                    </div>
                    <div class="field input-wrap member-input__cnts">
                        <label for="phoneNumber" class="label required"><em class="sr-only">필수입력</em>휴대폰번호</label>
                        <div class="control">
                            <input id="mbrNm" name="phone" class="input" type="text" maxlength="11" placeholder="ex) 01012341234">
                        </div>
                    </div>
                    <div class="field input-wrap member-input__cnts">
                        <label for="eml" class="label required"><em class="sr-only">필수입력</em>이메일</label>
                        <div class="control">
                            <input id="mbrNm" name="email" class="input" type="text" placeholder="ex) xxx@xx.com">
                        </div>
                    </div>
                    <div class="section-responsive-inner member-input__button">
                        <div class="field">
                            <button class="button is-primary is-fullwidth b-joinBtn" type="submit">회원 가입하기</a>
                        </div>
                        <div class="field reset-button">
                            <a class="link b-cleanBtn" href="javascript:">초기화 <i class="ico-reset"></i></a>
                        </div>
                    </div>
                    

                    
                    
                    
                </fieldset>

                

                <div>

                </div>
            </form>
        </div>
    </section>
    </body>
    </html>
    




