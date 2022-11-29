<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="write3.css">

</head>

<body>
	<header class="comm-editor-header">

		<div class="header">

			<div class="header-left">
				<a class="comm-editor-header__logo--main" href="#default"
					class="logo"><img src="../image/new_logo.png">커뮤니티</a>
			</div>

			<div class="header-right">
				<button href="#home">미리보기</button>
				<button href="#contact">임시저장</button>
				<button href="#about">발행 신청</button>
			</div>
		</div>
	</header>



	<button class="collapsible">
		<h3 class="coll_h3">
			필 수 입 력<span class="is-danger">*</span><span> <i
				class="arrow up"></i></span>
		</h3>
	</button>



	<div class="content">
		<div class="hi">
			<div class="container">
				<form action="/action_page.php">

					<div class="form_f">
						<label for="interest">관심</label> <select id="interest"
							name="interest">
							<option value="">선택해주세요.</option>

							<option value="A0001">가구</option>

							<option value="A0002">홈스타일링</option>

							<option value="A0003">토탈 리모델링</option>

							<option value="A0004">부분 리모델링</option>
						</select>
					</div>

					<div class="form_f">
						<label for="housing">주거형태</label> <select id="housing"
							name="housing">
							<option value="">선택해주세요.</option>

							<option value="C0001">원룸/오피스텔</option>

							<option value="C0002">아파트</option>

							<option value="C0003">빌라/단독주택</option>

							<option value="C0004">사무공간</option>

							<option value="C0005">상업공간</option>

							<option value="C0006">기타</option>

						</select>
					</div>
					<div class="form_f">
						<label for="place">공간</label> <select id="place" name="place">
							<option value="">선택해주세요.</option>


							<option value="D0001">거실</option>

							<option value="D0002">침실</option>

							<option value="D0003">서재</option>

							<option value="D0004">아이방</option>

							<option value="D0005">드레스룸</option>

							<option value="D0006">주방</option>

							<option value="D0007">욕실</option>

							<option value="D0011">홈인테리어</option>

							<option value="D0008">기타공간</option>
						</select>
					</div>
					<div class="form_f">
						<label for="space">평수</label> <select id="space" name="space">
							<option value="">선택해주세요.</option>

							<option value="E0001">10평 이하</option>

							<option value="E0002">10평대</option>

							<option value="E0003">20평대</option>

							<option value="E0004">30평대</option>

							<option value="E0005">40평대</option>

							<option value="E0006">50평 이상</option>
						</select>
					</div>
					<div class="form_f">
						<label for="price">예산</label> <select id="price" name="price">
							<option value="">선택해주세요.</option>

							<option value="F0001">1백만원 이하</option>

							<option value="F0002">3백만원 이하</option>

							<option value="F0003">5백만원 이하</option>

							<option value="F0004">1천만원 이하</option>

							<option value="F0005">2천만원 이하</option>

							<option value="F0006">3천만원 이하</option>

							<option value="F0007">3천만원 이상</option>
						</select>
					</div>
					<div class="form_f">
						<label for="location">지역</label> <select id="location"
							name="location">
							<option value="">시,도 선택</option>
							<option value="ALL">전체</option>

							<option value="S0001">서울특별시</option>

							<option value="S0002">경기도</option>

							<option value="S0003">인천광역시</option>

							<option value="S0004">강원도</option>

							<option value="S0005">충청북도</option>

							<option value="S0006">세종특별자치시</option>

							<option value="S0007">충청남도</option>

							<option value="S0008">대전광역시</option>

							<option value="S0009">경상북도</option>

							<option value="S0010">대구광역시</option>

							<option value="S0011">울산광역시</option>

							<option value="S0012">부산광역시</option>

							<option value="S0013">경상남도</option>

							<option value="S0014">전라북도</option>

							<option value="S0015">전라남도</option>

							<option value="S0016">광주광역시</option>

							<option value="S0017">제주특별자치도</option>
						</select>
					</div>
					<div class="form_f">
						<label for="family">함께</label> <select id="family" name="family">
							<option value="">선택해주세요.</option>

							<option value="H0001">싱글</option>

							<option value="H0002">신혼부부</option>

							<option value="H0003">아이와</option>

							<option value="H0004">자녀와</option>

							<option value="H0005">부모님과</option>

							<option value="H0006">동료와</option>

							<option value="H0007">반려동물과</option>

							<option value="H0008">기타</option>
						</select>
					</div>
					<div class="form_f">
						<label for="style">스타일</label> <select id="style" name="style">
							<option value="">선택해주세요.</option>

							<option value="G0001">모던</option>

							<option value="G0002">미니멀/심플</option>

							<option value="G0003">내추럴</option>

							<option value="G0004">북유럽</option>

							<option value="G0005">빈티지</option>

							<option value="G0006">클래식</option>

							<option value="G0007">프렌치</option>

							<option value="G0008">러블리</option>

							<option value="G0009">인더스트리얼</option>

							<option value="G0010">아시아</option>

							<option value="G0011">유니크/믹스매치</option>
						</select>
					</div>





					<!-- <label for="subject">Subject</label>
          <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

          <input type="submit" value="Submit"> -->
				</form>
			</div>
		</div>

	</div>




	<div class="img_div">
		<div class="center">
			<div class="form-input">
				<div class="preview">
					<img id="file-ip-1-preview">
				</div>
				<label for="file-ip-1">대표 사진을 등록해 주세요.</label>
				<p class="img_p">사진은 1개만 등록 할 수 있으며 10MB를 초과할 수
					없습니다.(JPG,PNG,GIF 가능)</p>
				<input type="file" id="file-ip-1" accept="image/*"
					onchange="showPreview(event);">

			</div>
		</div>
	</div>

	<div class="hi">
		<div class="comm-editor-body__title">
			<input id="commtitle" class="input comm-title" maxlength="30"
				value="" name="titl" type="text" placeholder="제목을 입력해 주세요">
		</div>
	</div>

	<div class="hi">
		<textarea id="contents" placeholder="추가 본문 입력" class="txt"></textarea>
	</div>

	</div>


	<script>
		var coll = document.getElementsByClassName("collapsible");
		var i;

		for (i = 0; i < coll.length; i++) {
			coll[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var content = this.nextElementSibling;
				if (content.style.maxHeight) {
					content.style.maxHeight = null;
				} else {
					content.style.maxHeight = content.scrollHeight + "px";
				}
			});
		}
	</script>

	<script type="text/javascript">
		function showPreview(event) {
			if (event.target.files.length > 0) {
				var src = URL.createObjectURL(event.target.files[0]);
				var preview = document.getElementById("file-ip-1-preview");
				preview.src = src;
				preview.style.display = "block";
			}
		}
	</script>

	<script>
		// 성환
		// 리뷰데이터 보내기.
		function pwCheck() {

			//ajax로 보내면 request에서 뽑을수없음
			// 데이터를 담아 보내줘야함

			var String
			review_title = $('#titl').val();
			var String
			review_content = $('#contents').val();
			var String
			interest = $('#interest').val();

			var String
			review_order = $('input#username').val();

			var String
			dwelling = $('#housing').val();
			var String
			place = $('#place').val();
			var String
			review_size = $('#space').val();
			var String
			budget = $('#price').val();
			var String
			review_style = $('#style').val();
			var String
			together = $('#family').val();

			var String
			user_user_id = $('input#username').val();  // 서버에서 받아야하나?
			var String
			product_p_id = $('input#username').val();

			var String
			photo_url = $('input#username').val();

			$.ajax({
				type : 'post',
				url : '/livart/loginconfrim',
				// ajax 데이터 받기
				data : {

					// review id 는 sequence. 

					"review_title" : review_title,
					"review_content" : review_content,
					"interest" : interest,
					"review_order" : review_order,
					"dwelling" : dwelling,
					"place" : place,
					"review_size" : review_size,
					"budget" : budget,
					"review_style" : review_style,
					"together" : together,
					"user_user_id" : user_user_id,
					"product_p_id" : product_p_id,
					"photo_url" : photo_url

				// date는 서버에서.

				},
				success : function(result) {

					console.log(result);

					if (result == 1) {
						console.log(result);

						//성공했을때 메인 페이지로 redirect 해줌.
						window.location.href = "/main.jsp"

					} else {
						// 로그인 실패시 pwerror 필드 값 변경
						$("#pwError").html('비밀번호를 잘못 입력하셨습니다.');
					}

				},
				error : function(error) {
					console.log(error)
				}
			})

		}
	</script>


</body>

</html>