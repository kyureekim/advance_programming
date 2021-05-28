<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="point.Point" %>
<%@ page import="point.pointDAO" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="pointVO" class="point.Point" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
			String Oid =null;
			if (session.getAttribute("Oid") != null){
				Oid = (String)session.getAttribute("Oid");
			}
			Point Point = new Point();
			pointDAO pointDAO = new pointDAO();
			
			pointVO = pointDAO.getpoint(Oid);
			
			int point = Integer.parseInt(request.getParameter("point"));
			String pointproduct = request.getParameter("pointproduct");
			
			if (Oid == null){
	            PrintWriter script =response.getWriter();
	            script.println("<script>");
	            script.println("alert('기부 단체로 로그인을 하세요.')");
	            script.println("location.href='login_org.jsp'");
	            script.println("</script>");
	        } else {
	        	if (pointVO != null){
					PrintWriter script =response.getWriter();
		            script.println("<script>");
		            script.println("alert('이미 등록한 포인트가 있습니다.')");
		            script.println("history.back()");
		            script.println("</script>");
				} else {
					int result = pointDAO.insertPoint(Oid, point, pointproduct);
					PrintWriter script =response.getWriter();
		            script.println("<script>");
		            script.println("location.href='product_show.jsp'");
		            script.println("</script>");
				}
	        }

%>
</body>
</html>