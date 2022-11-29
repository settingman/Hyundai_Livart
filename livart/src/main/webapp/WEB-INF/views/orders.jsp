<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%@ include file="../../static/header.jsp" %>

<c:set var="total_price" value="0" />
<c:forEach var="cartItem" items="${buyCartItemList }" varStatus="buyCartNum">
	<c:set var="total_price" value="${total_price + (cartItem.d_price*cartItem.quantity) + cartItem.p_deliveryfee}"/>
</c:forEach>

<div class="container">
<div class="section-contents-wrap order-payment">
  <h3 class="title is-3 is-normal">주문결제</h3>

  <form name="order_form" data-gtm-form-interact-id="0">
    <!-- 주문자 정보-->
    <fieldset action="#">
      <legend>주문자 정보 등록</legend>
      <section>
        <div class="section-contents-item">
            <h3 class="content-title is-liner top-line">주문자 정보</h3>
            <div class="table-box table-box-form">
                <table class="table is-fullwidth">
                    <caption>
                        주문자 정보 등록
                    </caption>
                    <colgroup>
                        <col style="width: 150px">
                        <col>
                    </colgroup>
                    <thead class="sr-only">
                        <tr>
                            <th align="" scope="col">항목</th>
                            <th align="" scope="col">입력 및 선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">
                                <label for="ordManNm" class="label required">주문자</label>
                            </th>
                            <td>
                                <input type="hidden" id="ordererInfo" data-postno="" data-addr="" data-addrd="" data-draddr="" data-draddrd="" data-draddrbldgnm="">
                                <input type="hidden" id="ordManTn1" name="ordManTn1" value="">
                                <input type="hidden" id="ordManTn2" name="ordManTn2" value="">
                                <input type="hidden" id="ordManTn3" name="ordManTn3" value="">
                                <input type="text" id="ordManNm" name="ordManNm" class="input width-middle" value=${preOrderInfo.orderer } maxlength="20">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <label for="ordManHp1" class="label required">휴대폰번호</label>
                            </th>
                            <td>
                                <div class="select width-small">
                                
                                    <select id="ordManHp1" name="ordManHp1">
                                        
                                            <option value="010" selected="">010</option>
                                        
                                            <option value="011">011</option>
                                        
                                            <option value="016">016</option>
                                        
                                            <option value="017">017</option>
                                        
                                            <option value="018">018</option>
                                        
                                            <option value="019">019</option>
                                        
                                    </select>
                                </div>
                                <input class="input width-small" type="text" id="ordManHp2" name="ordManHp2" value="${fn:substring(preOrderInfo.orderer_phone,3,7)}" maxlength="4" data-valid-number="true">
                                <input class="input width-small" type="text" id="ordManHp3" name="ordManHp3" value="${fn:substring(preOrderInfo.orderer_phone,7,11)}" maxlength="4" data-valid-number="true">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    </fieldset>

    <!-- 배송지 정보-->    
    <fieldset action="#">
      <legend>배송지 정보 등록</legend>
      <section>
          <div class="section-contents-item">
              <div class="content-title-wrap">
                  <h3 class="content-title is-liner top-line">
                      배송지 정보
                      <i class="ico-popup modal-button" data-target="modal-delivery-destination" aria-haspopup="true"></i>
                      
                          <button type="button" class="btn-address-list modal-button" id="btnShowDlvpList" data-target="modal-delivery-destination-list" aria-haspopup="true">배송지 목록<i class="ico-angle-right"></i>
                          </button>
                      
                  </h3>
                  <div class="control right-position">
                      <div class="radio">
                          <input type="radio" name="radio-a" value="10" id="addrSetOrderer" class="addrSetRadio" data-gtm-form-interact-field-id="0">
                          <label for="addrSetOrderer">주문자와 동일</label>
                      </div>
                      <div class="radio">
                          <input type="radio" name="radio-a" value="20" id="addrSetDirect" class="addrSetRadio">
                          <label for="addrSetDirect">직접입력</label>
                      </div>
                  </div>
              </div>
              <div class="table-box table-box-form">
                  <table class="table is-fullwidth">
                      <caption>
                          배송지 정보 등록
                      </caption>
                      <colgroup>
                          <col style="width: 150px">
                          <col>
                      </colgroup>
                      <thead class="sr-only">
                          <tr>
                              <th align="" scope="col">항목</th>
                              <th align="" scope="col">입력 및 선택</th>
                          </tr>
                      </thead>
                      <tbody id="deliveryInfo">
                          <tr>
                              <th scope="row">
                                  <label for="rcvManNm" class="label required">받는사람</label>
                              </th>
                              <td>
                                  <input id="rcvManNm" name="rcvManNm" class="input width-middle" type="text" value="" maxlength="13">
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  <label for="rcvManHp1" class="label required">휴대폰번호</label>
                              </th>
                              <td>
                                  <div class="select width-small">
                                      <select id="rcvManHp1" name="rcvManHp1">
                                          
                                              <option value="010">010</option>
                                          
                                              <option value="011">011</option>
                                          
                                              <option value="016">016</option>
                                          
                                              <option value="017">017</option>
                                          
                                              <option value="018">018</option>
                                          
                                              <option value="019">019</option>
                                          
                                      </select>
                                  </div>
                                  <input class="input width-small" type="text" id="rcvManHp2" name="rcvManHp2" maxlength="4" value="${fn:substring(preOrderInfo.orderer_phone,4,8)}" data-valid-number="true">
                                  <input class="input width-small" type="text" id="rcvManHp3" name="rcvManHp3" maxlength="4" value="" data-valid-number="true">
                              </td>
                          </tr>
                          
                          <tr>
                              <th scope="row">
                                  <label for="address" class="label required">배송주소</label>
                              </th>
                              <td>
                               <!--    <div class="address-wrap">
                                      <div class="control is-flex">
                                          <input type="text" class="input width-small" id="postNo" name="postNo" value="" readonly="">
                                          <button type="button" id="address" class="button is-primary modal-button is-outlined b-postBtn" data-target="modal-postcode" aria-haspopup="true">우편번호 확인</button>
                                      </div>
                                      <input type="hidden" class="input width-large" id="draddrBldgNm" name="draddrBldgNm" value="">
                                      <input type="hidden" class="input width-large" id="addr1" name="addr1" value="">
                                      <input type="hidden" class="input width-large" id="addr2" name="addr2" value="">
                                      <input type="text" class="input width-large" id="draddr1" name="draddr1" value="" maxlength="100">
                                      <input type="text" class="input width-large is-block" placeholder="상세 주소 입력" id="draddr2" value="" name="draddr2" maxlength="100">
                                  </div>   -->
                              </td>
                          </tr>
                          <tr>
                              <th scope="row">
                                  <label for="delivery-request" class="label">배송요청사항</label>
                              </th>
                              <td>
                                  <!-- 직접입력 선택시 input text 노출 -->
                                  <div id="deliveryDirect" class="select delivery-direct">
                                      <select id="delivery-request" data-gtm-form-interact-field-id="1">
                                          
                                              <option value="direct">직접 입력</option>
                                          
                                              <option value="배송 전에 연락주세요.">배송 전에 연락주세요.</option>
                                          
                                              <option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>
                                          
                                              <option value="부재시 문 앞에 놓아주세요.">부재시 문 앞에 놓아주세요.</option>
                                          
                                              <option value="파손 위험이 있으니 배송시 주의해 주세요.">파손 위험이 있으니 배송시 주의해 주세요.</option>
                                          
                                              <option value="택배함에 넣어주세요.">택배함에 넣어주세요.</option>
                                          
                                      </select>
                                  </div>
                                  <input class="input input-delivery-direct" type="text" id="deliveryDirectManual" placeholder="직접입력 (설치 기사님에게 전할 말씀을 50자 이내로 남겨주세요)" maxlength="50" style="display: inline-block;">
                                  <input type="hidden" id="dlvMemo" name="dlvMemo">
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </section>
  </fieldset>

  <!-- 배송 날짜 선택-->
  <section>
    <div class="section-contents-item">
        <div class="content-title-wrap">
            <h3 class="content-title is-liner top-line">직접배송 상품주문</h3>
            <span class="direct-delivery-info right-position">직접배송 상품(가구 등)의 배송 및 설치를 위해 아래 사항을 선택해주세요. 선택하신 사항에 따라 배송 전 등록된 연락처로 안내를 드릴 예정입니다.</span>
        </div>

        <div class="table-box table-box-form">
            <table class="table is-fullwidth">
                <caption>
                    직접배송 상품주문 동의 등록
                </caption>
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <thead class="sr-only">
                    <tr>
                        <th align="" scope="col">항목</th>
                        <th align="" scope="col">입력 및 선택</th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                        <tr>
                            <th scope="row">
                                <label for="dateSelect" class="label required">희망 배송일</label>
                            </th>
                            <td>
                                <div class="date-select-box">
                                  
                                    <div class="align-items-c">
                                        <div class="flex-0 mr1">
                                            <button id="dateSelect" type="button" class="button is-middle is-primary is-outlined modal-button" aria-haspopup="true" style="width:180px;">배송일 선택</button>
                                        </div>
                                        <div class="flex-1">
                                            <span class="date-select-info mb0">희망 배송일을 선택해주세요.(배송 시간 및 기타 안내는 배송 전 연락 드릴 예정입니다.)</span>
                                            <span class="date-select-info color-red mb0" style="color: red;">※ 붙박이장 구매 시 기사님 방문 실측 후 최종 주문완료되기 때문에
                                               선택하신 희망배송일에 설치되지 않을 수 있습니다. (수도권 설치 주문 한정)</span>
                                         </div>
                                    </div>
                                         <strong class="date-select-info color-red mb0 mt2" style="color: red;">입점 브랜드는 업체에서 직접 배송하는 상품으로 배송일 지정이 불가한 점 양해 부탁드립니다.</strong>
                                         
                                    <div class="selected-date-time blue hidden">
                                        <span class="date">
                                            <i class="icon-check-blue"></i>
                                            <span id="dlvHopeDate"></span>
                                        </span>
                                        <span class="time">
                                            <i class="icon-check-blue"></i>
                                            <span id="dlvHopeApm"></span>
                                            <span id="dlvHopeTime"></span>
                                        </span>
                                    </div>
                                    
                                </div>
                            </td>
                        </tr>
                        
                        
                    
                </tbody>
            </table>
        </div>
    </div>
    
</section>


<!-- 최종 결제-->
<section class="payment-amount-wrap">
  <strong class="item-title">최종결제금액</strong>
  <div class="item-dl-layout">
      <dl class="total">
          <dt class="title">총 판매가</dt>
          <dd class="price"><span class="num" id="pawSellPrc"><fmt:formatNumber value="${total_price }" type="number"/></span>원</dd>
      </dl>
      <div class="dl-group">
          <dl>
              <dt class="title">판매가</dt>
              <dd class="price"><span class="num" id="pawDscntPrc"><fmt:formatNumber value="${total_price }" type="number"/></span>원</dd>
          </dl>
 <!--         <dl class="" style="display: none;">
              <dt class="title">내림서비스</dt>
              <dd class="price"><span class="num" id="addInslAmt">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">임직원 할인</dt>
              <dd class="price"><span class="num" id="pawStaffDcAmt">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">웨딩회원 할인</dt>
              <dd class="price"><span class="num" id="pawWeddDcAmt">0</span>원</dd>
          </dl> -->
      </div>
  </div>
  <!--  
  <div class="item-dl-layout" style="display: none;">
      <dl class="total">
          <dt class="title">총 할인금액</dt>
          <dd class="price">
              <span class="num" id="pawTotDscntAmt">0</span>원</dd>
      </dl>
      <div class="dl-group">
          <dl style="display: none;">
              <dt class="title">상품쿠폰 할인</dt>
              <dd class="price">
                  <span class="num" id="pawTotGoodsDscntAmt">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">장바구니쿠폰 할인</dt>
              <dd class="price"><span class="num" id="pawTotCartDscntAmt">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">H.Point 할인</dt>
              <dd class="price"><span class="num" id="pawTotUseHp">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">Plus Point 할인</dt>
              <dd class="price"><span class="num" id="pawTotUsePp">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">복지포인트 할인</dt>
              <dd class="price"><span class="num" id="pawTotUseWf">0</span>원</dd>
          </dl>
      </div>
  </div>
  <div class="item-dl-layout" style="display: none;">
      <dl class="total">
          <dt class="title">총 배송비</dt>
          <dd class="price">
              <span class="num" id="pawTotDlexAmt">0</span>원</dd>
      </dl>
      <div class="dl-group">
          <dl class="" style="display: none;">
              <dt class="title">배송비</dt>
              <dd class="price">
                  <span class="num" id="pawTotAddDlexAmt">0</span>원</dd>
          </dl>
          <dl class="" style="display: none;">
              <dt class="title">배송료 쿠폰할인</dt>
              <dd class="price">
                  <span class="num" id="pawTotDlexDscntAmt">0</span>원</dd>
          </dl>
      </div>
  </div> -->
  <!-- 최종결제금액 -->
  <div class="total-price-wrap">
      <dl class="total">
          <dt class="title">최종결제금액</dt>
          <dd class="price">
              <span class="num" id="pawTotPayPrc"><fmt:formatNumber value="${total_price }" type="number"/></span>원</dd>
      </dl>
      <div class="dl-group ">
      </div>
  </div>

  <!-- 주문내역 확인/동의 -->
  <div class="checkbox is-checkbox-bold cost-consent">
      <div class="card">
          <header class="card-header">
              <input type="checkbox" name="payment-04" id="paymentAgree">
              <label for="paymentAgree" class="card-header-title">[필수] 주문내역 확인/동의</label>
              <a href="#collapsible-card01" data-action="collapse" class="card-header-icon non-close" aria-label="more options">
                  <span class="icon">
                      <i class="ico-down_arrow" aria-hidden="true"></i>
                  </span>
              </a>
          </header>
          <div id="collapsible-card01" class="is-collapsible" aria-expanded="false" style="display: none">
              <div class="card-content">
                  <span>주문하실 상품의 상품명, 상품금액, 배송정보, 할인내역을 최종 확인하였으며, 구매에 동의 하시겠습니까? (근거 전자상거래법 8조 2항)</span>
              </div>
          </div>
      </div>
  </div>
  
      <!-- 개인정보 수집 및 이용 동의 : 200722 -->
      <div class="checkbox is-checkbox-bold cost-consent">
          <div class="card">
              <header class="card-header">
                  <input type="checkbox" name="payment-05" id="payment-05" class="persDataTermsAgree">
                  <label for="payment-05" class="card-header-title">[필수] 개인정보 수집 및 이용 동의</label>
                  <a href="#collapsible-card04" data-action="collapse" class="card-header-icon non-close" aria-label="more options">
                      <span class="icon">
                          <i class="ico-down_arrow" aria-hidden="true"></i>
                      </span>
                  </a>
              </header>
              <div id="collapsible-card04" class="is-collapsible" aria-expanded="false" style="display: none">
                  <div class="card-content">
                      <div class="privacy-box msg-box msg-box-gray">
<p>고객님께서는 아래와 같은 내용에 대하여 동의를 거부하실 수 있습니다. 그러나, 동의를 거부하실 시 주문결제 및 배송, 일부 포인트 적립이 제한됩니다.</p>

<p><strong>수집 및 이용 목적</strong></p>

<p>결제/ 배송/ 환불 서비스, 주문 및 배송 정보 안내, 고객상담, 고객불만 접수 및 처리</p>

<p><strong>수집 및 이용 항목</strong></p>

<p>주문자 정보(이름, 휴대폰번호), 배송지 정보(이름, 휴대폰번호, 주소), 희망 배송일, 카드결제정보(카드번호, 카드사명), 계좌정보(은행명, 계좌번호, 예금주명)</p>

<p><strong>보유 및 이용 기간 </strong></p>

<p class="is-strong-text">회원 탈퇴 시 또는 법정 의무 보유 기간</p>
</div>

                  </div>
              </div>
          </div>
      </div>
  
  <!-- 결제하기 버튼 -->
  <input type="button" class="button is-danger is-large is-fullwidth" id="payTran" value="결제하기">
</section>

  </form>
</div>
</div>

<div id="criteo-tags-div" style="display: none;"></div><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe></body>
</body>
</html>