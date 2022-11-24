<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
<%@ include file="header.jsp" %>

  <div class="container">
    <div class="section-contents-wrap">
      <h1 class="title">장바구니</h1>
    </div>
    <c:choose>
<c:when test="${!empty cartItemList }">

    <!-- 장바구니에 상품이 들어있을 경우-->
    <section class="section-contents-table is-interval cartListSection">
      <div class="section-contents-table__button--wrap is-liner is-flex">
        <button class="button is-primary is-outlined is-small removeCartAll">전체삭제</button>
        <button class="button is-small removeCartChecked">선택삭제</button>
        <button class="button is-small removeCartStopSale">구매불가삭제</button>
      </div>

      <h4 class="title is-4 is-normal section-contents-table__table--total is-liner">
				리바트몰 직접 배송 상품 (<span>2</span>)
			</h4>

      <table class="section-contents-table__table check__group">
        <caption> 리바트몰 직접 배송 상품</caption>
        <colgroup>
					<col style="width: 50px">
					<col style="width: 160px">
					<col>
					<col style="width: 140px">
					<col style="width: 135px">
					<col style="width: 160px">
					<col style="width: 160px">
					<col style="width: 130px">
					<col style="width: 150px">
				</colgroup>
        <thead>
					<tr>
						<th align="" scope="col">
							<div class="checkbox checkbox__one">
								<input type="hidden" class="cartDlvTypeCd" value="10">
								<input type="checkbox" name="chk-a-all" id="checkCart10" class="check__all">
								<label for="checkCart10"></label>
							</div>
						</th>
						<th align="" scope="col" colspan="2">상품명/옵션정보</th>
						<th align="" scope="col">수량</th>
						<th align="" scope="col">판매가</th>
						<th align="" scope="col">할인금액</th>
						<th align="" scope="col">최종구매가</th>
						<th align="" scope="col">배송비</th>
						<th align="" scope="col">주문관리</th>
					</tr>
				</thead>

	<c:forEach var="cart" items="${cartItemList }" varStatus="cartNum">

        <tbody>
          <tr class="bundle-delivery">
            <td align class="item-checkbox">
              <!-- 상품에 대한 정보가 hidden 태그로 체크박스 안에 들어가도록 할 것-->
              <div class="checkbox-wrap">
                <!-- 상품에 대한 정보들 들어가는 부분-->

                <!-- 위에서 저장한 부분-->
                <div class="checkbox checkbox__one">
                  <input type="checkbox" class="checkCart10" id="checkCart_C002935085" value="C002935085" data-salestop="N" checked="" data-polcsn="DP20000632" data-cpnsupigoodsyn="N">
                  <label for="checkCart_C002935085"></label>
                </div>
              </div>
            </td>

            <td align="" class="item-image">
              <!-- 상품이미지 -->
              
              <div class="section-contents-item__image">
                <a href="#">
                 <img src= class="mainImg">
                   </a>
              </div>
            </td>
    
            <td align class="item-option">
              <div class="section-contents-item">
                <!-- 리바트 or 리바트온라인-->
                <span class="section-contents-item__brand"></span>
    
                <!-- 물품 제목-->
                <p class="section-contents-item__name">
                  <a href="#">
                    <span class="section-contents-item__name--text text-ellipsis-2">${cart.cart_cart_id }</span>
                  </a>
                </p>
    
                <!--선택 항목-->
                <div class="section-contents-item__options--titwrap is-fullwidth">
                  <ul>
                    <li>
                    </li>
                  </ul>
                  <p class="section-contents-item__options--sub">
                    "선택항목 예시"
                  </p>
                  <button type="button" class="link cartChangeOption" aria-haspopup="true">
                    "옵션변경"
                  </button>
                </div>
              </div>
    
            </td>

            <td align>
              <div class="spinner-box spinner-box__not">
                <button class="spinner-box__minus disabled decQty">
                  <i></i>
                  <span class="sr-only">빼기</span>
                </button>
                <span class="spinner-box__number">
                  <input class="cartQty" type="number" maxvalue="30" title="수량 설정" value="1" readonly="">
                </span>
                <button class="spinner-box__plus addQty">
                  <i></i><i></i><span class="sr-only">더하기</span>
                </button>
              </div>
            </td>

            <td align>
              <div class="price item-price-discount">
                <!--del>1,226,000</del-->
                <del>예시 ** 원가</d/l>
              <span class="won">원</span></div>

              <div class="price item-price">예시 ** 구매<span class="won">원</span>
              </div>
            </td>

            <!-- 쓸지 안쓸지 아직 미정-->
            <td align="">
              <!-- 할인금액 -->
              <div class="product-item-price__button--wrap">
                  <button class="button is-small is-light modal-button btnClamDscnt" aria-haspopup="true" data-target="clam_dscnt_C002935375" 
                  data-sitesn="S000000028" data-sitenm="가구" 
                  data-img="https://static.hyundailivart.co.kr/upload_mall/goods/P200106872/GM42291819_img.jpg/dims/resize/x640/cropcenter/640x640/autorotate/on/optimize" 
                  data-goodsnm="모인 포근소파 4인 카우치형" data-cartsn="C002935375">카드할인</button>
              </div>
            
          </td>

          <td align="">
            <!-- 최종구매가 -->
            <div class="price final-price is-bold">
              <span id="totPrc_C002935375">총합 *** 예시</span>
              <span class="won is-normal">원</span>
            </div>
        </td>

          <td align="" class="" rowspan="1">
            <!-- 배송 -->
            <div class="item-delivery">
              <div class="section-contents-item__delivery">
                <div class="delivery-type free">
                    <span class="tit">직접 배송</span>
                    <div class="type freeDlvTag ">(<span>무료</span>)</div>
                </div>
                <div class="delivery-type pay">
                      <span class="price hidden"><span class="num viewDlvPrc">0</span>원</span>
                  <i class="ico-popup dlexPolcInfo hidden" aria-haspopup="true" data-cpnusable="N" data-dlvtypecd="10" data-dlvlevytypecd="30" data-polcsn="DP20000632" data-stdamt="30000" data-stdqty="0" data-dlexamt="3000" data-finalamt="0" data-cpndscntamt="0" data-addamt="0" data-sofaamt="0" data-frntramt="0"></i>
                </div>
                <button class="button btn-delivery-coupon is-small is-light
                    showDlexCouponPop hidden" id="btnShowCpnPop_DP20000632" data-dlexpolcsn="DP20000632">배송비 쿠폰</button>
              </div>
            </div>
        </td>

        <td align="">
          <div class="section-contents-item__simple">
              <div class="section-contents-item__simple--button">
                    <button type="button" class="button is-danger buyCartOne">바로구매</button>
              </div>
            <ul class="section-contents-item is-flex simple-button">
              <!-- 삭제하기 버튼 -->
              <li>
                <button type="button" class="btn removeCartOne">
                  <i class="icon-delete_item"></i>
                </button>
              </li>
            </ul>
          </div>
        </td>
          </tr>  
        </tbody>
      </table>

      <!-- 총 주문 금액-->
      <div class="total-amount">
				<ul class="is-flex">
					<li class="order">
						<span class="tit sr-only">총 주문금액</span>
						<span class="number">
							<em class="num viewPrcSum">총 주문금액</em>원
						</span>
					</li>
					<li class="discount hidden">
						<span class="tit sr-only">할인금액</span>
						<span class="number">
							<em class="num viewDscntSum">할인금액</em>원
						</span>
					</li>
					<li class="delivery hidden">
						<span class="tit sr-only">배송비</span>
						<span class="number">
							<em class="num viewDlvPrcSum">배송비</em>원</span>
					</li>
					<li class="pay hidden">
						<span class="tit sr-only">결제예정금액</span>
						<span class="number pay_price">
							<em class="num viewPayPrcSum">결제예정금액</em>원
						</span>
					</li>
					<li>
						<span class="number"></span>
						<span class="delivery-info">(직접/무료배송)</span>
					</li>
				</ul>
			</div>
    </section>
	</c:forEach>

    <!-- 장바구니 총-->
    <section id="totalArea">
      <div class="total-itam-pay">
        <div class="itam-pay-wrap is-flex">
          <dl class="order">
            <dt class="tit">총 판매가</dt>
            <dd class="number">
              <em class="num" id="viewTotPrcSum">판매가 예시</em>원
            </dd>
          </dl>
          <dl class="discount">
            <dt class="tit">총 할인금액</dt>
            <dd class="number">
              <em class="num" id="viewTotDscntSum">할인금액 예시</em>원
            </dd>
          </dl>
          <dl class="delivery">
            <dt class="tit">총 배송비</dt>
            <dd class="number">
              <em class="num" id="viewTotDlvPrcSum">배송비 예시</em>원
            </dd>
          </dl>
          <dl class="pay">
            <dt class="tit">총 결제 예정금액</dt>
            <dd class="number pay_price">
              <em class="num" id="viewTotPayPrcSum">총 결제 예정금액</em>원
            </dd>
          </dl>
        </div>
      </div>
      <div class="button-area cart-item-button-wrap is-flex">
        <button type="button" class="button is-primary is-large buyCartList">선택상품 주문</button>
        <button type="button" class="button is-danger is-large buyCartAll">전체상품 주문</button>
      </div>
    </section>
	</c:when>
    
    <c:when test="${empty cartList }">
    <!-- 장바구니가 비어있을 경우-->
    <section>
      <div class="no-item-info__wrap">
        <div class="no-item">
          <i class="icon-cart-no-item"></i>
          <span class="no-item__info">장바구니에 담긴 상품이 없습니다.</span>
        </div>
        <div class="button-area cart-item-button-wrap is-flex">
          <a href="/" class="button is-primary is-outlined is-large">홈으로</a>
          <a href="/login?returnUrl=/cart" class="button is-primary is-large">로그인</a>
        </div>
      </div>
    </section>
</c:when>
</c:choose>
    <!-- 장바구니 이용안내 멘트-->
  <div class="contents-info-wrap mt6"><strong class="title">장바구니 이용안내</strong>
      <ul class="dot-list">
        <li>장바구니 내 상품은 최대 60일까지 유지되며 100개까지 담으실 수 있습니다.</li>
        <li>1개 상품 당 최대 구매 가능 개수는 99개입니다.</li>
        <li>장바구니의 상품별 할인금액은 ‘미리 계산된 가격’입니다. 주문서에서의 쿠폰 변경 시 실제 가격은 달라질 수 있습니다.</li>
        <li class="is-danger">패키지 상품의 경우 가격할인에 따른 조건이 있으니 삭제 시 주의하시기 바랍니다.</li>
        <li class="is-danger">패키지 상품 구매 후 고객 변심의 의한 부분취소 및 반품이 불가능합니다.</li>
        <li>수량변경 시 원하는 수량 조절하면 자동으로 반영되고, 반영 시 결정금액도 수량에 맞추어 변경됩니다.</li>
        <li>옵션변경은 옵션이 있는 상품이 있을 시 노출되며, 선택 시 원하는 옵션으로 변경하실 수 있습니다.</li>
        <li class="is-danger">사은품의 선택은 주문서에서 가능합니다. (※리바트 관련 상품은 제외)</li>
        <li>배송비는 주문서에서 통합 적용됩니다.</li>
        <li>배송시간은 택배사 사정에 의해 특정시간으로 지정하실 수 없습니다.</li>
      </ul>
      </div>
  </div>
	
</body>
</html>