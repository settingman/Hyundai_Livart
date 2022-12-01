<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body class="main-page" oncontextmenu="return false">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<%@ include file="../../static/header.jsp" %>

	<div class="skipnavi">
		<a href="#container">본문 바로가기(www.hyundailivart.co.kr)</a>
		<a href="#gnb">주메뉴 바로가기</a>
	</div>



		<!-- s : #container -->
		<main id="container" role="main">
			




<div class="container">
    <div class="section-contents-wrap order-payment order-complete">
        <h3 class="title is-3 is-normal">주문완료</h3>

        <div class="msg-box msg-box-blue">
            <p class="msg-box-title">주문이 완료되었습니다.</p>
        </div>

        <!-- 선물하기 -->

        <section>
            <div class="section-contents-item">
                <div class="table-box table-box-form gift-table-wrap">
                    <table class="table is-fullwidth">
                        <caption>
                            최종 결제 내용 및 배송주소
                        </caption>
                        <colgroup>
                            <col style="width: 150px;">
                            <col>
                        </colgroup>
                        <thead class="sr-only">
                            <tr>
                                <th align="" scope="col">항목</th>
                                <th align="" scope="col">입력 및 선택</th>
                            </tr>
                        </thead>
                        <tbody>
                    <!--         <tr>
                                <th scope="row" class="is-small">
                                    <span class="label">최종결제금액</span>
                                </th>
                                <td>
                                    <div class="user-info"><span>1,226,000</span>원
                                        </div>
                                </td>
                            </tr>
                            -->
                                <tr>
                                    <th scope="row" class="is-small">
                                        <span class="label">배송주소</span>
                                    </th>
                                    <td>
                                        <div class="user-info">${Address }</div>
                                    </td>
                                </tr>
                            
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="button-area item-button-wrap is-flex">
                <a href="/" class="button is-primary is-outlined is-large">쇼핑계속하기</a>
                <a href="/mypage/orderList" class="button is-primary is-large">주문상세내역</a>
            </div>
        </section>

        
            <section class="section-contents-planning planning-dropdown-lists mt10 pb0 mb-5">
                <ul class="section-contents-planning__lists">
                    
                        
                            <li>
                                <a href="/exhibition/B200053005">
                                    <div class="product-item">
                                        <div class="product-item-image">
                                            <img class="image" alt="프렌즈 스틸 비밀특가 기획전!" src="https://static.hyundailivart.co.kr/upload_mall/board/ME00000023/B200053005/B200053005_MnImgPath.jpg">
                                        </div>
                                        <div class="product-item-content">
                                            <div class="product-item-header">
                                                <span class="product-item-header__brand">통합몰</span>
                                                <span class="product-item-header__name">
                                                    프렌즈 스틸 비밀특가 기획전!
                                                </span>
                                                <div class="is-flex">
                                                    
                                                    
                                                    <span class="product-item-header--date">
                                                        ~2023.01.31
                                                    </span>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                    
                        
                            <li>
                                <a href="/exhibition/B200052141">
                                    <div class="product-item">
                                        <div class="product-item-image">
                                            <img class="image" alt="감성가득 센스만점, 아이방 포토후기 모음전!" src="https://static.hyundailivart.co.kr/upload_mall/board/ME00000023/B200052141/B200052141_MnImgPath.jpg">
                                        </div>
                                        <div class="product-item-content">
                                            <div class="product-item-header">
                                                <span class="product-item-header__brand">통합몰</span>
                                                <span class="product-item-header__name">
                                                    감성가득 센스만점, 아이방 포토후기 모음전!
                                                </span>
                                                <div class="is-flex">
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                    
                        
                            <li>
                                <a href="/exhibition/B200051132">
                                    <div class="product-item">
                                        <div class="product-item-image">
                                            <img class="image" alt="Art &amp; Design Project 2022" src="https://static.hyundailivart.co.kr/upload_mall/board/ME00000023/B200051132/B200051132_MnImgPath.jpg">
                                        </div>
                                        <div class="product-item-content">
                                            <div class="product-item-header">
                                                <span class="product-item-header__brand">통합몰</span>
                                                <span class="product-item-header__name">
                                                    Art &amp; Design Project 2022
                                                </span>
                                                <div class="is-flex">
                                                    
                                                    
                                                    <span class="product-item-header--date">
                                                        ~2022.12.31
                                                    </span>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                    
                        
                            <li>
                                <a href="/exhibition/B200053220">
                                    <div class="product-item">
                                        <div class="product-item-image">
                                            <img class="image" alt="간편한 구매, 착한 가격! 자녀방 스타일 패키지 기획전!" src="https://static.hyundailivart.co.kr/upload_mall/board/ME00000023/B200053220/B200053220_MnImgPath.jpg">
                                        </div>
                                        <div class="product-item-content">
                                            <div class="product-item-header">
                                                <span class="product-item-header__brand">통합몰</span>
                                                <span class="product-item-header__name">
                                                    간편한 구매, 착한 가격! 자녀방 스타일 패키지 기획전!
                                                </span>
                                                <div class="is-flex">
                                                    
                                                    
                                                    <span class="product-item-header--date">
                                                        ~2022.12.31
                                                    </span>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                        
                    
                </ul>
            </section>
        
    </div>
</div>


	
	
	
	
    
        <input type="hidden" data-goodsn="P200106872" data-goodnm="모인 포근소파 4인 카우치형" data-ordqty="1" data-saleprc="1226000">
        
        
        
      
	<!-- E : GA - Event snippet for 구매 conversion page -->
	<!-- WIDERPLANET PURCHASE SCRIPT START 2022.4.4 -->
	<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1669859096202" charset="UTF-8" src="https://astg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;md=bs&amp;ga=1hlm8ve-19vqpde-3-1&amp;wp_uid=2-4615da30da06291f84f0347a4d0348f6-s1664150646.209000%7Cwindows_10%7Cchrome-biy8mo&amp;ty=PurchaseComplete&amp;ti=53204&amp;hcuid=a52587f8afe0bd07722c6bf4a2534c582a24187c&amp;i0=P200106872&amp;p0=1226000&amp;q0=1&amp;t0=%EB%AA%A8%EC%9D%B8%20%ED%8F%AC%EA%B7%BC%EC%86%8C%ED%8C%8C%204%EC%9D%B8%20%EC%B9%B4%EC%9A%B0%EC%B9%98%ED%98%95&amp;device=web&amp;charset=UTF-8&amp;tc=1669859096202&amp;ref=https%3A%2F%2Fwww.hyundailivart.co.kr%2Forder%2Fnormal%2ForderSheet&amp;loc=https%3A%2F%2Fwww.hyundailivart.co.kr%2Forder%2Fcomplete%3FordNo%3Dord_20221201_0000108"></script><script id="wp_onsite_script" charset="UTF-8" src="https://cdn-aitg.widerplanet.com/onsite/onsite.js"></script></div>
	
	
	
	
	

        
    


		</main>

</body>
</html>