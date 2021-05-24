<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="document.Document" %>
<%@ page import="document.documentDAO" %>

<jsp:useBean id="document" class="document.Document" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String Oid = null;
		if (session.getAttribute("Oid") != null){
		    Oid = (String) session.getAttribute("Oid");
		}
		
		documentDAO documentDAO = new documentDAO();
		document = documentDAO.getdoc(Oid);
		
		if (Oid == null) {
			PrintWriter script =response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 해주세요.')");
            script.println("location.href='login_org.jsp'");
            script.println("</script>");
		} else {
			int result = documentDAO.delete(document.getProductName());
			PrintWriter script =response.getWriter();
			if (result==-1){
                 script.println("<script>");
                 script.println("alert('공유 서류 삭제에 실패했습니다.')");
                 script.println("history.back()");
                 script.println("</script>");
			} else {
				script.println("<script>");
                script.println("alert('공유 서류 삭제가 되었습니다.')");
                script.println("location.href='org_mypage.jsp'");
                script.println("</script>");
			}
		}

%>
</body>
</html>