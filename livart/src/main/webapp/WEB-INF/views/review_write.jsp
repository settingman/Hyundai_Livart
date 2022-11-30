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

</head>


<%
	String userid = (String) session.getAttribute("loginUserid");
	userid = userid == null ? "nologin" : userid;
%>


<body>
	<header class="comm-editor-header">

		<div class="header">

			<div class="header-left">
				<a class="comm-editor-header__logo--main" href="#default"
					class="logo"><img src="https://static.hyundailivart.co.kr/assets/images/common/new_logo.png">리얼리뷰</a>
			</div>

			<div class="header-right">
				<button href="#home">미리보기</button>
				<button href="/main.jsp">임시저장</button>
				<button onclick="ReviewSave()"">발행 신청</button>
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
		function ReviewSave() {
			
			console.log('리뷰진입')

			//ajax로 보내면 request에서 뽑을수없음
			// 데이터를 담아 보내줘야함
			
		
			
		
			var x2 = document.getElementById("contents");
			var x3 = document.getElementById("interest");
			
			var x4 = document.getElementById("?");
			
			var x5 = document.getElementById("housing");
			var x6 = document.getElementById("place");
			var x7 = document.getElementById("space");
			var x8 = document.getElementById("price");
			var x9 = document.getElementById("style");
			var x10 = document.getElementById("family");
			
			var x11 = document.getElementById("?");
			var x12 = document.getElementById("?");
			var x13 = document.getElementById("?");
			
			
		
			
			var String
			review_title =  $('input#commtitle').val();
			console.log(review_title);
			
			var String
			review_content =  $('textarea#contents').val();
			console.log(review_content);
			
			var String
			interest = (x3.options[x3.selectedIndex].text);
			console.log(interest)

			var String
			review_order = $('input#username').val();

			var String
			dwelling = (x5.options[x5.selectedIndex].text);
			
			console.log(dwelling)
			
			var String
			place = (x6.options[x6.selectedIndex].text);
			
			console.log(place)
			
			var String
			review_size = (x7.options[x7.selectedIndex].text);
			var String
			budget = (x8.options[x8.selectedIndex].text);
			var String
			review_style = (x9.options[x9.selectedIndex].text);
			var String
			together = (x10.options[x10.selectedIndex].text);

			var String
			user_user_id = '<%=userid %>';  // 서버에서 받아야하나?
			
			console.log(user_user_id);
			
			if(user_user_id=="nologin"){
				alert('로그인 해주세요')
			}
			
			var String
			product_p_id = $('input#username').val();

			var String
			photo_url = $('input#username').val();

			$.ajax({
				type : 'post',
				url : '/livart/reviewsave',
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
						window.location.href = "/livart/review"

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
<style>* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

label {
  width: 30%;
}

.img_div {
  margin: 0px;
  height: auto;
  background: white;
}

.center {
  height: auto;
  display: flex;
  align-items: center;
  justify-content: center;

}

.form-input {
  width: 720px;
  ;
  min-height: 400px;
  padding: 20px;
  background: #f9f9f9;
  box-shadow: -3px -3px 7px rgba(94, 104, 121, 0.377),
    3px 3px 7px rgba(94, 104, 121, 0.377);
}

.img_p {
  text-align: center;
}

.form-input input {
  display: none;

}

.form-input label {
  display: block;
  width: 45%;
  height: 45px;
  margin-left: 25%;
  line-height: 50px;
  text-align: center;
  background: #777;

  color: #fff;
  font-size: 15px;
  font-family: "Open Sans", sans-serif;
  text-transform: Uppercase;
  font-weight: 600;
  border-radius: 5px;
  cursor: pointer;
}

.form-input img {
  width: 100%;
  max-height: 800px;
  height: auto;
  display: none;

  margin-bottom: 30px;
}

.comm-editor-body__title .input {
  height: auto;
  padding-top: 0;
  padding-right: 50px;
  padding-bottom: 10px;
  padding-left: 0;
  border: none;
  border-bottom: 2px solid #ccc;
  font-size: 30px;
}

.comm-editor-body__title .count-txt {
  position: absolute;
  right: 0;
  top: 50%;
  margin-top: -15px;
  color: #ccc;
  font-size: 14px;
}

.comm-editor-body__title {
  display: flex;
  align-items: center;
  text-align: center;
  width: 50%;
  margin: 55px 0 40px;
}

.txt {
  width: 720px;
  min-height: 450px;
  height: auto;
  font-size: 16px;
  line-height: 1.5;
  color: #777
}

.header {
  overflow: hidden;
  background-color: #fff;
  padding: 20px 10px;
  border-bottom: 1px solid gray;
}

.comm-editor-header__logo--title {
  margin-top: 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

.header button {
  border: solid red thin;
  color: red;
  margin-top: 0px;
  width: 145px;
  height: 65px;
  margin-left: 20px;
  float: left;
  text-align: center;
  padding: 12px;
  font-size: 18px;
  padding: 10px;
  border-radius: 5px;
  background: white;
  font-weight: 500;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header button:hover {
  background-color: rgb(245, 54, 54);
  color: white;

}

.header button.active {
  background-color: rgb(245, 54, 54);
  color: rgb(245, 54, 54);
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }

  .header-right {
    float: none;
  }
}

div {
  align-items: center;
}

.is-danger {
  color: #ed2650;
  font-weight: normal;
}

.coll_h3 {
  display: block;
  margin-bottom: 13px;
  font-size: 18px;
  font-weight: 600;
  line-height: 1.1;
  color: #333;
}

.collapsible {
  border: 1px solid #ccc;
  text-align: center;
  background-color: white;
  color: black;
  cursor: pointer;
  padding: 18px;
  width: 50%;
  border: none;
  outline: none;
  font-size: 15px;
  position: relative;
  margin-bottom: 20px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
}



.arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.up {
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  background-color: #f1f1f1;
  align-items: right;
  text-align: center;
}

.hi {
  display: inline-block;
  background-color: white;
}

input[type=text],
select,
textarea {
  width: 100%;
  /* Full width */
  padding: 12px;
  /* Some padding */
  border: 1px solid #ccc;
  /* Gray border */
  border-radius: 4px;
  /* Rounded borders */
  box-sizing: border-box;
  /* Make sure that padding and width stays in place */
  margin-top: 6px;
  /* Add a top margin */
  margin-bottom: 16px;
  /* Bottom margin */
  resize: vertical
    /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  width: 50%;
  border-radius: 5px;
  background-color: white;
  padding: 20px;
}


input,
select {
  padding: 5px;
  margin-bottom: 20px;
  background: transparent;
  border: none;
  border-bottom: 1px solid #eee;
}

input::placeholder {
  color: #eee;
}

option {
  background: white;
  border: none;
}

.metod {
  display: flex;
}

input[type=radio] {
  display: none;
}

label.radio {
  position: relative;
  display: inline-block;
  margin-right: 20px;
  text-indent: 32px;
  cursor: pointer;
}

label.radio:before {
  content: "";
  position: absolute;
  top: -1px;
  left: 0;
  width: 17px;
  height: 17px;
  border-radius: 50%;
  border: 2px solid #1c87c9;
}

label.radio:after {
  content: "";
  position: absolute;
  width: 8px;
  height: 4px;
  top: 5px;
  left: 5px;
  border-bottom: 3px solid #1c87c9;
  border-left: 3px solid #1c87c9;
  transform: rotate(-45deg);
  opacity: 0;
}

input[type=radio]:checked+label:after {
  opacity: 1;
}

button {
  display: block;
  width: 200px;
  padding: 10px;
  margin: 20px auto 0;
  border: none;
  border-radius: 5px;
  background: #1c87c9;
  font-size: 14px;
  font-weight: 600;
  color: #fff;
}

.hi {
  display: flex;
  flex-direction: column;
}

.form_f {
  display: flex;
}



</style>

</html>