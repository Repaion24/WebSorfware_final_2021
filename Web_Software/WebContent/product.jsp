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
	
	<%
		//여기까지가 Navbar고 나머지 상품 소개 및 부작용, 구매버튼, 효과등등을 적어주세요  (nav바 건들지 말것)
	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



	  <div class="container marketing">
  
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