<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../static/header.jsp"%>
	<section id="main-bestD100000164" class="section-main">
		<div class="section-title-wrap">
			<h3 class="section-title">어떤 상품을 재 구매 했을까?, 베스트</h3>

		</div>
		<div id="d-listD100000164">
			<div class="tab-block">
				<div class="inner container"></div>
			</div>
			<!-- //tab-block 제목 -->

			<div class="container">
				<ul class="product-item-medium-lists">
				
	<c:forEach var="item"  items="${rebuyRankList }" varStatus="status">
					<li class="product-item--medium">


						<div class="product-item product-item--medium ">

							<input type="hidden" class="criteo-goodsSn" value="P200106872">


							<div class="product-item-image">
								<a href="/p/P200106872?pagecode=D100000164"> <!-- 장바구니/바로구매 버튼 -->

									<div class="product-item-button-wrap">
										<button type="button"
											class="product-item-button__button product-item-button__button--cart"
											onclick="$.eshopfront.goods.getExtra('quickAction').call(this, 'addcart', 'P200106872', '02');">
											<div class="icon-wrap">
												<i class="icon-item_cart"></i>
											</div>
											<span>장바구니</span>
										</button>
										<button type="button"
											class="product-item-button__button product-item-button__button--buy modal-button"
											aria-haspopup="true" data-target="modal-guestOrder"
											onclick="$.eshopfront.goods.getExtra('anonymous').call(this, 'P200106872', '02', '1', '');">
											<div class="icon-wrap">
												<i class="icon-item_buy"></i>
											</div>
											<span>바로구매</span>
										</button>
									</div> <img class="image" id="D100000164P200106872"
									alt="모인 포근소파 4인 카우치형"
									src="${item.photo_url }">


									<div class="number-box medium black">
										<span class="number">${status.count}</span>
									</div>


								<script>
									let m = 1;
								     let i = $(".number");
								     i.val(m);
								     
								</script>

								</a>
							</div>


							<div class="product-item-content">
								<div class="product-item-header">



									<span class="product-item-header__brand">리바트온라인</span> <a
										href="/p/P200106872?pagecode=D100000164"
										class="product-item-header__name">${item.p_name }</a>


								</div>
								<span class="product-item-price">
									<div class="product-item-price__discount">


										${item.p_discount }<span class="unit">%</span>



									</div>
									
									
					
									<div class="product-item-price__price--wrap">



										<del class="product-item-price__price--del">

											<fmt:formatNumber
																		value="${item.p_price }"
																		type="number" /><span class="unit">원</span>

										</del>



										<span class="product-item-price__price"><fmt:formatNumber
																		value="${ item.p_price - (item.p_price * (item.p_discount / 100))}"
																		type="number" /><span
											class="unit">원</span></span>





									</div>
								</span>
								<div class="product-item-category clear">
									<div class="product-item-tag fl">






										<span
											class="product-item-tag__item product-item-tag__item--red">BEST</span>




									</div>
									<div class="product-review-stats-area fr">


										<!-- 별점 -->
										<span class="stats-rate-wrap"> <span class="icon-star1"></span>
											<span class="stats-rate__num">5.0</span>

										</span>
									</div>
								</div>

							</div>
						</div>


					</li>
		</c:forEach>
					
				</ul>
				<!-- E : product items box -->
			</div>

		</div>
		<div class="loading-container">
			<!-- <div class="modal-background"></div> -->
			<div class="loading"></div>
		</div>
	</section>
	<%@ include file="../../static/footer.jsp"%>
</body>
</html>