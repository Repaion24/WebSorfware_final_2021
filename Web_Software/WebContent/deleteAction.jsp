<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO"%>
<!-- userdao의 클래스 가져옴 -->
<%@ page import="board.Board"%>
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<% 
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID"); 
} 
if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요')");
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
	script.println("</script>"); } 
else{
		BoardDAO boardDAO = new BoardDAO();
		int result = boardDAO.delete(boardID);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>"); 
			script.println("alert('글삭제에 실패하였습니다.')"); 
			script.println("history.back()"); 
			script.println("</script>"); 
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글삭제가 정상적으로 처리되었습니다.')");
			script.println("location.href = 'board.jsp'");
			script.println("</script>"); 
			} 
	} 
	%>
</body>
</body>
</html>
