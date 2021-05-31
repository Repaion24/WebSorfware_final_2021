<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %> 
<!-- 자바 클래스 사용 --> 
<% request.setCharacterEncoding("UTF-8"); %> 
<!-- 회원정보를 담는 user클래스를 javabeans 사용--> 
<jsp:useBean id="board" class="board.Board" scope="page" />
<jsp:setProperty name="board" property="boardTitle" />
<jsp:setProperty name="board" property="boardContent" />


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
} else{
	if (board.getBoardTitle() == null || board.getBoardContent() ==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else{
		BoardDAO boardDAO = new BoardDAO();
		//인스턴스생성
		int result = boardDAO.write(board.getBoardTitle(), userID, board.getBoardContent());
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패하였습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기가 정상적으로 처리되었습니다.')");
			script.println("location.href = 'board.jsp'");
			script.println("</script>"); 
		} 
	} 
}
%> 
</body> 
</body> 
</html>
