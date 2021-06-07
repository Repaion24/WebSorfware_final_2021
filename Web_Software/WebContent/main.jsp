<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강한 사람들</title>
</head>


<link rel="stylesheet" href="css/bootstrap.css">
<link href="carousel.css" rel="stylesheet">

<body>

	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
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
				<li class="active"><a href="main.jsp">MAIN</a></li>
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="img/fruit-3661159_1920.jpg" alt="First slide" height="700">
          <div class="container">
            <div class="carousel-caption">
              <h1>건강한 사람들</h1>
              <p>지금 가입하시고 많은 사람들과 건강음식에 대한 정보를 주고받으세요</p>
              <p><a class="btn btn-lg btn-warning" href="join.jsp" role="button">회원가입</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/raspberry-3176371_1920.jpg" alt="Second slide" height="700">
          <div class="container">
            <div class="carousel-caption">
              <h1>건강한 사람들</h1>
              <p>그냥 먹어도 좋지만 알고 먹으면 더 좋습니다</p>
              <p><a class="btn btn-lg btn-warning" href="product.jsp" role="button">건강음식 알아보기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/tea-783352_1920.jpg" alt="Third slide" height="700">
          <div class="container">
            <div class="carousel-caption">
              <h1>건강한 사람들</h1>
              <p>주변 사람들과 건강음식에 대한 정보를 나누세요</p>
              <p><a class="btn btn-lg btn-warning" href="board.jsp" role="button">사람들과 소통하기</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>
	
	
	
	
	
	
	



	





	<div class="container marketing">


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div  class="col-md-7">
          <h2 style = "font-weight:bold" class="featurette-heading">건강식품 소개 <span style = "font-size:0.8em" class="text-muted"><br>Introduction to Healthy Foods</span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = " font-weight:bold; display:inline-block" class="lead"><br>평소 골고루 잘 챙겨 먹었지만 </p>
          <p style = "font-size:25px;font-weight:bold; color:lime; display:inline-block"> 정확한 효능</p>
          <p style = "font-weight:bold; display:inline-block"class="lead">은 알고 계셨나요?<br></p>
           <p style = "font-weight:bold" class="lead">"건강한 사람들"에서는 도움이 되는 건강식품을 소개해 드립니다!<br></p>
           <p style = "font-weight:bold" class="lead">원하는 건강식품 정보를 검색하고 확인해 보세요!</p>
           </div>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="img/herbal-tea-1410565_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div  class="col-md-7 col-md-push-5">
          <h2 style = "font-weight:bold" class="featurette-heading">건강식품 장단점 정보 제공<span style = "font-size:0.8em" class="text-muted"><br />Providing information of healthy foods pros and cons</span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-weight:bold" class="lead"><br>그저 몸에 좋다고만 해서 구별없이 건강식품을 먹을 순 없죠..</p>
          <p style = "font-size:25px;font-weight:bold; color:red; display:inline-block" class="lead">혹시 모를 위험을</p> 
          <p style = "font-weight:bold; display:inline-block" class="lead">예방하기 위해 잘 확인하는게 좋겠죠?</p>
          <p style = "font-weight:bold" class="lead">"건강한 사람들"은 건강식품의 장점과 단점을 동시에 알려드립니다!</p>
          </div>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 style = "font-weight:bold" class="featurette-heading">건강식품 정보 커뮤니티 <span style = "font-size:0.8em" class="text-muted"><br />Healthy Foods Information Community</span></h2>
          <div style="border:1px solid black ; border-radius : 5px; padding: 10px">
          <p style = "font-weight:bold" class="lead"><br>건강식품으로 궁금한건 있고.. 어디 물어볼데는 없고...</p>
          <p style = "font-weight:bold" class="lead">"건강한 사람들"커뮤니티에서 많은 사람들과 대화해보세요!</p>
          <p style = "font-size:25px; font-weight:bold; color:orange; display:inline-block" class="lead">생생한 후기</p>
          <p style = "font-weight:bold; display:inline-block" class="lead">를 읽고, </p>
          <p style = "font-size:25px; font-weight:bold; color:red; display:inline-block" class="lead">잘못 알고 있던 정보</p>
          <p style = "font-weight:bold; display:inline-block" class="lead">를 바로잡으세요!</p>
        </div>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="img/vegetables-752153_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">




	<hr class="featurette-divider">
	
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>2021 OpenSource_Web, Team_2.</p>
      </footer>


	</div>




	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js">
	 </script>
</body>


</html>