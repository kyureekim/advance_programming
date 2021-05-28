<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="document.Document" %>
<%@ page import="document.documentDAO" %>
<%@ page import="point.Point" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="document" class="document.Document" scope="page"/>
<jsp:setProperty name="document" property="*" />

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
		String Oid = null;
		if (session.getAttribute("Oid") != null){
		    Oid = (String) session.getAttribute("Oid");
		}
		
		documentDAO documentDAO = new documentDAO();
		Point point = new Point();
		String productname = point.getPointproduct();
		int result = documentDAO.write(document.getDocumentID(), Oid, productname, document.getDocumentStatement());
		
		if (Oid == null) {
			PrintWriter script =response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 해주세요.')");
            script.println("location.href='login_org.jsp'");
            script.println("</script>");
		} else {
			if(result == -1) {
	            PrintWriter script =response.getWriter();
	            script.println("<script>");
	            script.println("alert('공유서류작성에 실패했습니다.')");
	            script.println("history.back()");
	            script.println("</script>");
	        } else{
	            PrintWriter script =response.getWriter();
	            script.println("<script>");
	            script.println("location.href='org_mypage.jsp'");
	            script.println("</script>");
	        }
		}
%>
</body>
</html>