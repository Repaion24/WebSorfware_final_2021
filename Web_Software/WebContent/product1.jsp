<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강한 사람들</title>
<style type="text/css">
.line{border:1px solid black;}
ul{
padding-left:20px;
}
</style>

</head>


<link rel="stylesheet" href="css/bootstrap.css">

<body>
	<%
		String userID = null;		// 기본적으로 UserID는 NULL임 (로그인 하지 않은 상태)
		if (session.getAttribute("userID") != null) {		//여기서 로그인 했는지 확인하고
			userID = (String) session.getAttribute("userID");	//userID라는 변수에다가 로그인 되어있다면 유저정보를 넣어줌
		}
	%>
	<div class="navbar wrapper col-auto">
		<div class="container">
	<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">건강한 사람들</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">MAIN</a></li>
				<li><a href="board.jsp">게시판</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 건강식품 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="product1.jsp">식재료</a></li>
						<li><a href="product2.jsp">음료</a></li>
						<li><a href="product3.jsp">과일/채소</a></li>
						<li><a href="product4.jsp">견과류</a></li>
						<li><a href="product5.jsp">기타</a></li>
					</ul></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> Contact <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> 회원관리 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
			</div>
			
			</div>
			</nav>
		</div>
	</div>
<div class="container">

  <!-- <ul class="nav nav-tabs"id="myTab">
	<li class="active"><a href="#tab1" data-toggle="tab">식재료</a></li>
    <li><a href="#tab2" data-toggle="tab">음료</a></li>
    <li><a href="#tab3" data-toggle="tab">과일과 채소</a></li>
    <li><a href="#tab4" data-toggle="tab">견과류</a></li>
    <li><a href="#tab5" data-toggle="tab">기타</a></li>
  </ul>-->
  
  <div class="jumbotron" style="background-color: #FBF6C3 !important;">
<div class="row">
  <h1>건강식품</h1>
  <div class="col-md-1">
  </div>
  <div class="col-md-11">
  <h2> - 식재료들의 정보를 확인하세요!</h2>
  </div>
  </div>
  
</div>
  
 <div class="product" align = "center">
	<script>
		document.write(`<div class="row"> <!-- 여기에 3개씩 넣으면 된다! -->`);
		
		var food_benefit = [['계란','면역력강화','뇌기능 유지도움','간 건강개선'],
			['닭가슴살','면역력강화','뇌기능 유지도움','간 건강개선'],
			['오리고기','순환기계 질병예방','신장질환 완화','호흡기 질병예방'],
			['연어','골다공증예방','시력강화(오메가3)','체내 염증 감소'],
			['치즈','뼈와 근육발달 도움','당뇨병 예방','숙취해소'],
			['참치','혈압조절','항산화작용','성인병예방'],
			['고구마','항암효과','변비 해결','노화방지'],
			['새우','심혈관질환 개선','면역력증진','혈액순환 촉진(타우린)'],
			['표고버섯','면역력 증진','비타민D 풍부','성장발육 도움'],
			['돼지고기','성인병 예방','빈혈예방','노화방지'],
			['소고기','위기능 강화','혈액순환 원활','소화기간 도움']];
		var warn_recoman = [['고지혈증 유발(콜레스테롤)','생달걀 섭취시 소화불량','계란말이'	,'계란찜','계란볶음밥'],
			['붓기 발생','피로감 증가 및 만성화','닭강정','닭가슴살 샐러드','닭가슴살 구이'],
			['수족냉증 악화','혈관 막힘(포화지방)','훈제 오리고기','오리고기 냉채','오리고기 샐러드'],
			['출혈성질환 악화','기생충 위험','연어회','연어샐러드','연어구이'],
			['체중증가(고염분,고지방)','유제품 알러지유발','치즈 퐁듀','콘치즈','치즈피자'],
			['임산부조심(중금속포함)','기생충 위험','참치회','참치마요덮밥','참치고추장볶음밥'],
			['요로결석 유발','당뇨 위험','고구마튀김','고구마맛탕','찐고구마'],
			['갑각류 알러지','과다섭취시 통풍위험','새우튀김','삶은새우','소금구이새우'],
			['과다섭취시 발진위험','당뇨환자조심(당뇨약과 상극)','표고버섯 볶음','표고버섯 찜','표고버섯 덮밥'],
			['설사유발(차가운성질)','한약복용시 위험','돼지고기볶음','돼지고기 간장구이','삼겹살구이'],
			['고지혈증 유발(콜레스테롤)','과다섭취시 피부질환 위험','소고기구이','소고기미역국','소고기마파두부']];
		var imgarray=['eggimg','chicken','smokedduckimg','salmon','cheese','tuna','sweetpotato','shirmp','mushrooms','pork','cow'];
		
		for(var i=0;i<11;i++){
			document.write(`<div class="col-sm-6 col-md-4">`);
				document.write(`<div class="thumbnail">`);
					document.write(`<img src="img/`+imgarray[i]+`.jpg" alt="Generic placeholder image" width="300" >`);
						document.write(`<div class="caption">`);
						document.write(`<h3>`+food_benefit[i][0]+`</h3>`);
						document.write(`<table border="1" width="300">`);
							document.write("<tr>");
								document.write(`<td align = "center" > 효능</td>`);
								document.write("<td>");
								document.write("<ul>");
									for(var j=1;j<4;j++)
									{document.write(`<li class="list-item">`+food_benefit[i][j]+`</li>`);}
								document.write("</ul>");
								document.write("</td>");
							document.write("</tr>");
							document.write("<tr>");
								document.write(`<td align = "center"  > 부작용 </td>`);
								document.write("<td>");
								document.write("<ul>");
								for(var m=0;m<2;m++)
									{document.write(`<li class="list-item">`+warn_recoman[i][m]+`</li>`);}
								document.write("</ul>");
								document.write("</td>");
							document.write("</tr>");
							document.write(" <tr>");
								document.write(`<td align = "center" > 추천요리</td>`);
								document.write("<td>");
								document.write("<ul>");
								for(var n=2;n<5;n++)
									{document.write(`<li class="list-item">`+warn_recoman[i][n]+`</li>`);}
								document.write("</ul>");
								document.write("</td>");
							document.write("</tr>");
						document.write(" </table>");
		
						document.write(`<p><button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button></p>`);
						
						document.write("</div>");
				document.write("</div>");
			document.write("</div>");
		}
	</script>
</div>

</div>


<!-- 
  <div class="product2">

      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">생강차<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">해독작용, 냉기제거, 당뇨와 고열압에 도움</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">임산부에게 안좋음, 위궤양환자</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">오렌지주스<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">빈혈예방, 스트레스 해소, 피부 미용,면역력 강화
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">혈압 약과 상극</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">석류주스<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">갱년기 증상 개선, 피부 노화, 항암효과, 탈모 예방, 혈압 조절</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알레르기 증상, 혈얍 약과 상극

</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">요거트
<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">변기, 감기예방, 충치예방, 다이어트
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">빈혈, 피부 노화, 골다공증
</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">미숫가루<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">변비예방, 다이어트,피부미용
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과잉섭취시 구토, 복통
</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">보이차
<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">노화방지, 성인병 예방,다이어트 변비 완화</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">카페인 과다

</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>

</div></div>

</div>   
<div class="tab-content"id="myTabContent">
   <div class="tab-pane" id="tab3" >
  <div class="product3">

      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">블루베리<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">다이어트, 노화방지, 혈압 저하, 콜레스테롤 안정, 항암효능
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">보고된 부작용 없음</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">시금치<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">눈건강, 변비, 다이어트, 탈모예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">많이 먹을 시에 신장과 방광에 결석위험</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">아보카도
<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">다이어트, 심장질환 예방, 해독작용</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알러지
</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">방울토마토
<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">항암작용, 노화방지,피로해소,당뇨병해소,다이어트

</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">복통,냉증
</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">바나나<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">혈압상승억제,불면증 예방, 노화방지
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">공복에 많이 먹을시에 심장에 좋지않다</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
      <hr class="featurette-divider">
           <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">브로콜리
<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">항암효과,소화기능강화,시력건강,다이어트,피부건강</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알레르기, 갑상선기능저하

</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>


</div></div>
</div> 
 
 <div class="tab-content"id="myTabContent">
 <div class="tab-pane" id="tab4" >
 <div class="product4">
      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">아몬드<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">혈압조절, 콜레스테롤 조절, 뇌 기능강화</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알러지, 과다섭취시 복통</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">호두<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">다이어트, 동맥경화 예방, 치매 예방, 피부건강, 고혈압 예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과다 섭취시 변비</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">땅콩<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">고혈압 예방, 노화방지, 두뇌발달, 다이어트</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알레르기, 과다섭취시 소화불량</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">마카다미아<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">뇌건강, 항암작용, 골다공증 예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과다섭취시에 복통</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">
		</div>
	</div>
</div>

<div class="tab-content"id="myTabContent">
 <div class="tab-pane" id="tab5" >
 <div class="product5">

      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">김치<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">항산화작용, 항암작용, 고혈압예방, 면역력 향상</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과다섭취시에 고혈압</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">다크초콜릿<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">치아건강, 스트레스 완화, 심혈관 질환 개선, 숙면에 도움</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">편두통, 과다섭취시에 불면증, 요로결석</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">우유<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">뼈 건강에 도움, 불면증과 우울증 완화, 다이어트, 변비개선, 충치예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과다섭취시에 철분결핍,유당불내증과 상극</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">홍삼<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">항암효과, 숙취제거, 아토피 개선, 노화방지, 혈액순환</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">간수치가 높은 사람과 상극,소화불량이 있는 사람과 상극, 어린이는 상담후 복용</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
       <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">프로틴<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">다이어트, 뼈와 치아에 도움, 근육 생성에 도움</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">간과 신장기능에 부담, 통풍 유발</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>
</div>
</div>
</div>
-->


	<hr class="featurette-divider">
	
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>2021 OpenSource_Web, Team_2.</p>
      </footer>

</div>	<!-- container div -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">구매 확인</h4>
      </div>
      <div class="modal-body">
        <p>저희 사이트를 이용해 주셔서 감사합니다~</p>
        <p><br>부디 건강해지시길 바랄게요!!</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js">
	 </script>
	 
	 
</body>


</html>
