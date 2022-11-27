<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<html lang="ko" xml:lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <title>리바트</title>
    <meta property="og:title" content="현대 리바트 통합 쇼핑몰">
    <meta property="og:site_name" content="리바트몰">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.hyundailivart.co.kr">
    <meta property="og:description"
        content="현대 리바트 가구 쇼핑몰, 온라인, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름 등 종합 브랜드 통합 쇼핑몰">
    <meta property="og:image" content="https://static.hyundailivart.co.kr/assets/images/common/livart.svg">

    <link rel="shortcut icon" type="image/x-icon"
        href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico">
    <link rel="stylesheet" href="https://static.hyundailivart.co.kr/assets/css/member.css?ver=20220425">
    <script src="https://static.hyundailivart.co.kr/assets/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(window).bind("pageshow", function (e) {
            if (e.originalEvent && e.originalEvent.persisted) {
                window.location.reload();
            }
        });
    </script>
    <script src="https://static.hyundailivart.co.kr/assets/js/js.cookie-2.2.1.min.js"></script>
    <script src="https://static.hyundailivart.co.kr/assets/js/common-ui.js"></script>



    <style shopback-extension-v7-0-9="" data-styled-version="4.2.0"></style>
    <link rel="stylesheet" type="text/css" href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css">
</head>

<body class="body-responsive">
    <div class="skipnavi">
        <a href="#container">본문 바로가기</a>
    </div>


    <header class="header-responsive">
        <h1 class="header-responsive-logo">
            <a href="/index" class="memberLogo"><img src="https://static.hyundailivart.co.kr/assets/images/mbr/logo.png"
                    alt="LIVART"></a>
        </h1>
    </header>

    <script type="text/javascript"
        src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
    <script type="text/javascript">
        $(window).bind("pageshow", function (e) {
            if (e.originalEvent && e.originalEvent.persisted) {
                window.location.reload();
            }
        });
    </script>
    <section id="container" class="section-responsive" role="main">
        <div class="container">
            <h2 class="sr-only">회원로그인</h2>
            <!-- 탭 -->
            <div class="tabs is-toggle is-fullwidth">
                <ul role="tablist" aria-label="Tabs" class="tabList">
                    <li class="is-active">
                        <button id="tab-01" class="tab" role="tab" aria-controls="tabpanel-01" aria-selected="true"
                            tabindex="0">
                            <span>회원 로그인</span>
                        </button>
                    </li>
                    <li class="">
                        <button id="tab-02" class="tab" role="tab" aria-controls="tabpanel-02" aria-selected="false"
                            tabindex="-1">
                            <span>비회원 주문조회</span>
                        </button>
                    </li>
                </ul>
            </div>
            <!-- //탭 -->
            <div class="section-responsive-loginform">
                <!-- 회원 로그인 -->
                <div id="tabpanel-01" class="tabpanel is-active" role="tabpanel" aria-labelledby="tab-01" tabindex="0">
                    <div class="section-responsive-inner">
                        <!-- 아이디/비밀번호 로그인 -->
                        <section id="section-responsive__show-idpw" class="showpanel mt3" aria-hidden="false">
                            <h3 class="sr-only">아이디/비밀번호 로그인</h3>
                            <form id="loginForm" name="loginForm" action="/livart/loginconfrim" method="post">
                                <fieldset>
                                    <legend>아이디/비밀번호 로그인</legend>
                                    <input type="hidden" name="esntlId" id="esntlId">
                                    <input type="hidden" name="socialTypeCd" id="socialTypeCd">
                                    <input type="hidden" name="isSaveHId" id="isSaveHId">
                                    <input type="hidden" name="type" id="type">
                                    <input type="hidden" name="returnUrl" id="returnUrl" value="/community" --="">


                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="login_id" id="username"
                                                data-valid-engnum="true" placeholder="아이디 입력" value=""
                                                title="아이디" maxlength="20">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="password" id="password" name="login_pwd"
                                                placeholder="비밀번호 입력" title="비밀번호" maxlength="30" autocomplete="off">
                                        </div>
                                        <!-- 비밀번호 잘못 입력하는 경우 횟수 안내 : 201026 -->
                                        <p class="help color-danger text-left" id="pwError"></p>
                                    </div>
                                    <div class="field text-left">
                                        <div class="text-inline-block">
                                            <div class="checkbox">
                                                <input type="checkbox" name="isSaveId" id="isSaveId" value="Y"
                                                    checked="checked">
                                                <label for="isSaveId">아이디 저장하기</label>
                                            </div>
                                        </div>

                                        <div class="text-inline-block ml1 autoLogin" style="display:none;">
                                            <div class="checkbox">
                                                <input type="checkbox" name="isAutoLogin" id="isAutoLogin">
                                                <label for="isAutoLogin">자동로그인</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="field mt2">
                                        <input type="submit" class="button is-fullwidth mbr-btn-blue b-loginBtn"
                                            value="로그인" >

                                        <a href="/livart/memberjoin"
                                            class="button is-fullwidth is-primary is-outlined mbr-btn-black mt1">회원
                                            가입</a>

                                    </div>
                                </fieldset>
                                <div>
                                    <input type="hidden" name="_csrf" value="0b2c59c7-bf19-4b1c-a723-0cdc0ad6f109">
                                </div>
                            </form>

                            <ul class="section-responsive-loginmenu">

                                <li><a href="/findIdPwdHub?findType=id">아이디 찾기</a></li>
                                <li><a href="/findIdPwdHub?findType=pw">비밀번호 찾기</a></li>

                            </ul>

                            <div class="sns-mbr mt3">
                                <ul class="sns-mbr-login clear">
                                    <li>
                                        <a class="sns-mbr__btn icon b-snsBtn" data-code="02">
                                            <i class="icon2-mbr-naver"></i>
                                            <span>네이버</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="sns-mbr__btn icon b-snsBtn" data-code="01" id="kakaoLoginHub"
                                            role="show" aria-controls="container_kakao">
                                            <i class="icon2-mbr-kakao"></i>
                                            <span>카카오</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="sns-mbr__btn icon b-snsBtn" data-code="05">
                                            <i class="icon2-mbr-apple"></i>
                                            <span>애플</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="sns-mbr__btn icon" id="button-show-otp" role="show"
                                            aria-controls="section-responsive__show-otp">
                                            <i class="icon2-mbr-otp"></i>
                                            <span>OTP</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </section>
                        <!-- //아이디/비밀번호 로그인 -->

                       

                    </div>
                </div>

                <!-- 비회원 주문조회 -->
                <div id="tabpanel-02" class="tabpanel" role="tabpanel" aria-labelledby="tab-02" tabindex="-1"
                    hidden="hidden">
                    <div class="msg-box msg-box-blue msg-box-tabwidth mt3">
                        <ul class="dot-list">
                            <li>
                                비회원으로 구매하신 경우에만 비회원 주문배송 조회가 됩니다.
                            </li>
                            <li>
                                회원이시면 로그인 후 구매하신 주문배송 정보는 로그인 후 조회 하실 수 있습니다.
                            </li>
                            <li>
                                주문번호가 기억나지 않으시는 경우 주문 시 입력하신 정보로 주문번호를 조회하실 수 있습니다.
                            </li>
                        </ul>
                    </div>
                    <div class="section-responsive-inner">
                        <form id="guestLoginForm" name="guestLoginForm" action="/livart/loginconfrim" method="post">
                            <fieldset>
                                <legend>비회원 주문조회</legend>
                                <div class="field">
                                    <div class="control">
                                        <input class="input" type="text" name="mbrNm" id="mbrNm" placeholder="이름 입력"
                                            title="이름">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="input-wrap has-addons has-addons--fixed mb1">
                                        <div class="horizontal-align is-centered items--3">
                                            <div class="control select-item">
                                                <div class="select">
                                                    <select id="hpNo1" name="hpNo1">
                                                        <option value="">선택</option>

                                                        <option value="010">010</option>

                                                        <option value="011">011</option>

                                                        <option value="016">016</option>

                                                        <option value="017">017</option>

                                                        <option value="018">018</option>

                                                        <option value="019">019</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control select-item">
                                                <input class="input" type="tel" name="hpNo2" id="hpNo2" maxlength="4"
                                                    data-valid-number="true" title="휴대폰 중간번호 입력">
                                            </div>
                                            <div class="control select-item">
                                                <input class="input" type="tel" name="hpNo3" id="hpNo3" maxlength="4"
                                                    data-valid-number="true" title="휴대폰 마지막번호 입력">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="control">
                                        <input class="input" type="text" name="ordNo" id="ordNo" placeholder="주문번호 입력"
                                            title="주문 번호" maxlength="30">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="text-right">
                                        <a href="/findNoLoginOrder" class="section-responsive-link">주문번호 찾기</a>
                                    </div>
                                </div>

                                <div class="field mt2">
                                    <input type="button" class="button is-fullwidth mbr-btn-blue b-ordBtn"
                                        value="주문 배송조회">
                                </div>
                            </fieldset>
                            <div>
                                <input type="hidden" name="_csrf" value="0b2c59c7-bf19-4b1c-a723-0cdc0ad6f109">
                            </div>
                        </form>


                    </div>
                </div>
                <!-- //비회원 주문조회 -->
            </div>
        </div>
    </section>
</body>

</html>