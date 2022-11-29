<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

 
  <script language="JavaScript">
     // 변경된 값을 저장
   var sell_price;
   var amount;
 
 
   // init 초기값을 지정할 수 있다.
   function init () {
     sell_price = document.form.sell_price.value;
     amount = document.form.amount.value;
     document.form.sum.value = sell_price;
     change();
   }
 
 
     // add
   // howmany 값을 1 증가 시키고, 합계를 계산.
 function add () {
     hm = document.form.amount;
     sum = document.form.sum;
   hm.value ++ ;
 
     sum.value = parseInt(hm.value) * sell_price;
 
     }
 
    
 
    
 
     // del
 
     // howmany 값을 1 감소 시키고, 합계를 계산.
 
     function del () {
 
     hm = document.form.amount;
 
     sum = document.form.sum;
 
    
 
     // 에러 처리 : 음수 값
 
     if (hm.value > 1) {
 
       hm.value -- ;
 
       sum.value = parseInt(hm.value) * sell_price;
 
     }
 
     }
 
 
 
 
 
     function change () {
 
 
 
     hm = document.form.amount;
 
     sum = document.form.sum;
 
    
 
     if (hm.value < 0) {
 
       hm.value = 0;
 
     }
 
     sum.value = parseInt(hm.value) * sell_price;
 
     } 
 
 
 
   //-->
 
   </script>
   

<title>Insert title here</title>
</head>
<body>

		<%@ include file="../../static/header.jsp" %>
	
  <div class="contents-items-wrap">
    <div class="container">
    <c:choose>
    	<c:when test="${empty productVO }">
    		<tr>
								<td colspan=5>
									<b>등록된 회원 없음</b>
							</td>
							</tr>
    	</c:when>
    	<c:when test="${!empty productVO }">
      <section class="pitem-header clear">
        <div class="fl">
          <div class="pitem-header-photo">
            <div class="gallery-photo xzoom-container swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transform:translate3d(0px,0px,0px);">
                <li class="swiper-slide swiper-slide-active">
                  <img src="${productVO.photo_url }" class="xzoom" style="width: 100%;">
                </li>
              </ul>

            </div>

          </div>

        </div>
        <div class="fr">
          <div class="pitem-header-info">
            <div class="pitem-header-info__top clear">
              <div class="fl">
                <span class="pitem-header-info__tag">리바트온라인</span>
              </div>
            </div>
            <div class="pitem-header-section">
              <div class="pitem-header-info__title">
                <div class="is-flex">
                  <h2 class="title">${productVO.p_name }</h2>
                </div>
              </div>
              <ul class="horizon-list-menu">
              </ul>
            </div>

            <div class="pitem-header-section">
              <!--가격, 할인-->
              <div class="pitem-header-section__price--wrap space-between">
                <div>
                  <span class="pitem-header-section__price--del">
                    <del><fmt:formatNumber value="${productVO.p_price }" type="number"/></del>
                    <span class="unit">원</span>
                  </span>
                  <span class="pitem-header-section__price">
                  <fmt:formatNumber value="${ productVO.p_price - (productVO.p_price * (productVO.p_discount / 100))}" type="number"/>
                    <span class="unit">원</span>
                  </span>
                  <span class="madal-button is-link ml2">
                    <sapn class="pitem-header-section__sale">${productVO.p_discount }%</sapn>
                  </span>
                </div>

              </div>
            </div>
            <div class="pitem-header-section pitem-header-section--code">
              <dl class="pitem-header-section__dl">
                <dt class="pitem-header-section__dt">상품코드</dt>
                <dd class="pitem-header-section__dd">
                  <span class="inline-flex">${productVO.p_id}</span>
                </dd>
              </dl>

            </div>
            <div class="pitem-header-section pitem-header-section--delivery">
              <dl class="pitem-header-section__dl">
                <dt class="pitem-header-section__dt">배송비</dt>
                <dd class="pitem-header-section__dd">
                  <p class="row">
                  <div class="inline-flex">
                    <span class="is-600 color-cyan"><fmt:formatNumber value="${productVO.p_deliveryfee}" type="number"/> 원</span>
                  </div>
                  </p>
                </dd>
              </dl>

            </div>
            <div class="pitem-header-section pitem-header-section--freegift">
              <dl class="pitem-header-section__dl">
                <dt class="pitem-header-section__dt">사은품</dt>
                <dd class="pitem-header-section__dd">
                  <div class="pitem-photo is-flex">
                    <ul class="images-list is-flex">
                      <li>
                        <span class="modal-button">
                          <img
                            src="https://static.hyundailivart.co.kr/upload_mall/goods/P200028467/GM40428196_img.jpg/dims/resize/x150/cropcenter/150x150/autorotate/on/optimize"
                            alt="코너캡 (좌,우 각 1EA)">
                          <span class="freegift__name">코너캡 (좌,우 각 1EA)</span>
                        </span>
                      </li>
                    </ul>
                  </div>
                </dd>
              </dl>
            </div>

          </div>

          <div class="pitem-header-notice"></div>

          <div class="pitem-option pitem-option-float" id="option-container-stand-wrap">
            <div class="dropdown">
              <!-- <dl class="pitem-header-section__dl">

                <dt class="pitem-header-section__dt">색상 (필수)</dt>
                <select name="count" id="count">
                  <div class="dropdown-option">
                    <option value="white">DB에서 색상 가져오기(하드코딩x)</option>

                    <option value="white">화이트+베이지</option>
                    <option value="lightgray">라이트그레이+그레이</option>
                    <option value="gray">그레이+다크그레이</option>
                    <option value="darkgray">다크그레이+블랙</option>

                  </div>
                </select>
              </dl>
 -->
              <dl class="pitem-header-section__dl" style=" margin-top: 0px;">

                <dt class="pitem-header-section__dt">수량 (필수)</dt>
                <!-- <select name="count" id="count" onchange="changeValue(this)">
                  <div class="dropdown-option">
                    <option value="0">개수</option>

                    <option value=1>1</option>
                    <option value=2>2</option>
                    <option value=3>3</option>
                    <option value=4>4</option>
                    <option value=5>5</option>
                  </div>
                </select> -->
              </dl>
    <!--      <form name="form" method="get">
  <input type=hidden name="sell_price" value="80000">
  <input type="text" class="asdf" name="amount" value="1" size="3" onchange="change();">
  <input type="button" value=" + " onclick="add();">
  <input type="button" value=" - " onclick="del();"><br>
  <input type="text" name="sum" size="13" readonly>
  </form> -->
	  
	 <div class="num">
	 	<span>수량</span>
	 	<span class="count">
	 		<a href="#" class="minus">-</a>
	 		<span id="result">1</span>
	 		<a href="#" class="plus">+</a>
	 	
	 	</span>
	 </div>
	
	 <h1 class="totalcost2"></h1>
            </div>
            <div class="pitem-header-sum">
              <div class="pitem-header-sum__price"></div>
              총 합계 금액
              <strong class-red  class="totalcost"><fmt:formatNumber  value="${  ((productVO.p_price - (productVO.p_price * (productVO.p_discount / 100)))) + productVO.p_deliveryfee}"  type="number"/></strong>
              <span class="unit">원</span>

            </div>
 <script>
	 	let plus =document.querySelector(".plus");
	 	let minus = document.querySelector(".minus");
	 	let result = document.querySelector("#result");
	 	let totalcost = document.querySelector(".totalcost")
	 	let i =1;
	 	plus.addEventListener("click",() => {
	 		i++
	 		result.textContent = i;
	 		let totalcostNum = i ;
	 		totalcost.textContent = ((${  (productVO.p_price - (productVO.p_price * (productVO.p_discount / 100)))} * i) + ${productVO.p_deliveryfee} ).toLocaleString() ;
	 	})
	 	minus.addEventListener("click", () => {
	 		if(i>0){
	 			i--
	 			result.textContent =i;
	 			let totalcostNum = i;
	 			totalcost.textContent = ((${  (productVO.p_price - (productVO.p_price * (productVO.p_discount / 100)))} * i) + ${productVO.p_deliveryfee}).toLocaleString();
	 		}else{
	 			total.textContent = 0
	 		}
	 	})
	 </script>
            <div class="pitem-header-floating-wrap">
              <div class="pitem-header-floating" style="position: relative; top: initial;">
                <header class="pitem-header-card-header">
                  <div class="pitem-header-btns">
                    <div class="pitem-header-btns__full">
                      <button type="button" class="button is-primary is-large">
                        장바구니
                      </button>
                      <button type="button" class="button is-danger is-large">구매하기</button>

                    </div>

                  </div>
                </header>

              </div>
            </div>
          </div>

        </div>
      </section>
      </c:when>
      </c:choose>

    </div>
    <!--아래상품정보 s-->
    <section class="pitem-section pt0">
      <div class="container">

        <section class="pitem-section" id="pitem-detail-1">
          <div class="container">
            <div class="pitem-section-header">
              <h3 class="pitem-section-header__title">상세리뷰</h3>
            </div>
            <div class="swiper mySwiper">
              <div class="slideshow-container">

                <!-- Full-width images with number and caption text -->
                
                <c:forEach var="img" items="${imageList }" >
                <div class="mySlides fade">
                  
                  <img onclick="javascript:location.href='/livart/product?command=${img.review_review_id}';" style="cursor:pointer" src="${img.photo_url }" style="width:100%">
                  <div class="text">Caption Text</div>
                  <!-- 성환이형페이지로 넘겨야함 나중에 onclick url 을 여기에있는 /livart/review/command=${img.review_review_id} 서블릿으로 변경 예정 -->
                </div>
				

                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </c:forEach>
              </div>
              <script> showSlides(1)</script>
           

            

            </div>
          </div>

        </section>
		
        <section class="pitem-section" id="pitem-detail-1">
          <div class="container">
            <div class="pitem-section-header">
              <h3 class="pitem-section-header__title">상품정보</h3>
            </div>
          </div>
          <c:forEach var="proimg" items="${productDetailImage }"> 
          <div id="pitem-main-info" class="is-active">
            <div class="container"></div>
            <div class="pitem-section-info pitem-section-info__wide">
              <!-- 1단 이미지형 -->
              <div class="row text-center">
                <img src="${proimg.photo_url }" alt="상품상세이미지">
              </div>
            </div>
          </div>
        </section>

		</c:forEach>


        <!-- <section class="pitem-section" id="pitem-detail-4">
          <div class="container">
            <div class="pitem-section-header">
              <h3 class="pitem-section-header__title">상품Q&amp;A</h3>
            </div>

            <div>
              <h1>게시판 들어와야함</h1>
            </div>
          </div>
        </section> -->
      </div>
    </section>


  </div>
<%@ include file="../../static/footer.jsp" %>
</body>

</html>