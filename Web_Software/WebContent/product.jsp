<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강한 사람들</title>
</head>


<link rel="stylesheet" href="css/bootstrap.css">

<body>
	<%
		String userID = null;		// 기본적으로 UserID는 NULL임 (로그인 하지 않은 상태)
		if (session.getAttribute("userID") != null) {		//여기서 로그인 했는지 확인하고
			userID = (String) session.getAttribute("userID");	//userID라는 변수에다가 로그인 되어있다면 유저정보를 넣어줌
		}
	%>
	<div class="navbar wrapper">
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
				<li class="active"><a href="product.jsp">건강식품</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> Contect <span class="caret"></span>
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

    <ul class="nav nav-tabs"id="myTab">
<li class="active"><a href="#tab1" data-toggle="tab">식재료</a></li>
    <li><a href="#tab2" data-toggle="tab">음료</a></li>
    <li><a href="#tab3" data-toggle="tab">과일과 채소</a></li>
    <li><a href="#tab4" data-toggle="tab">견과류</a></li>
     <li><a href="#tab5" data-toggle="tab">기타</a></li>
    </ul>

<div class="tab-content"id="myTabContent"> 
<div class="tab-pane active" id="tab1">
  <div class="product">

      <hr class="featurette-divider">

     <div class="row featurette">
        <div  class="col-md-5 col-md-push-4">
          <h2 style = "font-weight:bold" class="featurette-heading">계란<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">면역력강화, 뇌기능유지도움,간건강 개선, 눈 건강 개선</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">고지혈증(콜레스테롤 함류)</p>
         <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">간장계란밥, 계란말이, 계란찜</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">닭가슴살<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">근육강화, 두뇌발달, 신진대사, 노화방지, 체중감량, 혈압조절</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">고지혈증(콜레스테롤 함류), 통풍</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">닭가슴살 셀러드,닭가슴살 냉채</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">오리고기<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">피로해소, 다이어트, 독소배출</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">차가운성질(수족냉증)
                           <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">오리고기 훈제, 오리고기 냉채</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">연어<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">뼈와 관절에 좋음(골다공증예방), 눈건강,혈관건강,피부미용
</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">출혈성질환에 안좋음</p>
                           <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">연어회, 연어 셀러드</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">치즈<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">뼈,근육발달, 당뇨병예방, 숙취해소,피부미용,눈건강,빈혈예방,변비예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">염분과 지방의 함류가 높아 체중증가, 유제품 알러지제품</p>
                           <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">치즈 퐁듀, 콘치즈</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">참치<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">간 건강에 도움, 혈압조절, 항산화작용, 단백질, 다이어트, 성인병예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">중금속포함(임산부조심)
                           <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">참치회, 참치마요</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">고구마<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">항암효과, 변비, 다이어트, 노화방지</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">요로결석, 당뇨</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">고구마튀김, 고구마맛탕</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">새우<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">심혈관 질환 개선, 다이어트, 변비개선, 피부개선, 면역력증진</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">알레르기, 과다섭취시 통풍</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">새우튀김, 삶은새우</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">표고버섯<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">다이어트, 성인병 예방, 골다공증 예방, 면역력 개선</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">과다섭취시에 발진, 당뇨약에 상극</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">표고버섯 볶음, 표고버섯 찜</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">돼지고기<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">성인병 예방, 노화방지, 피로회복, 빈혈예방</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">수족냉증,복통</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">돼지고기 구이, 돼지고기 김치찌개</p>
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
          <h2 style = "font-weight:bold" class="featurette-heading">소고기<br><span style = "font-size:0.8em" class="text-muted"></span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-size:25px;font-weight:bold; color:blue; display:inline-block" class="lead">효능</p> 
         <p style = "font-weight:bold" class="lead">소화기관 강화, 혈액순환 원활, 위기능 강화</p>
       <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">부작용</p> 
         <p style = "font-weight:bold" class="lead">고지혈증(콜레스테롤 함류)</p>
                  <p style = "font-size:25px;font-weight:bold; color:green; display:inline-block" class="lead">추천 요리</p>
         <p style = "font-weight:bold" class="lead">소고기 무국, 소고기 구이</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-5">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">구매하기</button>
      </div>

</div>
        </div>

 <div class="tab-pane" id="tab2">
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

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm1">
    <div class="modal-content">
    <br>
    구매완료
    <br>
    </div>
  </div>
</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js">
	 </script>
</body>


</html>
