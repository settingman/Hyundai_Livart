<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
String cm = request.getParameter("command");
%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
String color = (String) session.getAttribute("color");
%>

<!-- 작성자 : 이진후 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<%@ include file="../../static/header.jsp"%>

	<!-- 로케이션 header -->

	<div class="location-header">

		<div class="container">
			<nav class="breadcrumb" aria-label="breadcrumb">
				<h3 class="sr-only">현재 위치 로케이션</h3>
				<ol>
					<li class="home"><a href="./main.jsp"><i class="icon-home"></i></a>
					</li>
					<li>
						<div class="dropdown">
							<div class="dropdown-trigger">
								<button class="button" aria-haspopup="true"
									aria-controls="dropdown-breadcrumb1">
									<span>거실</span> <span class="icon is-small"><i
										class="icon-down"></i></span>
								</button>
							</div>
						</div>
					</li>
					<li>
						<div class="dropdown">
							<div class="dropdown-trigger">
								<button class="button" aria-haspopup="true"
									aria-controls="dropdown-breadcrumb2">
									<span>거실장</span> <span class="icon is-small"><i
										class="icon-down"></i></span>
								</button>
							</div>

						</div>
					</li>
				</ol>
			</nav>

		</div>
	</div>


	<!-- 사이드 바 ------------------------------ -->
	<div class="container">
		<div class="section-category-contents section-contents-wrap clear">
			<aside class="left-menu section-category-left float-left">
				<section class="left-menu-section">
					<a href="#collapsible-panel1" data-action="collapse"
						class="is-active">
						<h3 class="panel-heading">
							카테고리<i></i>
						</h3>
					</a>
					<div id="collapsible-panel1" class="is-collapsible is-active"
						aria-expanded="true" style="">
						<!-- LNB 카테고리 -->
						<nav class="lnb" role="navigation">
							<ul class="lnb-list">
								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000413"> 가죽소파 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>



								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000414"> 패브릭소파 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>



								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000415"> 리클라이너소파 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>


								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000416"> 거실장 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>



								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000417"> 소가구 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>


								<li class="lnb-list-item"><span class="lnb-list-item__head">
										<a data-cate="C300000418"> 기타소파 </a>
										<button class="lnb-list-item__btn">
											<i class="ico-down_arrow"></i>
										</button>
								</span>
									<div class="lnb-list-item__content" aria-expanded="false"
										style="display: none;"></div></li>
							</ul>
						</nav>
						<!-- //Accordion -->
					</div>
				</section>

			</aside>
			<!-- 상품 메인 부분------------------------------------------------------------------- -->
			<div class="section-category-right contents-items-wrap float-right">
				
				<section class="section-category-item section-category-item-filter">
					<input id="cateMallType" type="hidden" value="">
				</section>

				<section class="section-category-item section-category-item-search">
					
					<p class="section-category-item__search--info">
						<span class="is-danger"> ${count}</span>개의 상품이 있습니다.
						<!-- 쿼리 -->
					</p>
				</section>
				<div class="detail-search p-data">
					<input type="hidden" name="sortBy" value="qty"> <input
						type="hidden" name="pageNo" value="1"> <input
						type="hidden" name="pageSize" value="40"> <input
						type="hidden" name="catDept" value="3"> <input
						type="hidden" name="catSn" value="C300000430"> <input
						type="hidden" name="totalCnt" value="654"> <input
						type="hidden" name="filterMinPrice" value="29900"> <input
						type="hidden" name="filterMaxPrice" value="3250000"> <input
						type="hidden" name="minPrice" value="" data-valid-price="true">
					<input type="hidden" name="maxPrice" value=""
						data-valid-price="true">
					<section class="section-category-item">


						<div class="ajaxex">
							<div class="section-category-item__search is-flex tab-block">
								<div class="left-contents is-flex">
									<!-- 	<a class="link tab-block-item is-active" data-val="qty" href="javascript:;">추천순</a>  -->
									<a class="link tab-block-item " data-val="new"
										href="javascript:newpoductlist();">신상품순</a> <a
										class="link tab-block-item " data-val="low"
										href="javascript:lowpricelist();">낮은가격순</a> <a
										class="link tab-block-item " data-val="high"
										href="javascript:highpricelist();">높은가격순</a>
									<!--<a class="link tab-block-item "  data-val="review" href="javascript:;">리뷰많은순</a>-->
									<!-- <a class="link tab-block-item " data-val="score" href="javascript:;">평점높은순</a> -->
								</div>

								<div class="right-contents dropdown-wrap">
									<div class="dropdown">
										<div class="dropdown-trigger">
											<button class="button" aria-haspopup="true"
												aria-controls="dropdown-menu">
												<span>40개</span> <span class="icon is-small"><i
													class="ico-down_arrow"></i></span>
											</button>
										</div>
										<div class="dropdown-menu" id="dropdown-menu3" role="menu">
											<div class="dropdown-content">
												<button type="button" class="dropdown-item" data-val="40">40개</button>
												<button type="button" class="dropdown-item" data-val="60">60개</button>
												<button type="button" class="dropdown-item" data-val="80">80개</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<c:choose>
								<c:when test="${empty productList }">
									<tr>
										<td colspan=5><b>등록된 회원 없음</b></td>
									</tr>
								</c:when>
								<c:when test="${!empty productList }">


									<!-- <div class="ajaxex"> -->
									<ul class="section-category-item__search--list">
										<c:forEach var="mem" items="${productList }">

											<li>
												<div class="product-item product-item--small ">
													<input type="hidden" class="criteo-goodsSn"
														value="P100025656">
													<div class="product-item-image">
														<a href="/livart/productdetail?p_id=${mem.p_id }"> <!-- 장바구니/바로구매 버튼 -->
															<img class="image" id="P100025656"
															alt="무드 모던 2400 거실장 (4색)" src="${mem.photo_url }">

														</a>
													</div>
													<div class="product-item-content">
														<div class="product-item-header">
															<span class="product-item-header__brand">리바트온라인</span> <a
																href="/livart/productdetail?&p_id=${mem.p_id }"
																class="product-item-header__name">${mem.p_name }</a>
														</div>
														<span class="product-item-price">
															<div class="product-item-price__discount">
																${mem.p_discount }<span class="unit">%</span>
															</div>
															<div class="product-item-price__price--wrap">



																<del class="product-item-price__price--del">

																	<fmt:formatNumber value="${mem.p_price }" type="number" />
																	<span class="unit">원</span>

																</del>



																<span class="product-item-price__price"><fmt:formatNumber
																		value="${ mem.p_price - (mem.p_price * (mem.p_discount / 100))}"
																		type="number" /><span class="unit">원</span></span>



															</div>
														</span>
														

													</div>
												</div> <script type="text/javascript">
													$(
															".product-item-tag__kinds")
															.off('click')
															.on(
																	"click",
																	function(e) {
																		e
																				.preventDefault();
																		var optImg = "#"
																				+ $(
																						this)
																						.closest(
																								'div')
																						.data(
																								"cmposn")
																				+ $(
																						this)
																						.closest(
																								'div')
																						.data(
																								"sn");
																		var typeWidth = 250;
																		$
																				.ajax({
																					url : "/selectGoodsOptMainImg",
																					type : "get",
																					data : {
																						"goodsSn" : $(
																								this)
																								.closest(
																										'div')
																								.data(
																										"sn"),
																						"optMainImgCnt" : $(
																								this)
																								.closest(
																										'a')
																								.data(
																										"cnt"),
																						"typeWidth" : typeWidth
																					},
																					success : function(
																							result) {
																						$(
																								optImg)
																								.attr(
																										'src',
																										result);
																					}
																				});
																	});
												</script>


											</li>



										</c:forEach>
									</ul>
						</div>

						</c:when>
						</c:choose>
					</section>
				</div>
			</div>




		</div>

	</div>
	<script>
		var newpoductlist = function(url) {
			$
					.ajax({
						type : 'get',
						url : "/livart/sort?p_id=living&command=date",//최신순 호출 url
						data : "",

						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						success : function(data) {
							/* console.log(data);
							$('.ajaxex').html(data); */
							$('.ajaxex')// 태그중 ajaxex 클래스에만 결과 조회 로드
									.load(
											"/livart/sort?p_id=living&command=date .ajaxex");
						},
						error : function(request, status, error) {
							alert();
						}
					});
		};
	</script>
	<script>
		var lowpricelist = function(url) {
			$
					.ajax({
						type : 'get',
						url : "/livart/sort?p_id=living&command=low",//낮은 가격순 호출 url
						data : "",

						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						success : function(data) {
							/* console.log(data);
							$('.ajaxex').html(data); */
							$('.ajaxex')// 태그중 ajaxex 클래스에만 결과 조회 로드
									.load(
											"/livart/sort?p_id=living&command=low .ajaxex");

						},
						error : function(request, status, error) {
							alert();
						}
					});
		};
	</script>
	<script>
		var highpricelist = function(url) {
			$
					.ajax({
						type : 'get',
						url : "/livart/sort?p_id=living&command=high",//높은 가격순 호출 url
						data : "",

						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						success : function(data) {
							/* console.log(data);
							$('.ajaxex').html(data); */
							$('.ajaxex')// 태그중 ajaxex 클래스에만 결과 조회 로드
									.load(
											"/livart/sort?p_id=living&command=high .ajaxex");
						},
						error : function(request, status, error) {
							alert();
						}
					});
		};
	</script>

</body>
</html>