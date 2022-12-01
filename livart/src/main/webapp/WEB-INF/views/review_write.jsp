<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

<title>리바트</title>

<meta name="keywords"
	content="리바트, 가구, 종합가구, 사무가구, 매장가구, 리모델링, 사무가구, 윌리엄스 소노마, 포터리반 키즈, 포터리반, 웨스트엘름">

<link rel="shortcut icon" type="image/x-icon"
	href="https://static.hyundailivart.co.kr/assets/images/favicon/livart.ico">
<link rel="stylesheet"
	href="https://static.hyundailivart.co.kr/assets/css/style.css">
<script src="https://static.hyundailivart.co.kr/assets/js/jquery.min.js"></script>
<script src="https://static.hyundailivart.co.kr/assets/js/jquery-ui.js"></script>
<script
	src="https://static.hyundailivart.co.kr/assets/js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript">
        $(document).ready(function(){
            $(document).on('keydown', '[maxlength]', function () {
                var content = $(this).val();
                var thisMaxL = $(this).attr('maxlength');

                if (content.length > thisMaxL) {
                    alert('최대 ' + thisMaxL + '자까지 입력 가능합니다.');
                    $(this).val(content.substring(0, thisMaxL));
                    return;
                }
            });
        });
    </script>
<link rel="stylesheet" type="text/css"
	href="chrome-extension://acmihclidpipcalnbhloaedejpimjhbb/css/fonts.css">
</head>

<body class="body-responsive" data-select2-id="select2-data-6-33gy">
	<div class="skipnavi">
		<a href="#container">본문 바로가기</a>
	</div>





	<header class="comm-editor-header">
		<div class="comm-editor-header__l">
			<h1 class="comm-editor-header__logo">
				<a href="/community" class="comm-editor-header__logo--main"> <img
					src="https://static.hyundailivart.co.kr/assets/images/common/new_logo.png"
					alt="HYUNDAI LIVART">
				</a> <a href="/community" class="comm-editor-header__logo--title">
					커뮤니티 </a>
			</h1>
		</div>
		<h2 class="comm-editor-header__title">글쓰기</h2>
		<div class="comm-editor-header__r">

			<button type="button" class="button is-danger is-outlined"
				id="tempView" onclick="previewPopup('community')">미리보기</button>


			<button type="button" class="button is-danger is-outlined"
				id="tempSave">임시저장</button>

			<button type="submit" class="button is-danger" id="regist"
				form="command">발행신청</button>
		</div>
	</header>

	<form id="command" name="community" method="post"
		enctype="multipart/form-data" data-select2-id="select2-data-command"
		action="/livart/reviewsave">


		<input name="p_id" value="${p_id}" type="hidden">
		<!-- #container -->

		<section id="container" class="comm-editor-body" role="main"
			data-select2-id="select2-data-container">
			<h3 class="sr-only">글쓰기 본문</h3>
			<div class="comm-editor-container"
				data-select2-id="select2-data-5-78m6">
				<!-- 작성안내 -->
				<div class="comm-editor-card">
					<header class="comm-editor-card__header">
						<a href="#collapsible-card1" data-action="collapse"
							aria-label="more options">
							<h3 class="comm-editor__title">작성안내</h3>
							<p class="comm-editor__desc">원활한 콘텐츠 발행을 위해 꼭 읽어주세요.</p> <span
							class="comm-editor-card__header-icon icon"> <i
								class="ico-down_arrow" aria-hidden="true"></i>
						</span>
						</a>
					</header>
					<div id="collapsible-card1" class="is-collapsible"
						aria-expanded="false" style="display: none;">
						<div class="comm-editor-card__content">
							<div class="comm-editor-card__points">

								<dl class="comm-editor-card__dl editor-guide">
									<a
										href="https://www.hyundailivart.co.kr/eventDetail/E200000057">
										<dt class="comm-editor-card__dt">작성가이드</dt>
										<dd class="comm-editor-card__dd">
											<span class="comm-editor-card__dd_desc">이것만 작성하면 쉬워요!
											</span> <span class="comm-editor-card__dd_btn">자세히 보기 <b>&gt;</b>
											</span>
										</dd>
									</a>
								</dl>
								<dl class="comm-editor-card__dl">
									<dt class="comm-editor-card__dt">랜선 집들이 등록시</dt>
									<dd class="comm-editor-card__dd">
										2,000P<span class="comm-editor-card__dd_desc">(최초 등록시
											5,000P)</span>
									</dd>
								</dl>

								-->
							</div>

							<ul class="dot-list is-size-5">
								<li>간단한 자기 소개 후 집에 관한 이야기를 들려주세요.<strong>(집 공간 사진
										최소 3장)</strong></li>
								<li>도면이 있으면 좋아요.(손그림도 OK)</li>
								<li>사진 속 상품 정보를 본문에 반드시 적어주세요.(상품 카테고리/브랜드/상품명 순서)<br>
									- 예시 : 소파/리바트/그란디오소<br> 랜선집들이(블로그리뷰) 등록 시 소개글을 최소 100자 이상
									입력해주세요.
								</li>
								<li>정보를 많이 입력 할수록 검색 결과에 많이 노출되어 조회수가 올라갑니다.</li>
								<li>작성해주신 콘텐츠는 커뮤니티 에디터 검수를 통해 전시여부가 결정되며, 문서의 적정성 및 오탈자 등을
									검수하여 최대 3일내 온라인 출판될 예정입니다.</li>
								<li>필수조건(사진 수량, 상품 정보, 소개글) 미충족 시 승인이 거부될 수 있습니다.</li>
								<li>콘텐츠는 관리자에 의해 일부 수정될 수 있습니다.</li>
								<li>작성하신 후기는 마케팅 목적으로 편집 및 활용될 수 있으며, 등록시 이를 동의한 것으로 간주합니다.</li>
								<li>게시판 성격과 맞지 않는 콘텐츠는 미승인 처리 될 수 있으며, 주문, A/S, 컴플레인 등의
									게시글은 1:1문의 또는 고객의 소리 게시판을 이용해 주시기 바랍니다.</li>
								<li>랜선집들이와 고수의집들이 중복 게시 및 포인트 중복 지급은 불가하며, 등록된 콘텐츠는 커뮤니티
									에디터의 검수를 통해 랜선집들이/고수의집들이 간 이관 게시될 수 있습니다.</li>
							</ul>


						</div>
					</div>
				</div>
				<!-- //작성안내 -->

				<!-- 필수입력 -->





				<div class="comm-editor-card">
					<header class="comm-editor-card__header">
						<a href="#collapsible-card2" data-action="collapse"
							aria-label="more options" class="is-active">
							<h3 class="comm-editor__title">
								필수입력 <span class="is-danger">*</span>
							</h3>
							<p class="comm-editor__desc">공간 이해를 위한 필수 정보입니다. 최대한 잘 입력해
								주세요.</p> <span class="comm-editor-card__header-icon icon"> <i
								class="ico-down_arrow" aria-hidden="true"></i>
						</span>
						</a>
					</header>
					<div id="collapsible-card2" class="is-collapsible is-active"
						aria-expanded="true" style="">

						<div class="comm-editor-card__content">
							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd1">관심</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd1" id="filterVO.filtCd1">
														<option value="">선택해주세요.</option>


														<option value="가구">가구</option>



														<option value="홈스타일링">홈스타일링</option>



														<option value="토탈 리모델링">토탈 리모델링</option>



														<option value="부분 리모델링">부분 리모델링</option>


													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd2">주거형태</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd2" id="filterVO.filtCd2">
														<option value="">선택해주세요.</option>

														<option value="원룸/오피스텔">원룸/오피스텔</option>

														<option value="아파트">아파트</option>

														<option value="빌라/단독주택">빌라/단독주택</option>

														<option value="사무공간">사무공간</option>

														<option value="상업공간">상업공간</option>

														<option value="기타">기타</option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd3">공간</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd3" id="filterVO.filtCd3">
														<option value="">선택해주세요.</option>
														<option value="거실">거실</option>

														<option value="침실">침실</option>

														<option value="서재">서재</option>

														<option value="아이방">아이방</option>

														<option value="드레스룸">드레스룸</option>

														<option value="주방">주방</option>

														<option value="욕실">욕실</option>

														<option value="홈인테리어">홈인테리어</option>

														<option value="기타공간">기타공간</option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd4">평수</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd4" id="filterVO.filtCd4">
														<option value="">선택해주세요.</option>

														<option value="10평 이하">10평 이하</option>

														<option value="10평대">10평대</option>

														<option value="20평대">20평대</option>

														<option value="30평대">30평대</option>

														<option value="40평대">40평대</option>

														<option value="50평 이상">50평 이상</option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd5">예산</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd5" id="filterVO.filtCd5">
														<option value="">선택해주세요.</option>

														<option value="1백만원 이하">1백만원 이하</option>

														<option value="3백만원 이하">3백만원 이하</option>

														<option value="5백만원 이하">5백만원 이하</option>

														<option value="1천만원 이하">1천만원 이하</option>

														<option value="2천만원 이하">2천만원 이하</option>

														<option value="3천만원 이하">3천만원 이하</option>

														<option value="3천만원 이상">3천만원 이상</option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd6">스타일</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd6" id="filterVO.filtCd6">
														<option value="">선택해주세요.</option>

														<option value="모던">모던</option>

														<option value="미니멀">미니멀/심플</option>

														<option value="내추럴">내추럴</option>

														<option value="북유럽">북유럽</option>

														<option value="빈티지">빈티지</option>

														<option value="클래식">클래식</option>

														<option value="프렌치">프렌치</option>

														<option value="러블리">러블리</option>

														<option value="인더스트리얼">인더스트리얼</option>

														<option value="아시아">아시아</option>

														<option value="유니크/믹스매치">유니크/믹스매치</option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="field is-horizontal">
									<div class="field-label is-normal">
										<label class="label" for="filterVO.filtCd7">함께</label>
									</div>
									<div class="field-body">
										<div class="field">
											<div class="control">
												<div class="select">
													<select name="filterVO.filtCd7" id="filterVO.filtCd7">
														<option value="">선택해주세요.</option>

														<option value="싱글">싱글</option>

														<option value="신혼부부">신혼부부</option>

														<option value="아이와">아이와</option>

														<option value="자녀와">자녀와</option>

														<option value="부모님과">부모님과</option>

														<option value="동료와">동료와</option>

														<option value="반려동물과">반려동물과</option>

														<option value="기타">기타</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
				<!-- //필수입력 -->

				<!-- 사진 등록 -->
				<div class="comm-edt-wrap">
					<div class="comm-editor-body__image">
						<label for="photoRegist00" class="comm-editor-body__image__label"
							style="display: inline">
							<div class="inner">
								<span class="comm-editor-body__image-area"></span> <strong
									class="comm-editor__title">대표 사진을 등록해 주세요.</strong>
								<p class="comm-editor__desc">사진은 1개만 등록 할 수 있으며 10MB를 초과할 수
									없습니다.(JPG,PNG,GIF 가능)</p>
							</div> <input type="file" id="photoRegist00" name="mnImgPathFile"
							class="button item-photo-regist--button" accept="image/*">
							<input type="hidden" name="mnImgPath" value="">
						</label>

					</div>

				</div>

				<!-- 제목 입력 -->
				<div class="comm-editor-body__title">
					<input id="commtitle" class="input comm-title" maxlength="30"
						value="" name="titl" type="text" placeholder="제목을 입력해 주세요">
					<span class="max-title-txt count-txt">0/30</span>
				</div>

				<!-- S : 에디터 본문 -->
				<div id="comm-editor" class="sortable-wrap">
					<span id="nocontent" class="placeholder" style="display: inline;">내용을
						입력해 주세요.</span>

				</div>
				<!-- E : 에디터 본문 -->
			</div>
		</section>
		<!-- E : #container -->
		<input type="hidden" id="mainYn" name="mainYn" value="Y">
		<div>
			<input type="hidden" name="_csrf"
				value="4622aa5d-01b9-43fb-8dc0-1e5d7bdec81a">
		</div>
	</form>















	<!-- S : 팝업 상품 태그 추가 -->
	<div id="modal-comm-edt-tag" class="modal ">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">상품 태그 추가</p>
				<button type="button" class="delete is-large" aria-label="close"></button>
			</header>

			<div class="modal-card-tabs-container">
				<p class="modal-coupon-info">태그할 상품을 선택해 주세요.</p>
				<div class="field has-addons">
					<div class="control is-expanded">
						<input type="text" id="searchGoodsTxt" class="input is-fullwidth"
							placeholder="상품명이나 브랜드명을 입력해 주세요.">
					</div>
					<div class="control">
						<button type="button" id="searchGoodsBtn"
							class="button is-primary">조회</button>
					</div>
				</div>
				<div class="hash-tag-lists text-left"></div>
			</div>
			<div class="scroll-wrapper modal-card-body scrollbar-container mt1"
				style="position: relative;">
				<div
					class="modal-card-body scrollbar-container mt1 scroll-content scroll-scrollx_visible scroll-scrolly_visible"
					id="searchArea"
					style="height: auto; margin-bottom: 0px; margin-right: 0px;">







					<input type="hidden" name="kwd" value=""> <input
						type="hidden" name="pageNo" value="1"> <input
						type="hidden" name="pageSize" value="20"> <input
						type="hidden" name="totalCnt" value="">




				</div>
				<div
					class="scroll-element scroll-x scroll-scrollx_visible scroll-scrolly_visible">
					<div class="scroll-element_outer">
						<div class="scroll-element_size"></div>
						<div class="scroll-element_track"></div>
						<div class="scroll-bar" style="left: 0px;"></div>
					</div>
				</div>
				<div
					class="scroll-element scroll-y scroll-scrollx_visible scroll-scrolly_visible">
					<div class="scroll-element_outer">
						<div class="scroll-element_size"></div>
						<div class="scroll-element_track"></div>
						<div class="scroll-bar" style="top: 0px;"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- E : 팝업 상품 태그 추가 -->

	<!-- S : 팝업 상품 정보 -->
	<div id="modal-comm-edt-info" class="modal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">상품 정보</p>
				<button type="button" class="delete is-large" aria-label="close"></button>
			</header>

			<div class="modal-card-body"></div>
			<div class="modal-card-foot">

				<button type="button" class="button is-dark button-modal-close">취소</button>
				<button type="button"
					class="button is-primary button-comm-tag-delete">삭제</button>

			</div>
		</div>
	</div>
	<!-- E : 팝업 상품 정보 -->
	<!-- S : footer -->
	<footer class="comm-editor-footer">
		<label for="imageAdd0" class="button" id="insertEditorImage">
			<i class="icon2-comm-image"></i><span class="sr-only">이미지 추가</span>
		</label> <input type="file" id="imageAdd0" name="blbTplts[].imgPathFile"
			class="sr-only" accept="image/*">
		<button type="button" class="button" id="insertEditorYoutube">
			<i class="icon2-comm-youtube"></i><span class="sr-only">유튜브 추가</span>
		</button>
		<label for="videoAdd0" class="button" id="insertEditorVideo">
			<i class="icon2-comm-video"></i><span class="sr-only">동영상 추가</span>
		</label> <input type="file" id="videoAdd0" name="videofile" class="sr-only"
			accept="video/*">
		<button type="button" class="button" id="insertEditorLine">
			<i class="icon2-comm-line"></i><span class="sr-only">라인 추가</span>
		</button>
		<button type="button" class="button" id="insertEditorHead">
			<i class="icon2-comm-head"></i><span class="sr-only">제목 추가</span>
		</button>
		<button type="button" class="button" id="insertEditorText">
			<i class="icon2-comm-text"></i><span class="sr-only">본문 추가</span>
		</button>
	</footer>

	<form id="movieUploadForm" name="movieUploadForm" method="post"
		style="display: none" enctype="multipart/form-data"
		target="hiddenIframe">
		upload url : <span id="uploadurl"></span><br> gid : <input
			type="text" name="gid" id="gid"><br> token : <input
			type="text" name="token" id="token"><br> cid : <input
			type="text" name="cid" id="cid"><br> callback : <input
			type="text" name="callback" id="callback"
			value="https://www.hyundailivart.co.kr/api/movie/uploadCallback"><br>
		folder : <input type="text" name="folder" id="folder" value="2012081"><br>
		<br> pkg : <input type="text" name="pkg" id="pkg"><br>
		<br> title : <input type="text" name="title" id="title"><br>
		series : <input type="text" name="series" id="series"><br>
		author : <input type="text" name="author" id="author"><br>
		copyright : <input type="text" name="copyright" id="copyright"><br>
		rate : <input type="text" name="rate" id="rate"><br>
		content : <input type="text" name="content" id="content"><br>
		etc : <input type="text" name="etc" id="etc"><br> tag : <input
			type="text" name="tag" id="tag"><br> <br>
	</form>
	<iframe id="hiddenIframe" name="hiddenIframe" width="600px"
		height="200px" style="display: none"></iframe>
	<div class="loading-container main-loading-container"
		style="display: none">
		<div class="modal-background"></div>
		<div class="loading"></div>
		<div class="loading-text">0%</div>
	</div>

	<!-- E : footer -->
	<script type="text/javascript">
$(document).ready(function () {
/*
*/

INIT_DATA = $("form[name='community']").serialize();
$.eshopfront.community.setPosition();
$.eshopfront.community.fnFilter7();
if($("select[name='filterVO.filtCd7']").val() !== "" && $("select[name='filterVO.filtCd7']").val() !== "ALL"){
    $("select[name='filterVO.filtCd7']").trigger("change");
}

//상품태그 드래그 위치 이동 기능
$(".layer_position").draggable({
    containment : "parent",
    start : function(e){
        $(".d-goods-tag-cancel").click();
    },
    drag : function(e){
        $(this).css("opacity", '0.5');
    },
    stop : function(e){
        var mvRatio = $(this).siblings('.comm-edt__item__img')[0].width/$(this).siblings('.comm-edt__item__img')[0].naturalWidth;
        var mvOrgX = Math.round($(this).position().left / mvRatio);
        var mvOrgY = Math.round($(this).position().top / mvRatio);
        var id=$(this).attr('id');
        var tagId = id.substring(id.length-10);
        $("#tagDiv"+tagId).find("[id='xPnt']").val(mvOrgX);
        $("#tagDiv"+tagId).find("[id='yPnt']").val(mvOrgY);
        $(this).css("opacity", '');
    }
});

$("#nocontent").click(function(){
    $("#insertEditorText").trigger("click");
});




// S : 필수입력
// 사진등록 삭제
$(document).on('click', '.review-images-list .btn-del', function () {
    $(this).closest('li').hide();
    var name = $(this).siblings("img").attr("id").replace("-img","");
    $("#"+name).parent().show();
    //경로 초기화
    $("#"+$(this).siblings("img").attr("id")+"-path").val("");
    //파일 초기화
    if($.browser.msie){    //IE version
        $("#"+name).replaceWith($("#"+name).clone(true) );
    }else{    //other browser
        $("#"+name).val("");
    }
});
// select2 다중선택
$('.select2-item').select2();
$('.select2-search input').prop('focus', 0);
$(document).on('select2:open', '.select2-item', function () {
    $('.select2-search input').prop('focus', 0);
});
// E : 필수입력

// 제목 글자수 카운트
$(document).on('keyup', '#commtitle', function () {
    var content = $(this).val();
    $(this)
        .next()
        .html('' + content.length + '/30'); //글자수 실시간 카운팅
    if (content.length > 30) {
        alert('최대 30자까지 입력 가능합니다.');
        $(this).val(content.substring(0, 30));
        $(this).next().html('30/30');
        return;
    }
});

// S: 에디터 본문 관련
// 본문 요소 드래그 Sort
var commEditor = document.getElementById('comm-editor');
new Sortable(commEditor, {
    group: {
        name: 'shared',
        pull: 'clone',
    },
    handle: '.button-comm-edt-handle',
    animation: 100,
    filter: 'textarea',
    preventOnFilter: false,
});

// 제목, 본문, img alt 등  입력에 따라 textarea 높이 자동 조정
var textareaContent;
$(document).on('keydown, keyup', '.textarea-autosize', function () {
    $hiddenTextarea = $(this).closest('.comm-edt__item').find('.hidden-textarea');
    $(this).css({ resize: 'none', overflow: 'hidden' });
    var textareaContent = $(this).val();
    $hiddenTextarea.html(textareaContent);
    var hiddenTextareaH = $hiddenTextarea.height();
    if (hiddenTextareaH < 30) {
        hiddenTextareaH = 30;
    }
    $(this).height(hiddenTextareaH + 5);
});

/*
$(document).on('keydown keyup', '.textarea-autosize', function () {
    $(this)
        .height(1)
        .height($(this).prop('scrollHeight') + 5);
});
 */
// 이미지 위에 마커 표시
function tagOnImage(el, x, y) {
    var coords = 'X coords: ' + x + ', Y coords: ' + y;
    //원본 이미지 포인트 계산
    var ratio = $(el)[0].width/$(el)[0].naturalWidth;
    var orgX = Math.round(x / ratio);
    var orgY = Math.round(y / ratio);
    el.after('<span class="layer_position" id="tagSpanId'+(tagSpanCnt)+'"' +
            'data-org-x="'+orgX+'" data-org-y="'+orgY+'" '+
            'style="left:' + x + 'px; top:' + y + 'px;"><i class="ico-plus"></i></span>');
    $(".layer_position").draggable({
        containment : "parent",
        start : function(e){
            $(".d-goods-tag-cancel").click();
        },
        drag : function(e){
            $(this).css("opacity", '0.5');
        },
        stop : function(e){
            var mvRatio = $(el)[0].width/$(el)[0].naturalWidth;
            var mvOrgX = Math.round($(this).position().left / mvRatio);
            var mvOrgY = Math.round($(this).position().top / mvRatio);
            var id=$(this).attr('id');
            var cnt = id.substring(id.length-1);
            $("#tagDiv"+cnt).find("[id='xPnt']").val(mvOrgX);
            $("#tagDiv"+cnt).find("[id='yPnt']").val(mvOrgY);
            $(this).css("opacity", '');
        }
    });
    return {orgX : orgX , orgY : orgY};
}
var tagImageX;
var tagImageY;
var tagImage;
var tagSpanCnt = 0;
$(document).on('click', '.comm-edt__item__img', function (event) {
    tagImage = $(this);
    tagImageX = event.offsetX - 20;
    tagImageY = event.offsetY - 20;
    console.log(tagImageX);
    $('#modal-comm-edt-tag .hash-tag-lists').html(makeKeywordButton());
    $('#modal-comm-edt-tag').addClass('is-active');
    //레이어팝업 초기화
    $("#searchGoodsTxt").val("");
    $("#searchArea ul").remove();
    $("#searchArea div").remove();
    $("[name='url']").val("");
    $("input[name='pageNo']").val(1);
    $.eshopfront.community.cmmtSearchGoods("","order");
    $('html').addClass('is-clipped');
})
.on('click', '.button-tag-select', function (event) {
    // 태그 추가 팝업 에서 선택하기, URL 입력 클릭시
    $('#modal-comm-edt-tag').removeClass('is-active');
    $('html').removeClass('is-clipped');
    var data = tagOnImage(tagImage, tagImageX, tagImageY);
    tagImage.closest(".comm-edt-wrap").find(".d-hidden")
        .append("<div class='d-tags' id='tagDiv"+tagSpanCnt+"'></div>");
    tagImage.closest(".comm-edt-wrap").find(".d-hidden .d-tags:last").append("<input type='hidden' " +
            "name='blbTplts[].tags[].blbImgTagSn' value=''/>");
    tagImage.closest(".comm-edt-wrap").find(".d-hidden .d-tags:last").append("<input type='hidden' " +
            "name='blbTplts[].tags[].xPnt' id='xPnt' value='"+data.orgX+"'/>");
    tagImage.closest(".comm-edt-wrap").find(".d-hidden .d-tags:last").append("<input type='hidden' " +
            "name='blbTplts[].tags[].yPnt' id='yPnt' value='"+data.orgY+"'/>");
    if($("[name='url']").length === 0){
        var $li = $(this).closest("li").clone();
        $li.find("div:last").remove();
        tagImage.closest(".comm-edt-wrap").find(".d-hidden .d-tags:last").append("<input type='hidden' " +
            "name='blbTplts[].tags[].goodsSn' value='"+$(this).data("goods_sn")+"'/>");
        $("#modal-comm-edt-info .modal-card-body").append("<div class='items-info-wrap mt2' data-spanid='tagSpanId"+tagSpanCnt+"'>" +
                 $li.html() +
            "</div>");
    }else{
        tagImage.closest(".comm-edt-wrap").find(".d-hidden .d-tags:last").append("<input type='hidden' " +
            "name='blbTplts[].tags[].goodsLkUrl' value='"+$("[name='url']").val()+"'/>");
        console.log($("#moal-comm-edt-info .modal-card-body"))
        $("#modal-comm-edt-info .modal-card-body").append("<div class='items-info-wrap mt2' data-spanid='tagSpanId"+tagSpanCnt+"'>" +
            '<div class="section-contents-item mr2">'+
            '   <p class="section-contents-item__name">'+
            '       <a href=javascript:;">'+$("[name='url']").val()+'</a>'+
            '   </p>'+
            '</div>'+
            "</div>");
    }
    tagSpanCnt++;
});

// 태그 스팟 클릭
$(document).on('click', '.layer_position', function () {
    var le = $(this).css('left');
    var to = $(this).css('top');
    $('#modal-comm-edt-info').addClass('is-active');
    $("#modal-comm-edt-info .modal-card-body>div").hide();

    $('#modal-comm-edt-info .modal-card-body div[data-spanid="'+$(this).attr("id")+'"]').show();
    $('html').addClass('is-clipped');
});
// 이미지, 비디오, 제목 등 입력 버튼 클릭시 기본 안내 placeholder를 숨김/해제
$(document).on('click', '.comm-editor-footer .button', function () {
    $('.placeholder').hide();
})
// 에디터 본문 내 추가요소 삭제 버튼
.on('click', '#comm-editor .button-delete', function () {
    //삭제 데이터 수집
    $(this).closest('.comm-edt-wrap').remove();
    if ($('#comm-editor .comm-edt-wrap').length < 1) {
        $('#comm-editor').find('.placeholder').show();
    }
    var blbDataSn = ""
    if($(this).hasClass("b-youtube")){
        blbDataSn = $(this).prev().find("[name*='blbDataSn']").val();
    } else {
        blbDataSn = $(this).siblings(".d-hidden").find("[name*='blbDataSn']").val();
    }

    if(blbDataSn !== "" && blbDataSn !== undefined){
        $("form[name='community']").append("<input type='hidden' name='delDatas' value='"+blbDataSn+"'/>");
    }
});

$("[name='mnImgPathFile']").change(function () {
    $thisWrap = $(this).closest('.comm-edt-wrap');
    if($(this).val()!=''){
        if(this.files[0].size > (1024 * 1024 * 10)){
            $.eshopfront.cmm.alert({
                content : "10MB를 초과할 수 없습니다.",
                btn: {
                    cancel: false,
                  },
            });
            $(this).val("");
            return;
        }
        var ext = this.files[0].name.split('.').pop().toLowerCase();
        if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1){
            $.eshopfront.cmm.alert({
                content : "JPG, JPEG, PNG, GIF 만 등록 가능합니다.",
                btn: {
                    cancel: false,
                  },
            });
            $(this).val("");
            return;
        }
        var insertHtml = '<img src="" alt="" class="comm-editor-body__image-img" id="commEdtBodyImg"/>';
        var insertHtml1 = '<button type="button" class="button-delete comm-editor-body__image-del"><span class="sr-only">삭제</span></button>';
        $thisWrap.find('.comm-editor-body__image').append(insertHtml);
        $thisWrap.append(insertHtml1);
        readURL(this, '#commEdtBodyImg');
        $('.comm-editor-body__image__label').hide();
    }
});
$(document)
.on('click', '.comm-editor-body__image-del', function () {
    // 대표 이미지 삭제
    $thisWrap = $(this).closest('.comm-edt-wrap');
    $thisWrap.find('.comm-editor-body__image-img').remove();
    $thisWrap.find('.button-delete').remove();
    $thisWrap.find('.comm-editor-body__image__label').show();

    //메인 이미지 데이터
    $("[name='mnImgPath']").val("");
    if($.browser.msie){    //IE version
        $("[name='mnImgPathFile']").replaceWith($("#"+name).clone(true) );
    }else{    //other browser
        $("[name='mnImgPathFile']").val("");
    }
});
    // 이미지, 비디오, 제목 등 입력 버튼 클릭시 동작 정의
// 에디터 이미지 추가시 이미지 업로드
var commEdtImgAddNo = Number("0");
var commEdtVideoAddNo = Number("0");
function readURL(input, imgId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $(imgId).attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    }
}
$(document).on('click', '#insertEditorImage', function (e) {
    var target = $(this).attr('for');
    $('#' + target).unbind().bind("change",function () {
        if(this.files[0].size > (1024 * 1024 * 10)){
            $.eshopfront.cmm.alert({
                content : "10MB를 초과할 수 없습니다.",
                btn: {
                    cancel: false,
                  },
            });
            $(this).val("");
            return;
        }
        var ext = this.files[0].name.split('.').pop().toLowerCase();
        if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1){
            $.eshopfront.cmm.alert({
                content : "JPG, JPEG, PNG, GIF 만 등록 가능합니다.",
                btn: {
                    cancel: false,
                  },
            });
            $(this).val("");
            return;
        }

        var insertHtml = '<div  class="comm-edt-wrap"><div class="comm-edt__item sortable-item"><div class="image-wrap">';
        insertHtml += '<img src="" alt="" class="comm-edt__item__img" id="commEdtItemImg' + commEdtImgAddNo + '"/>';
        insertHtml += '<span class="image-wrap-desc">태그할 상품을 선택하세요.</span></div>';
        insertHtml += '<textarea class="comm-edt__alt textarea-autosize" name="blbTplts[].imgSbstTxt" placeholder="이미지 캡션 (본문은 하단의 본문 아이콘을 추가 후 입력해주세요)"></textarea><div class="hidden-textarea"></div></div>';
        //insertHtml += '<textarea class="comm-edt__alt textarea-autosize" name="blbTplts[].imgSbstTxt" placeholder="이미지 캡션 (본문은 하단의 본문 아이콘을 추가 후 입력해주세요)"></textarea></div>';
        insertHtml += '<div class="d-hidden">'
            + '<input type="hidden" name="blbTplts[].blbDataSn" />'
            + '<input type="hidden" name="blbTplts[].blbDataType" value=\'imageTag\' />'
            +'</div>';
        insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
                    insertHtml += '<span class="button-comm-edt-handle"><i class="ico-move-handle"></i><span class="sr-only">이동</span></span></div>';
        $('#comm-editor').append(insertHtml);
        $("#comm-editor .d-hidden:last").append($("#imageAdd" + commEdtImgAddNo));//위치를 이동해야 순서대로 저장
        readURL(this, '#commEdtItemImg' + commEdtImgAddNo);
        var $this = $('#comm-editor').find('.comm-edt__alt:last');
        $this
            .focus()
            .height(1)
            .height($this.prop('scrollHeight') + 5);
        // 성공 후 이미지 추가 버튼에 input 필드 추가 label 과도 동기화
        commEdtImgAddNo += 1;
        $('#insertEditorImage')
            .attr('for', 'imageAdd' + commEdtImgAddNo)
            .after('<input type="file" id="imageAdd' + commEdtImgAddNo + '" name="blbTplts[].imgPathFile"  class="sr-only" accept="image/*">');
        $.eshopfront.community.scrollDown();
    });
})
.on('click', '#insertEditorYoutube', function (e) {
    e.preventDefault();
    var insertHtml = '<div class="comm-edt-wrap"><div class="comm-edt__item sortable-item sortable-item__youtube">';
    insertHtml += '<input type="text" class="input comm-edt__youtube" placeholder="URL을 입력해 주세요. 예)https://www.youtube.com/watch?v=abcd"></input>';
    insertHtml += '<button type="button" class="button is-danger button-add-youtube">Youtube 추가</button></div>';
    insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
    insertHtml += '<span class="button-comm-edt-handle"><i class="ico-move-handle"></i><span class="sr-only">이동</span></span></div>';
    $('#comm-editor').append(insertHtml).find('.comm-edt__head:last').focus();
    $.eshopfront.community.scrollDown();
})
.on('click', '.button-add-youtube', function (e) {
    // 유튜브 추가 버튼 클릭시
    e.preventDefault();
    var valUrlArray = $(this).closest('.sortable-item').find('.comm-edt__youtube').val().split('?v=');
    if(valUrlArray.length != 2){
        valUrlArray = $(this).closest('.sortable-item').find('.comm-edt__youtube').val().split('https://youtu.be/');
        if(valUrlArray.length != 2){
            alert("유튜브 URL을 올바르게 입력하세요");
            return false;
        }
    }else{
        if(valUrlArray[0] != "https://www.youtube.com/watch"){
            alert("유튜브 URL을 올바르게 입력하세요");
            return false;
        }
    }
    var insertHtml =
        '<div class="embed-container"><iframe width="560" height="315" src="https://www.youtube.com/embed/' +
        valUrlArray[1] +
        '?rel=0&modestbranding=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>';
    insertHtml += '<div class="d-hidden">'
            + '<input type="hidden" name="blbTplts[].blbDataSn" />'
            + '<input type="hidden" name="blbTplts[].blbDataType" value=\'youtube\' />'
            + '<input type="hidden" name="blbTplts[].animPath" value="'+valUrlArray[1]+'" />'
            +'</div>';
    insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
    $(this).closest('.sortable-item').empty().append(insertHtml);
    $.eshopfront.community.scrollDown();
})
.on('click', '#insertEditorVideo', function (e) {


    var target = $(this).attr('for');
    $('#' + target).unbind().bind("change",function () {
        //ajax 먼저 실행














        $("#movieUploadForm").find("[name='videofile']").remove();
        $("#movieUploadForm").append($("[name='videofile']:last"));
        $.eshopfront.community.movUpload.token(commEdtVideoAddNo);
    });
})
.on('click', '#insertEditorLine', function (e) {
    e.preventDefault();
    var insertHtml = '<div class="comm-edt-wrap"><div class="comm-edt__item sortable-item"><hr class="line"></div>';
    insertHtml += '<div class="d-hidden">'
            + '<input type="hidden" name="blbTplts[].blbDataSn" />'
            + '<input type="hidden" name="blbTplts[].blbDataType" value=\'hr\' />'
            +'</div>';
    insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
    insertHtml += '<span class="button-comm-edt-handle"><i class="ico-move-handle"></i><span class="sr-only">이동</span></span></div>';
    $('#comm-editor').append(insertHtml);
    $.eshopfront.community.scrollDown();
})
.on('click', '#insertEditorHead', function (e) {
    e.preventDefault();
    var insertHtml = '<div class="comm-edt-wrap"><div class="comm-edt__item sortable-item">';
    insertHtml += '<textarea name="blbTplts[].txt" class="comm-edt__head textarea-autosize" placeholder="추가 제목 입력"></textarea><div class="hidden-textarea"></div></div>';
    //insertHtml += '<textarea name="blbTplts[].txt" class="comm-edt__head textarea-autosize" placeholder="추가 제목 입력"></textarea></div>';
    insertHtml += '<div class="d-hidden">'
            + '<input type="hidden" name="blbTplts[].blbDataSn" />'
            + '<input type="hidden" name="blbTplts[].blbDataType" value=\'txt\' />'
            +'</div>';
    insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
    insertHtml += '<span class="button-comm-edt-handle"><i class="ico-move-handle"></i><span class="sr-only">이동</span></span></div>';
    $('#comm-editor').append(insertHtml);
    var $this = $('#comm-editor').find('.comm-edt__head:last');
    $this
        .focus()
        .height(1)
        .height($this.prop('scrollHeight') + 5);
    $.eshopfront.community.scrollDown();
})
.on('click', '#insertEditorText', function (e) {
    e.preventDefault();
    var insertHtml = '<div class="comm-edt-wrap"><div class="comm-edt__item sortable-item">';
    insertHtml += '<textarea name="blbTplts[].txt" class="comm-edt__text textarea-autosize" placeholder="추가 본문 입력"></textarea><div class="hidden-textarea"></div></div>';
    //insertHtml += '<textarea name="blbTplts[].txt" class="comm-edt__text textarea-autosize" placeholder="추가 본문 입력"></textarea></div>';
    insertHtml += '<div class="d-hidden">'
            + '<input type="hidden" name="blbTplts[].blbDataSn" />'
            + '<input type="hidden" name="blbTplts[].blbDataType" value=\'editor\' />'
            +'</div>';
    insertHtml += '<button type="button" class="button-delete"><span class="sr-only">삭제</span></button>';
    insertHtml += '<span class="button-comm-edt-handle"><i class="ico-move-handle"></i><span class="sr-only">이동</span></span></div>';
    $('#comm-editor').append(insertHtml);
    var $this = $('#comm-editor').find('.comm-edt__text:last');
    $this
        .focus()
        .height(1)
        .height($this.prop('scrollHeight') + 5);
    $.eshopfront.community.scrollDown();
})
.on("click", ".hash-tag__name", function(){
    $("input[name='pageNo']").val(1);
    $.eshopfront.community.cmmtSearchGoods($(this).val(),'search');
});

// 커스텀 스크롤
$('.scrollbar-container').scrollbar();
$(window).resize(function () {
    // 커스텀 스크롤
    $('.scrollbar-container').scrollbar();
    $.eshopfront.community.setPosition();
});

// E: 에디터 본문 관련
//필수 사진
$(document).on("change","#d-export,#d-before,#d-after", function () {
    $("#"+$(this).attr("id")+"-img").closest("li").show();
    readURL(this, "#"+$(this).attr("id")+"-img");
    $("."+$(this).attr("id")).hide();
});


//임시저장//필수체크 안함
$("#tempSave").click(function(){
    $.eshopfront.community.setOrder();
    $("[name='note1']").val("Y");
    $("#mainYn").val("N");
    $(".loading-container").show();
    $(".loading-container .loading-text").hide();
    $("form[name='community']").submit();
});

//로고 클릭시
$(document).on("click",".comm-editor-header__logo--main,.comm-editor-header__logo--title",function(e){
    //임시 컨텐츠 일때
    if($("[name=blbSn]").val() === "" || $("[name=note1]").val()==="Y" ){
        if(INIT_DATA !== $("form[name='community']").serialize()){
            if(confirm("작성 중인 내용이 있습니다. 저장하시겠습니까?")){
               e.preventDefault();
               $.eshopfront.community.setOrder();
               $("[name='note1']").val("Y");
               $("form[name='community']").submit();
           }
       }
   }
});
//모바일 클릭
$(document).on("click","#header button.button-back",function(e){
    e.preventDefault();
    if(INIT_DATA !== $("form[name='community']").serialize()){
        if(confirm("작성 중인 내용이 있습니다. 저장하시겠습니까?")){
            e.preventDefault();
            $.eshopfront.community.setOrder();
            $("[name='note1']").val("Y");
            $("form[name='community']").submit();
        }
    }else{
        $(location).attr("href","/community");
    }
});


$("#searchGoodsBtn").on('click', function(e){
    e.preventDefault();
    var kwd = $("#searchGoodsTxt").val();
    if(kwd === ""){
        alert("검색어를 입력하세요.");
        return false;
    }else{
        $("input[name='pageNo']").val(1);
         $.eshopfront.community.cmmtSearchGoods(kwd,'search');
         dealWithKeyword(kwd);
    }
});

$("#searchGoodsTxt").on("keyup",function (event) {
    if (event.keyCode == 13){
        var kwd = $("#searchGoodsTxt").val();
        if(kwd == ""){
            alert("검색어를 입력하세요.");
                return false;
        }else{
             $("input[name='pageNo']").val(1);
             $.eshopfront.community.cmmtSearchGoods(kwd,'search');
             dealWithKeyword(kwd);
        }
    }
});
//상품검색창 더보기 버튼
$(document).on('click',"#addBtn", function(e){
    $("input[name='pageNo']").val(parseInt($("input[name='pageNo']").val())+1);
    var kwd = $("input[name='kwd']").val();
    if(kwd === ""){//키워드 없이 더보기는 기본 주문 정보임
        $.eshopfront.community.cmmtSearchGoods('','order');
    }else{
        $.eshopfront.community.cmmtSearchGoods(kwd,'search');
    }


});
//태그삭제
$(document).on('click',".button-comm-tag-delete",function(){
    var $obj= $(this).closest(".modal").find(".items-info-wrap:visible");
    var id = $obj.data("spanid");
    $("#"+id).remove();
    $("#"+id.replace("tagSpanId","tagDiv")).remove();
    $obj.remove();
    $("#modal-comm-edt-info").removeClass("is-active");
});

});
var keywordArr = [];
function dealWithKeyword(kwd){
if(keywordArr.indexOf(kwd) >= 0){
    return;
}
if(keywordArr.length === 5){
    keywordArr.shift(); // 첫번째 원소 제거
}
keywordArr.push(kwd);
keywordArr = keywordArr.filter(function(a, i, self){
    return self.indexOf(a) === i;
});
}

function makeKeywordButton(){
var html = ""
if(keywordArr.length > 0){
    $.each(keywordArr, function(){
        html += "<button type='button' class='hash-tag__name' value='"+this+"'>"+"#"+this+"</button>"
    })
}
return html;
}

function previewPopup(view, media) {

$.eshopfront.community.setOrder();
$("[name='note1']").val("YY");
$("#mainYn").val("N");
$(".loading-container").show();
$(".loading-container .loading-text").hide();
$("form[name='community']").submit();

}


</script>


	<script
		src="https://static.hyundailivart.co.kr/assets/js/js.cookie-2.2.1.min.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/js/jquery.scrollbar.min.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/js/popper.min.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/js/bootstrap-tooltip.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/js/sortable.min.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/js/select2.min.js"></script>
	<script src="https://static.hyundailivart.co.kr/assets/js/common-ui.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/duijs/eshopfront.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/duijs/eshopfrontCommon.js"></script>
	<script
		src="https://static.hyundailivart.co.kr/assets/duijs/eshopfrontCommunity.js?20210322"></script>


	<div
		style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;">
		<div
			style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div>
	</div>
	<iframe style="display: none;"></iframe>

</body>

</html>