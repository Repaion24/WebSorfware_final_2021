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
				<li><a href="product.jsp">건강식품</a></li>
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
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="img/fruit-3661159_1920.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>건강한 사람들</h1>
              <p>지금 가입하시고 많은 사람들과 건강음식에 대한 정보를 주고받으세요</p>
              <p><a class="btn btn-lg btn-warning" href="join.jsp" role="button">회원가입</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/raspberry-3176371_1920.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>건강한 사람들</h1>
              <p>그냥 먹어도 좋지만 알고 먹으면 더 좋습니다</p>
              <p><a class="btn btn-lg btn-warning" href="board.jsp" role="button">건강음식 알아보기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/tea-783352_1920.jpg" alt="Third slide">
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
	
	
	
	
	
	
	



	





	<div class="container marketing">


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">건강식품 소개 <span class="text-muted">Introduction to Healthy Foods</span></h2>
          <p class="lead">여기 설명좀 추가해줘</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="img/herbal-tea-1410565_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">건강식품 장단점 정보 제공<span class="text-muted"><br />Providing information of healthy foods pros and cons</span></h2>
          <p class="lead">여기 설명좀 추가해줘</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="img/loverna-journey-5kb0HwTHqTg-unsplash.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">건강식품 정보 커뮤니티 <span class="text-muted"><br />Healthy Foods Information Community</span></h2>
          <p class="lead">여기 설명좀 추가해줘</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="img/vegetables-752153_1280.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">


      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>2021 OpenSource_Web, Team_2.</p>
      </footer>







	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js">
	 </script>
</body>


</html>