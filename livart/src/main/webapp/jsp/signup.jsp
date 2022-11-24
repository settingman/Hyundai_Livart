<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
    
    
<!DOCTYPE html>
<html lang="ko" xml:lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />

    <title>리바트</title>
    <meta property="og:title" content="현대 리바트 통합 쇼핑몰" />
    <meta property="og:site_name" content="리바트몰" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://www.hyundailivart.co.kr" />
    <meta property="og:description"
        content="현대 리바트 가구 쇼핑몰, 온라인, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름 등 종합 브랜드 통합 쇼핑몰" />
    <meta property="og:image" content="https://static.hyundailivart.co.kr/assets/images/common/livart.svg" />

    <link rel="shortcut icon" type="image/x-icon"
        href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico" />
    <link rel="stylesheet" href="https://static.hyundailivart.co.kr/assets/css/member.css?ver=20220425" />
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

    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>

</head>

<body class="body-responsive">
    <div class="skipnavi">
        <a href="#container">본문 바로가기</a>
    </div>

    <header class="header-responsive">
        <h1 class="header-responsive-logo">
            <a href="/index" class="memberLogo"><img src="https://static.hyundailivart.co.kr/assets/images/mbr/logo.png"
                    alt="LIVART" /></a>
        </h1>
    </header>

    <section id="container" class="section-responsive" role="main">
        <div class="container">

            <form id="joinForm" name="joinForm" action="/jsp/members/save2.jsp" method="post">

                <fieldset>
                    <legend>가입 필수정보 입력</legend>
                    <div class="field relative-item member-input__cnts">
                        <h2 class="section-responsive-title">개인정보입력</h2>
                    </div>

                    <div class="field input-wrap">
                        <label for="idCheck" class="label required"><em class="sr-only">필수입력</em>아이디</label>
                        <div class="has-button-fixed">
                            <div class="control is-expanded">
                                <input id="mbrId" name="mbrId" class="input" type="text" placeholder="아이디 입력"
                                    maxlength="20" data-valid-engnum="true" />
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
                        <label for="name" class="label required"><em class="sr-only">필수입력</em>이름</label>
                        <div class="control">
                            <input id="mbrNm" name="mbrNm" class="input" type="text" maxlength="10"
                                placeholder="이름 입력" />
                        </div>
                    </div>
                    <div class="field select-wrap member-input__cnts">
                        <label for="selectYear" class="label required"><em class="sr-only">필수입력</em>생년월일</label>
                        <div class="horizontal-align is-centered items--3">
                            <div class="control select-item">
                                <div class="select">
                                    <select id="bdayYear" name="bdayYear" title="년 선택">
                                        <option value="">년</option>

                                        <option value="2022">2022</option>

                                        <option value="2021">2021</option>

                                        <option value="2020">2020</option>

                                        <option value="2019">2019</option>

                                        <option value="2018">2018</option>

                                        <option value="2017">2017</option>

                                        <option value="2016">2016</option>

                                        <option value="2015">2015</option>

                                        <option value="2014">2014</option>

                                        <option value="2013">2013</option>

                                        <option value="2012">2012</option>

                                        <option value="2011">2011</option>

                                        <option value="2010">2010</option>

                                        <option value="2009">2009</option>

                                        <option value="2008">2008</option>

                                        <option value="2007">2007</option>

                                        <option value="2006">2006</option>

                                        <option value="2005">2005</option>

                                        <option value="2004">2004</option>

                                        <option value="2003">2003</option>

                                        <option value="2002">2002</option>

                                        <option value="2001">2001</option>

                                        <option value="2000">2000</option>

                                        <option value="1999">1999</option>

                                        <option value="1998">1998</option>

                                        <option value="1997">1997</option>

                                        <option value="1996">1996</option>

                                        <option value="1995">1995</option>

                                        <option value="1994">1994</option>

                                        <option value="1993">1993</option>

                                        <option value="1992">1992</option>

                                        <option value="1991">1991</option>

                                        <option value="1990">1990</option>

                                        <option value="1989">1989</option>

                                        <option value="1988">1988</option>

                                        <option value="1987">1987</option>

                                        <option value="1986">1986</option>

                                        <option value="1985">1985</option>

                                        <option value="1984">1984</option>

                                        <option value="1983">1983</option>

                                        <option value="1982">1982</option>

                                        <option value="1981">1981</option>

                                        <option value="1980">1980</option>

                                        <option value="1979">1979</option>

                                        <option value="1978">1978</option>

                                        <option value="1977">1977</option>

                                        <option value="1976">1976</option>

                                        <option value="1975">1975</option>

                                        <option value="1974">1974</option>

                                        <option value="1973">1973</option>

                                        <option value="1972">1972</option>

                                        <option value="1971">1971</option>

                                        <option value="1970">1970</option>

                                        <option value="1969">1969</option>

                                        <option value="1968">1968</option>

                                        <option value="1967">1967</option>

                                        <option value="1966">1966</option>

                                        <option value="1965">1965</option>

                                        <option value="1964">1964</option>

                                        <option value="1963">1963</option>

                                        <option value="1962">1962</option>

                                        <option value="1961">1961</option>

                                        <option value="1960">1960</option>

                                        <option value="1959">1959</option>

                                        <option value="1958">1958</option>

                                        <option value="1957">1957</option>

                                        <option value="1956">1956</option>

                                        <option value="1955">1955</option>

                                        <option value="1954">1954</option>

                                        <option value="1953">1953</option>

                                        <option value="1952">1952</option>

                                        <option value="1951">1951</option>

                                        <option value="1950">1950</option>

                                        <option value="1949">1949</option>

                                        <option value="1948">1948</option>

                                        <option value="1947">1947</option>

                                        <option value="1946">1946</option>

                                        <option value="1945">1945</option>

                                        <option value="1944">1944</option>

                                        <option value="1943">1943</option>

                                        <option value="1942">1942</option>

                                        <option value="1941">1941</option>

                                        <option value="1940">1940</option>

                                        <option value="1939">1939</option>

                                        <option value="1938">1938</option>

                                        <option value="1937">1937</option>

                                        <option value="1936">1936</option>

                                        <option value="1935">1935</option>

                                        <option value="1934">1934</option>

                                        <option value="1933">1933</option>

                                        <option value="1932">1932</option>

                                        <option value="1931">1931</option>

                                        <option value="1930">1930</option>

                                    </select>
                                </div>
                            </div>
                            <div class="control select-item">
                                <div class="select">
                                    <select title="월 선택" id="bdayMonth" name="bdayMonth">
                                        <option value="">월</option>

                                        <option value="01">01</option>

                                        <option value="02">02</option>

                                        <option value="03">03</option>

                                        <option value="04">04</option>

                                        <option value="05">05</option>

                                        <option value="06">06</option>

                                        <option value="07">07</option>

                                        <option value="08">08</option>

                                        <option value="09">09</option>

                                        <option value="10">10</option>

                                        <option value="11">11</option>

                                        <option value="12">12</option>

                                    </select>
                                </div>
                            </div>
                            <div class="control select-item">
                                <div class="select">
                                    <select title="일 선택" id="bdayDay" name="bdayDay">
                                        <option value="">일</option>

                                        <option value="01">01</option>

                                        <option value="02">02</option>

                                        <option value="03">03</option>

                                        <option value="04">04</option>

                                        <option value="05">05</option>

                                        <option value="06">06</option>

                                        <option value="07">07</option>

                                        <option value="08">08</option>

                                        <option value="09">09</option>

                                        <option value="10">10</option>

                                        <option value="11">11</option>

                                        <option value="12">12</option>

                                        <option value="13">13</option>

                                        <option value="14">14</option>

                                        <option value="15">15</option>

                                        <option value="16">16</option>

                                        <option value="17">17</option>

                                        <option value="18">18</option>

                                        <option value="19">19</option>

                                        <option value="20">20</option>

                                        <option value="21">21</option>

                                        <option value="22">22</option>

                                        <option value="23">23</option>

                                        <option value="24">24</option>

                                        <option value="25">25</option>

                                        <option value="26">26</option>

                                        <option value="27">27</option>

                                        <option value="28">28</option>

                                        <option value="29">29</option>

                                        <option value="30">30</option>

                                        <option value="31">31</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="member-input__cnts">
                        <label for="phoneNumber" class="label required"><em class="sr-only">필수입력</em>휴대폰번호</label>
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

                                                <option value="019">019</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="control select-item">
                                        <input class="input" type="tel" name="hpNo2" id="hpNo2" maxlength="4"
                                            data-valid-number="true" title="휴대폰 중간번호 입력" />
                                    </div>
                                    <div class="control select-item">
                                        <input class="input" type="tel" name="hpNo3" id="hpNo3" maxlength="4"
                                            data-valid-number="true" title="휴대폰 마지막번호 입력" />
                                    </div>
                                </div>
                            </div>
                            <p class="control has-text-right">
                                <button type="button" class="button is-primary is-outlined is-fullwidth b-certBtn"
                                    data-type="1">인증번호 요청</button>
                            </p>
                        </div>
                    </div>
                    <div class="field has-addons has-addons--fixed mt1 mb0">
                        <p class="control is-expanded">
                            <input class="input" type="text" maxlength="6" id="certNo" name="certNo"
                                placeholder="인증번호 입력" title="인증번호" />
                            <span class="certify-time"></span>
                        </p>
                        <p class="control">
                            <button type="button" class="button is-dark b-certChk">인증확인</button>
                        </p>
                    </div>
                    <div class="field text-right mt1">
                        <a href="javascript:" class="section-responsive-link b-certBtn" data-type="2">인증번호 재발송</a>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>추가정보 선택입력 </legend>
                    <div class="select-field-wrap  add_accordion">
                        <div class="field">


                            <a href="#collapse-add" data-action="collapse">
                                <h2 class="section-responsive-title">추가정보 입력<em
                                        class="select-field-wrap__desc">(선택)</em></h2>
                                <i class="icon btn"><span class="sr-only">열기/닫기</span></i>
                            </a>



                        </div>


                        <div id="collapse-add" aria-expanded="true" class="accordion-panel">
                            <ul class="select-field-list">
                                <li>
                                    <div class="field member-input__cnts">
                                        <label for="address" class="label">주소</label>
                                        <div class="field horizontal-align items--3 member-input__cnts--zip">
                                            <div class="control select-item">
                                                <input class="input" type="text" name="postNo" id="postNo"
                                                    title="우편번호 입력" readonly="readonly" />
                                            </div>
                                            <div class="control select-item">
                                                <button id="address" type="button"
                                                    class="button is-primary is-outlined modal-button b-postBtn"
                                                    data-target="modal-postcode" aria-haspopup="true">우편번호 확인</button>
                                            </div>
                                        </div>
                                        <div class="field input-wrap">
                                            <div class="control">
                                                <input class="input" type="text" name="draddr" id="draddr" title="주소 입력"
                                                    readonly="readonly" />
                                            </div>
                                            <div class="control">
                                                <input class="input" type="text" name="draddrDtl" id="draddrDtl"
                                                    placeholder="상세주소 입력" maxlength="50" />
                                            </div>
                                            <p class="help">입력된 주소는 회원님의 기본 배송지로 등록 됩니다.</p>
                                            <input type="hidden" name="addr" id="addr" />
                                            <input type="hidden" name="addrDtl" id="addrDtl" />
                                            <input type="hidden" name="draddrBldgNm" id="draddrBldgNm" />
                                        </div>
                                    </div>



                                    <div class="field input-wrap select-mail-wrap">
                                        <label for="eml" class="label ">이메일</label>
                                        <div class="is-flex">
                                            <div class="control">
                                                <input id="eml1" name="eml1" class="input" type="text"
                                                    placeholder="이메일 입력" maxlength="30" />
                                            </div>
                                            <span class="is-size-3">@</span>
                                            <div id="inputDirect" class="select emlSel">
                                                <select id="eml2" name="eml2">
                                                    <option value="">선택</option>

                                                    <option value="naver.com">naver.com</option>

                                                    <option value="daum.net">daum.net</option>

                                                    <option value="nate.com">nate.com</option>

                                                    <option value="gmail.com">gmail.com</option>

                                                    <option value="hanmail.net">hanmail.net</option>

                                                    <option value="hotmail.com">hotmail.com</option>

                                                    <option value="yahoo.com">yahoo.com</option>

                                                    <option value="direct">직접입력</option>
                                                </select>
                                            </div>
                                            <div class="control input-direct emlTxt">
                                                <input class="input" type="text" name="emlEtc" id="emlEtc"
                                                    placeholder="이메일 주소 직접입력" maxlength="30" />
                                            </div>
                                        </div>

                                        <input type="hidden" name="eml" id="eml" />
                                    </div>


                                    <!-- 결혼여부 -->
                                    <div class="field horizontal-align select-item">
                                        <div class="control">
                                            <label for="isMarriage" class="label">결혼여부</label>
                                            <div class="select">
                                                <select id="mrrgYn" name="mrrgYn">
                                                    <option value="">선택</option>

                                                    <option value="N">미혼</option>

                                                    <option value="Y">기혼</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 결혼기념일 -->
                                    <div class="field select-wrap member-input__cnts marriage-date-wrap">
                                        <label for="selectMarriageYear" class="label">결혼기념일</label>
                                        <div class="horizontal-align is-centered items--3">
                                            <div class="control select-item">
                                                <div class="select">
                                                    <select id="mrrgAnnivYear" name="mrrgAnnivYear" title="년 선택">
                                                        <option value="">년</option>

                                                        <option value="2022">2022</option>

                                                        <option value="2021">2021</option>

                                                        <option value="2020">2020</option>

                                                        <option value="2019">2019</option>

                                                        <option value="2018">2018</option>

                                                        <option value="2017">2017</option>

                                                        <option value="2016">2016</option>

                                                        <option value="2015">2015</option>

                                                        <option value="2014">2014</option>

                                                        <option value="2013">2013</option>

                                                        <option value="2012">2012</option>

                                                        <option value="2011">2011</option>

                                                        <option value="2010">2010</option>

                                                        <option value="2009">2009</option>

                                                        <option value="2008">2008</option>

                                                        <option value="2007">2007</option>

                                                        <option value="2006">2006</option>

                                                        <option value="2005">2005</option>

                                                        <option value="2004">2004</option>

                                                        <option value="2003">2003</option>

                                                        <option value="2002">2002</option>

                                                        <option value="2001">2001</option>

                                                        <option value="2000">2000</option>

                                                        <option value="1999">1999</option>

                                                        <option value="1998">1998</option>

                                                        <option value="1997">1997</option>

                                                        <option value="1996">1996</option>

                                                        <option value="1995">1995</option>

                                                        <option value="1994">1994</option>

                                                        <option value="1993">1993</option>

                                                        <option value="1992">1992</option>

                                                        <option value="1991">1991</option>

                                                        <option value="1990">1990</option>



                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control select-item">
                                                <div class="select">
                                                    <select title="월 선택" id="mrrgAnnivMonth" name="mrrgAnnivMonth">
                                                        <option value="">월</option>

                                                        <option value="01">01</option>

                                                        <option value="02">02</option>

                                                        <option value="03">03</option>

                                                        <option value="04">04</option>

                                                        <option value="05">05</option>

                                                        <option value="06">06</option>

                                                        <option value="07">07</option>

                                                        <option value="08">08</option>

                                                        <option value="09">09</option>

                                                        <option value="10">10</option>

                                                        <option value="11">11</option>

                                                        <option value="12">12</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control select-item">
                                                <div class="select">
                                                    <select title="일 선택" id="mrrgAnnivDay" name="mrrgAnnivDay">
                                                        <option value="">일</option>

                                                        <option value="01">01</option>

                                                        <option value="02">02</option>

                                                        <option value="03">03</option>

                                                        <option value="04">04</option>

                                                        <option value="05">05</option>

                                                        <option value="06">06</option>

                                                        <option value="07">07</option>

                                                        <option value="08">08</option>

                                                        <option value="09">09</option>

                                                        <option value="10">10</option>

                                                        <option value="11">11</option>

                                                        <option value="12">12</option>

                                                        <option value="13">13</option>

                                                        <option value="14">14</option>

                                                        <option value="15">15</option>

                                                        <option value="16">16</option>

                                                        <option value="17">17</option>

                                                        <option value="18">18</option>

                                                        <option value="19">19</option>

                                                        <option value="20">20</option>

                                                        <option value="21">21</option>

                                                        <option value="22">22</option>

                                                        <option value="23">23</option>

                                                        <option value="24">24</option>

                                                        <option value="25">25</option>

                                                        <option value="26">26</option>

                                                        <option value="27">27</option>

                                                        <option value="28">28</option>

                                                        <option value="29">29</option>

                                                        <option value="30">30</option>

                                                        <option value="31">31</option>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 자녀유무 -->
                                    <div class="field select-wrap member-input__cnts">
                                        <label for="children" class="label">자녀유무</label>
                                        <div class="horizontal-align is-centered items--2">
                                            <div class="control select-item">
                                                <div class="select">
                                                    <select id="childYn" name="childYn">
                                                        <option value="">선택</option>

                                                        <option value="Y">자녀 유</option>

                                                        <option value="N">자녀 무</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control select-item age-wrap">
                                                <div class="select">
                                                    <select title="자녀 나이 선택" id="childAgrgCd" name="childAgrgCd">
                                                        <option value="">선택</option>

                                                        <option value="10">0~3세</option>

                                                        <option value="20">4~7세</option>

                                                        <option value="30">8~10세</option>

                                                        <option value="40">11~13세</option>

                                                        <option value="50">14세 이상</option>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="field select-wrap member-input__cnts mb3">
                                        <span class="label">성별</span>
                                        <div class="check-items-wrap radio-list">

                                            <div class="field">
                                                <div class="radio">
                                                    <input type="radio" name="genCd" id="genCd1" value="M" />
                                                    <label for="genCd1">남자</label>
                                                </div>
                                            </div>

                                            <div class="field">
                                                <div class="radio">
                                                    <input type="radio" name="genCd" id="genCd2" value="F" />
                                                    <label for="genCd2">여자</label>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                            </ul>
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