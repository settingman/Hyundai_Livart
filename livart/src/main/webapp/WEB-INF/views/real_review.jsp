<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="리바트, 가구, 종합가구, 사무가구, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름">
<meta property="og:type" content="website">
<meta property="og:title" content="테스트입니다.">
<meta property="og:description" content="통합몰">
<meta property="og:image"
	content="https://static.hyundailivart.co.kr/upload_mall/board/ME00000029/B200051515/B200051515_mnImgPathFile_20220923032450443.jpg/dims/autorotate/on">
<meta property="og:site_name" content="통합몰">
<title>테스트입니다.</title>
<meta name="description" content="테스트입니다.">


<link rel="shortcut icon" type="image/x-icon"
	href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico?ver=20221017">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/twentytwenty.css?ver=20221017"
	media="all">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/swiper.min.css">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/promotion/livart.css?ver=20221017">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/promotion/newLivart.css?ver=20221017">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/style.css?ver=20221017">
<title>Insert title here</title>
</head>
<header class="header header-style-www" id="header">
	<div class="header-logo">
		<div class="container">

			<a href="https://www.hyundailivart.co.kr/community"
				class="header-logo__community">
				<h1>LIVART</h1>
			</a> <a href="https://www.hyundailivart.co.kr/community"
				class="header-logo__community-sub">
				<h1>커뮤니티</h1>
			</a>


			<ul class="header-member-menu">


				<li>
					<form id="logoutForm" name="logoutForm"
						action="https://www.hyundailivart.co.kr/logout" method="post">
						<a href="javascript:$.eshopfront.hpnt.logout();"
							class="header-member-menu__btn icon i-gnb_mem6"><i
							class="icon-gnb_mem6"></i><span>로그아웃</span></a>
						<div>
							<input type="hidden" name="_csrf"
								value="08782681-7be7-47d1-8ccb-3307a2da6d19">
						</div>
					</form>
					<div style="display: none">
						<form id="logoutForm2" name="logoutForm2" action="/logout"
							method="post">
							<a href="javascript:$.eshopfront.hpnt.logout();"
								class="header-member-menu__btn icon i-gnb_mem6"><i
								class="icon-gnb_mem6"></i><span>로그아웃</span></a>
							<div>
								<input type="hidden" name="_csrf"
									value="08782681-7be7-47d1-8ccb-3307a2da6d19">
							</div>
						</form>
					</div> <input type="hidden" name="loginYn" value="Y">
				</li>
				<li><a href="https://www.hyundailivart.co.kr/mypage/main"
					class="header-member-menu__btn icon i-gnb_mem1"><i
						class="icon-gnb_mem1"></i><span>마이페이지</span></a></li>

				<li><a href="https://www.hyundailivart.co.kr/cart"
					class="header-member-menu__btn icon i-gnb_mem3"><i
						class="icon-gnb_mem3"></i><span>장바구니</span></a></li>
				<li><a href="https://www.hyundailivart.co.kr/csCenter/shopMgmt"
					class="header-member-menu__btn icon i-gnb_mem4"><i
						class="icon-gnb_mem4"></i><span>매장찾기</span></a></li>
				<li><a
					href="https://www.hyundailivart.co.kr/csCenter/shopResev"
					class="header-member-menu__btn icon i-gnb_mem7"><i
						class="icon-gnb_mem7"></i><span>방문상담예약</span></a></li>
				<li><a href="https://www.hyundailivart.co.kr/csCenter/main"
					class="header-member-menu__btn icon i-gnb_mem5"><i
						class="icon-gnb_mem5"></i><span>고객센터</span></a></li>
			</ul>

			<div class="header-search-wrap">
				<form action="/search/search" name="searchForm">
					<input type="hidden" id="recommUrl"> <input type="hidden"
						id="linkedUrl">
					<fieldset>
						<legend>통합검색</legend>
						<div class="header-search">
							<div class="header-search__input-wrap">
								<input type="text" id="searchKeyword" name="kwd"
									autocomplete="off" class="header-search__input"
									placeholder="검색어를 입력하세요" title="검색어">
							</div>
							<button type="submit" class="header-search__submit icon"
								id="searchKwdBtn">
								<i class="ico-search"></i><span class="sr-only">검색</span>
							</button>
						</div>
					</fieldset>
				</form>

				<!-- S : 최근검색어/인기검색어 -->
				<div class="header-search-content" id="headerSearchContent">
					<div class="header-search-content__header">
						<ul>
							<li class="is-active">
								<button id="tab-search1" class="tab" role="tab"
									aria-controls="tabpanel-search1">
									<span>최근 검색어</span>
								</button>
							</li>
							<li>
								<button id="tab-search2" class="tab" role="tab"
									aria-controls="tabpanel-search2">
									<span>인기 검색어</span>
								</button>
							</li>
						</ul>
					</div>
					<!-- 최근 검색어 -->
					<div id="tabpanel-search1" class="tabpanel is-active"
						role="tabpanel" aria-labelledby="tab-search1">
						<div class="header-search-content__body lately-complete">
							<ul>
							</ul>
						</div>
						<div class="header-search-content__footer clear">
							<div class="fl">
								<button class="button-search-all__del">검색기록 전체삭제</button>
							</div>
							<div class="fr">
								<button class="button-search-content__close">
									닫기 <i class="icon-del-small"></i>
								</button>
							</div>
						</div>
					</div>
					<!-- //최근 검색어 -->
					<!-- 인기검색어 -->
					<div id="tabpanel-search2" class="tabpanel is-active"
						role="tabpanel" aria-labelledby="tab-search2" hidden="">
						<div class="header-search-content__body">
							<ol class="header-search-content__popular">
							</ol>
						</div>
						<div class="header-search-content__footer">
							<div class="fl"></div>
							<div class="fr">
								<button class="button-search-content__close">
									닫기 <i class="icon-del-small"></i>
								</button>
							</div>
						</div>
					</div>
					<!-- //인기검색어 -->
				</div>
				<!-- E : 최근검색어/인기검색어 -->

				<!-- S : 자동완성 -->
				<div class="header-search-content" id="headerSearchKeyword">
					<div class="header-search-content__header" id="cateKwdAuto">
					</div>
					<div class="header-search-content__body">
						<ul id="goodsKwdAuto">
							<li></li>
						</ul>
					</div>
					<div class="header-search-content__footer">
						<ul class="header-search-content__footer--hash" id="evtKwdAuto">
						</ul>
					</div>
				</div>
				<!-- E : 자동완성 -->
			</div>
		</div>
	</div>
	<!-- //header logo -->


	<div id="gnb">
		<!-- gnb category -->
		<div class="gnb-category-wrap">
			<div class="fullmenu-bar">
				<div class="container clear">
					<nav class="gnb-category">
						<h2 class="hidden">카테고리 메뉴</h2>
						<ul class="gnb-category__menu gnb-category__menu-comm">

							<li class="is-active"><a href="/community/lan">랜선집들이</a></li>

							<li class=""><a href="/community/export">고수의 집들이</a></li>

							<li class=""><a href="/community/magazineHinge">매거진</a></li>

							<li class=""><a href="/community/event">이벤트</a></li>

							<li class=""><a href="/community/eventDetail/E200000082">커뮤니티
									스토리</a></li>

						</ul>
					</nav>

					<a href="javascript:" class="button button-comm-write"><i
						class="ico-comm_content"></i>콘텐츠 등록</a>
				</div>
			</div>
			<div class="fullmenu-wrap">
				<div class="container"></div>
			</div>
		</div>
		<!-- //gnb category -->
	</div>

</header>

<!-- s : #container -->
<main id="container" role="main">
	<div class="container">

		<!-- S : 커뮤니티 본문 -->
		<input type="hidden" id="blbSn" value="B200054160">
		<section class="comm-contents-wrap">
			<!-- S : 콘텐츠 헤더 -->
			<header class="comm-contents-header clear">
				<span class="comm-contents-header__img"> <span
					class="comm-contents-header__img"> <img src="${imageURL }"
						alt="대표사진">
				</span>


				</span> <span class="comm-contents-header__top"> <em
					class="comm-contents-header__date">${realReviewVO.review_date }</em>


					<em class="comm-contents-header__bar">|</em> <em
					class="comm-contents-header__addr"> </em>

				</span>

				<h3 class="comm-contents-header__title">
					${realReviewVO.review_title }</h3>




				<span
					class="fr comm-user__writer comm-user__writer--level
            flower">
					${realReviewVO.user_user_id } </span>

			</header>

			<!-- 콘텐츠 필터 리스트 -->
			<div class="comm-contents-filters__wrap">
				<div class="comm-contents-filters__inner">
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">관심</dt>
						<dd class="comm-contents-filters__dd">${realReviewVO.interest }</dd>
					</dl>

					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">주거형태</dt>
						<dd class="comm-contents-filters__dd">
							${realReviewVO.dwelling }</dd>
					</dl>
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">공간</dt>
						<dd class="comm-contents-filters__dd">${realReviewVO.place }
						</dd>
					</dl>
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">평수</dt>
						<dd class="comm-contents-filters__dd">${realReviewVO.review_size }</dd>
					</dl>
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">예산</dt>
						<dd class="comm-contents-filters__dd">${realReviewVO.budget }</dd>
					</dl>
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">스타일</dt>
						<dd class="comm-contents-filters__dd">
							${realReviewVO.review_style }</dd>
					</dl>
					<dl class="comm-contents-filters__dl">
						<dt class="comm-contents-filters__dt">함께</dt>
						<dd class="comm-contents-filters__dd">
							${realReviewVO.together }</dd>
					</dl>
				</div>
			</div>
			<!-- //콘텐츠 필터 리스트 -->

			<div class="comm-contents-hmenu-wrap">
				<!-- 조회수 -->
				<div class="comm-contents-hmenu__item">
					<span class="comm-contents-hmenu__item-icon"> <i
						class="ico-search"></i>
					</span> <span class="comm-contents-hmenu__item-text"> <strong>조회수</strong>
						<span>1</span>
					</span>
				</div>

				<!-- //조회수 -->
				<!-- 좋아요 -->
				<button type="button"
					class="comm-contents-hmenu__item button-comm-hmenu-like ">
					<span class="comm-contents-hmenu__item-icon"> <i
						class="ico-like"></i>
					</span> <span class="comm-contents-hmenu__item-text"> <strong
						class="comm-contents-hmenu__item-text__title">좋아요</strong> <span
						class="comm-contents-hmenu__item-text__num">0</span>
					</span>
				</button>
				<!-- //좋아요 -->
				<!-- //좋아요 -->
			</div>
			<div class="product-item product-item--small __layout02">
				<div class="product-item-image">
					해당 제품 사진 불러오기, 해당 제품으로 이동 앵커 <img class="image"
						alt="[HM] 칸토나 소파 패브릭 일반형 6인 코너형 고스트샤크그레이"
						src="https://static.hyundailivart.co.kr/upload_mall/goods/P200106979/GM42158498_img.jpg/dims/resize/x250/cropcenter/250x250/autorotate/on/optimize">
				</div>
				<a href="/p/P200106979">
					<div class="product-item-content">
						<div class="product-item-header">
							<span class="product-item-header__brand">제품 브랜드 불러오기</span> <span
								class="product-item-header__name text-ellipsis-2">제품명
								불러오기</span>
						</div>
						<div class="product-item-price">
							<div class="product-item-price__discount">

								할인률 불러오기<span class="unit">%</span>


							</div>
							<div class="product-item-price__price--wrap">



								<span class="product-item-price__price">할인된 가격불러오기<span
									class="unit">원</span></span>



								<del class="product-item-price__price--del">
									할인전 가격 불러오기<span class="unit">원</span>
								</del>

							</div>
						</div>
					</div>
				</a>
			</div>
			<!-- S : 콘텐츠 헤더 -->
			<div class="comm-edt__item">
				<div class="comm-contents__content content">
					본문 영역 불러오기 <br> <br> 132 123<br> 123<br> 123<br>
					123<br> test<br> tets<br>
				</div>
			</div>
		</section>
		<!-- E : 커뮤니티 본문 -->

		<div class="button-area item-button-wrap is-centered">
			<a href="javascript:;" class="button is-primary is-outlined is-large"
				disabled="">이전 글</a> <a href="/livart/review"
				class="button is-primary is-outlined is-large">목록</a> <a
				href="javascript:;" class="button is-primary is-outlined is-large"
				disabled="">다음 글</a>
		</div>

		<!--  S : 관련 콘텐츠 -->

		<!--  E : 관련 콘텐츠 -->

	</div>
</main>
<!-- e : #container -->

<footer id="footer">
	<!-- footer-top -->
	<div class="footer-top">
		<div class="container">
			<!-- footer-top-menu -->
			<div class="footer-top-menu">
				<ul>
					<li><a class="footer-top-menu__link"
						href="https://company.hyundailivart.co.kr/ko/index">회사소개</a></li>
					<li><a class="footer-top-menu__link"
						href="/footerTermInfo?type=1"><strong>개인정보 처리방침</strong></a></li>
					<li><a class="footer-top-menu__link"
						href="/footerTermInfo?type=3">위치정보 이용약관</a></li>
					<li><a class="footer-top-menu__link"
						href="/footerTermInfo?type=4">영상정보처리기기 운영/관리방침</a></li>
					<li><a class="footer-top-menu__link"
						href="/footerTermInfo?type=2">이용약관</a></li>
					<li><a class="footer-top-menu__link"
						href="http://www.ehyundai.com/newPortal/ir/ETH/ETH000001.do?ir=3">경영이념</a></li>
					<li><a class="footer-top-menu__link"
						href="https://company.hyundailivart.co.kr/ko/statements">투자정보</a></li>
					<li><a class="footer-top-menu__link"
						href="https://recruit.ehyundai.com/index.nhd">인재채용</a></li>
					<li><a class="footer-top-menu__link"
						href="https://www.hyundailivart.co.kr/csCenter/agency">제휴 및
							대리점 개설안내</a></li>
				</ul>
			</div>
			<!-- //footer-top-menu -->
			<!-- footer-family-site -->

			<div class="footer-family-site fr">
				<button class="button-family-site">
					FAMILY SITE<i class="icon-arrow-down-white"> </i>
				</button>
			</div>

		</div>
	</div>
</footer>

<!-- quick menu -->

<section class="quick is-community" style="left: 0px; right: inherit;">
	<!-- s :  Top버튼 -->
	<div class="quick-top">
		<a href="#gnb" class="button-quick-top"><i class="ico-arrow-up"></i><span
			class="sr-only">맨 위로 이동</span></a>
	</div>
	<!-- e :  Top버튼 -->
	<div class="quick-inner">
		<!-- s : quick -->
		<h2 class="hidden">퀵메뉴</h2>
		<button type="button" class="button-switch-quick"
			id="button-quick-community" style="display: none">
			<span class="button-switch-quick__default"> <strong
				class="button-switch-quick__title">커뮤니티</strong> <span
				class="button-switch-quick__icon"> <i
					class="ico-chevron-left-thin"></i>
			</span>
			</span> <span class="button-switch-quick__on"> <i
				class="button-switch-quick__logo"></i> <strong
				class="button-switch-quick__title">커뮤니티</strong> <span
				class="button-switch-quick__icon"> <i
					class="ico-chevron-left-thin"></i>
			</span>
			</span>
		</button>
		<button type="button" class="button-switch-quick"
			id="button-quick-mall">
			<span class="button-switch-quick__default"> <strong
				class="button-switch-quick__title">리바트몰</strong> <span
				class="button-switch-quick__icon"> <i
					class="ico-chevron-left-thin"></i>
			</span>
			</span> <span class="button-switch-quick__on"> <i
				class="button-switch-quick__logo"></i> <strong
				class="button-switch-quick__title">리바트몰</strong> <span
				class="button-switch-quick__icon"> <i
					class="ico-chevron-left-thin"></i>
			</span>
			</span>
		</button>
		<ul class="quick-menu">
			<li><a href="https://www.hyundailivart.co.kr/cart"
				class="quick-menu-item icon" id="quickmenu1"> <span
					class="quick-menu-item__icon"> <i class="icon-quick1"></i><em
						class="quick-menu__num viewCartCnt"></em>
				</span> <span class="quick-menu-item__txt">장바구니</span>
			</a></li>
			<li><a class="quick-menu-item icon"
				id="button-quick-menu-recent"> <span
					class="quick-menu-item__icon"> <i class="icon-quick2"></i> <em
						class="quick-menu__num">1</em>
				</span> <span class="quick-menu-item__txt">최근 본 상품</span>
			</a> <!-- s : quick-content -->
				<div class="quick-content quick-item-recent-list">

					<div class="swiper-container">
						<ul class="swiper-wrapper">

							<li class="swiper-slide"><a href="/p/P200106979"> <img
									src="https://static.hyundailivart.co.kr/upload_mall/goods/P200106979/GM42158498_img.jpg/dims/resize/x100/cropcenter/100x100/autorotate/on/optimize"
									alt="[HM] 칸토나 소파 패브릭 일반형 6인 코너형 고스트샤크그레이">
							</a>
								<button type="button" data-val="P200106979" class="btn-del">
									<span class="sr-only">삭제</span>
								</button></li>

						</ul>
					</div>
					<div class="swiper-controls-wrap">
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div> <!-- s :quick-content --></li>
			<li><a href="https://www.hyundailivart.co.kr/coupon/couponzone"
				class="quick-menu-item icon"> <span
					class="quick-menu-item__icon"> <i class="icon-quick3"></i>
				</span> <span class="quick-menu-item__txt">쿠폰함</span>
			</a></li>
			<li><a href="https://www.hyundailivart.co.kr/csCenter/shopMgmt"
				class="quick-menu-item icon"> <span
					class="quick-menu-item__icon"> <i class="icon-quick4"></i>
				</span> <span class="quick-menu-item__txt">매장찾기</span>
			</a></li>
			<li><a
				href="https://plus.kakao.com/talk/bot/@%ED%98%84%EB%8C%80%EB%A6%AC%EB%B0%94%ED%8A%B8/%EC%B1%97%EB%B4%87%EC%8B%9C%EC%9E%91"
				class="quick-menu-item icon" target="_blank"
				rel="noopener noreferrer"> <span class="quick-menu-item__icon">
						<i class="icon-quick5"></i>
				</span> <span class="quick-menu-item__txt">카카오톡 문의</span>
			</a></li>
			<li><a href="#gnb" class="quick-menu-item icon button-quick-top">
					<span class="quick-menu-item__icon"> <i class="icon-top"></i>
				</span> <span class="quick-menu-item__txt">맨 위로 이동</span>
			</a></li>
		</ul>
		<!-- s : quick -->
	</div>
</section>


</body>

</html>