<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.Board"%>
<%@ page import="board.BoardDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>건강한 사람들</title>
</head>


<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int boardID = 0;
		if (request.getParameter("boardID") != null) {
			boardID = Integer.parseInt(request.getParameter("boardID"));
		}
		if (boardID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'board.jsp'");
			script.println("</script>");
		}

		Board board = new BoardDAO().getBoard(boardID);
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
				<li class = "active"><a href="board.jsp">게시판</a></li>
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
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colsapn="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= board.getBoardTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= board.getUserID() %></td>
					</tr>
					<tr>
						<td>작성 일자</td>
						<td colspan="2"><%= board.getBoardDate().substring(0,11)+board.getBoardDate().substring(11,13)+ "시" + board.getBoardDate().substring(14,16)+"분" %></td>
					</tr>
					<tr>
						<td>게시물 신고 횟수</td>
						<td colspan="2"><%= board.getBoardBad() %></td>
					</tr>
					<tr>
						<td>본문</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%= board.getBoardContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="board.jsp" class="btn btn-primary">목록</a>
			
			<%
				if(userID != null ){
			%>
			<a href="reportAction.jsp?boardID=<%= boardID %>"
				class="btn btn-danger">신고</a>
			<%
				}
			%>
				
			<%
				if(userID != null && userID.equals(board.getUserID())){
			%>
			<a href="update.jsp?boardID=<%= boardID %>" class="btn btn-warning">수정</a>
			<a href="deleteAction.jsp?boardID=<%= boardID %>"
				class="btn btn-danger">삭제</a>
			<%
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js">
	 </script>
	 
  <div class="container marketing">
  
  <hr class="featurette-divider">
  
  <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>2021 OpenSource_Web, Team_2.</p>
    </footer>
  
  </div>
</body>

</html>
