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

		<div class="jumbotron" style="background-color: #FBF6C3 !important;">
			<div class="row">
				<h1>건강식품</h1>
				<div class="col-md-1"></div>
				<div class="col-md-11">
					<h2>- 음료들의 정보를 확인하세요!</h2>
				</div>
			</div>

		</div>

		<div class="product" align = "center">
	<script>
		document.write(`<div class="row">`);
		
		var food_benefit = [['생강차','해독작용','체내 냉기제거','당뇨 예방'],
			['오렌지주스','빈혈예방','면역력 강화','영양소 풍부'],
			['석류주스','갱년기 증상 개선','피부노화 방지','탈모 예방효과'],
			['요거트','감기예방 효과','충치예방 효과','다이어트 도움'],
			['미숫가루','변비예방','피부미용 도움','다이어트 식사대용'],
			['보이차','노화방지','변비 완화','성인병 예방']];
		var warn_recoman = [['의궤양환자 조심','치질환자 조심'],
			['혈압약 복용시 조심','역류성 식도염 환자 조심'],
			['석류 알레르기','혈압약과 상극'],
			['빈혈 위험','메스꺼움,갈증 유발'],
			['과다복용시 구토유발','복통 위험'],
			['카페인 함유','임산부 위험']];
		var imgarray = ['ginger_tea','orange_juice','pomegranate','yoghurt','mixed_grain_powder','black_tea'];
		
		for(var i=0;i<6;i++){
			document.write(`<div class="col-sm-6 col-md-4">`);
				document.write(`<div class="thumbnail">`);
					document.write(`<img src="img/`+imgarray[i]+`.jpg" alt="Generic placeholder image"  width="300">`);
						document.write(`<div class="caption">`);
						document.write(`<h3>`+food_benefit[i][0]+`</h3>`);
						document.write(`<table border="1" width="300">`);
							document.write("<tr>");
								document.write(`<td align = "center" style="padding:5px"> 효능</td>`);
								document.write("<td>");
								document.write("<ul>");
									for(var j=1;j<4;j++)
									{document.write(`<li class="list-item">`+food_benefit[i][j]+`</li>`);}
								document.write("</ul>");
								document.write("</td>");
							document.write("</tr>");
							document.write("<tr>");
								document.write(`<td align = "center" style="padding:5px" > 부작용 </td>`);
								document.write("<td>");
								document.write("<ul>");
								for(var m=0;m<2;m++)
									{document.write(`<li class="list-item">`+warn_recoman[i][m]+`</li>`);}
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
