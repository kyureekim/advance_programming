<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.orgDAO" %>

<jsp:useBean id="org" class="org.Org" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		//객체 생성
		orgDAO orgDAO = new orgDAO();
		String Oid = request.getParameter("Oid");
		String orgPassword =request.getParameter("orgPassword");
		int result = orgDAO.login(Oid, orgPassword);
		
		//로그인 성공
		if(result == 1){
			session.setAttribute("Oid", Oid);
			session.setAttribute("orgPassword", orgPassword);
			PrintWriter script = response.getWriter();
			script.println("<script>alert('로그인 성공'); location.href = 'org_mypage.jsp';</script>");
		}
		//로그인 실패
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//아이디 없음
		else if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디 입니다.')");
		script.println("history.back()");
		script.println("</script>");
		}
		//DB오류
		else if(result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
		}
%>
</body>
</html>