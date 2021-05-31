<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.Board"%>
<%@ page import="board.BoardDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport"
content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
</head>


<body>
<% 
//로긴한사람이라면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
} 
if (userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요.')");
	script.println("location.href = 'login.jsp'");
	script.println("</script>"); 
} 
int boardID = 0;
if(request.getParameter("boardID")!= null){
	boardID = Integer.parseInt(request.getParameter("boardID")); 
} 
if(boardID==0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("location.href = 'board.jsp'");
	script.println("</script>"); 
} 
Board board = new BoardDAO().getBoard(boardID);
if(!userID.equals(board.getUserID())){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('권한이 없습니다.')");
	script.println("location.href = 'board.jsp'");
	script.println("</script>");
}








%> 



<!-- 네비게이션 --> 
<nav class="navbar navbar-default">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="bs-example-navbar-collapse-1" aria-expaned="false">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="main.jsp">우리 사이트 이름</a>
 </div>
 <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
 <ul class="nav navbar-nav">
 <li><a href="main.jsp">메인</a></li>
 <li class="active"><a href="board.jsp">게시판</a></li>
 </ul> 
 <% 
 //라긴안된경우
 if (userID == null) {
	 %> 
	 <ul class="nav navbar-nav navbar-right">
	 <li class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	 접속하기
	 <span class="caret"></span>
	 </a> <ul class="dropdown-menu">
	 <li>
	 <a href="login.jsp">로그인</a>
	 </li>
	 <li><a href="join.jsp">회원가입</a></li>
	 </ul>
	 </li>
	 </ul> 
	 <% 
	 } else { 
	 %> 
	 <ul class="nav navbar-nav navbar-right">
	 <li class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	 회원관리
	 <span class="caret"></span>
	 </a> <ul class="dropdown-menu">
	 <li><a href="logoutAction.jsp">로그아웃</a></li>
	 </ul>
	 </li>
	 </ul>
	 <%
	 }
	 %>
	 </div>
	 </nav>
	 
	 
	 <!-- 게시판 --> 
	 <div class="container">
	 <div class = "row">
	 <form method ="post" action="updateAction.jsp?boardID=<%= boardID %>">
	 <table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
	 <thead>
	 <tr>
	 <th colsapn="2" style="background-color: #eeeeee; text-align: center;">게시판 글 수정</th>
	 </tr>
	 </thead>
	 
	 <tbody>
	 
	 <tr>
	 <td>
	 	<input type ="text" class ="form-control" placeholder="글 제목" name ="boardTitle" maxlength="50" value="<%=board.getBoardTitle()%>">
	 </td>
	 </tr>
	 <tr>
	 <td>
	 	<textarea class ="form-control" placeholder="글 내용" name ="boardContent" maxlength="2048" style ="height: 350px;"><%=board.getBoardContent()%></textarea>
	 </td>
	 </tr>

	 
	 </tbody> 
	 </table> 
	 <input type = "submit" class="btn btn-primary pull-right" value="글수정">
	 </form>
	 </div> 
	 </div> 
	 <!-- 애니매이션 담당 JQUERY --> 
	 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	 <!-- 부트스트랩 JS -->
	 <script src="js/bootstrap.js">
	 </script>
	 
</body>
	 
</html>