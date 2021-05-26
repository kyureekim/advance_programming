
<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="product.productVO" %>
<%@ page import="product.productDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="product" class="product.productVO" scope="page"/>
<jsp:setProperty name="product" property="*" />

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>투명한 기부 플랫폼</title>
</head>
<body>
    <%
        //PrintWriter script =response.getWriter();
        //script.println("<script>");
        //script.println("</script>");
        String Oid = null;
        if (session.getAttribute("Oid") != null){
            Oid = (String) session.getAttribute("Oid");
        }
        
        String productNumber = request.getParameter("productNumber");
        String productName = request.getParameter("productName");
        
        if (Oid == null){
            PrintWriter script =response.getWriter();
            script.println("<script>");
            script.println("alert('기부 단체로 로그인을 하세요.')");
            script.println("location.href='login_org.jsp'");
            script.println("</script>");
        } else {
            if (
                    //product.getProductNumber() == null ||
                    product.getProductName() == null) {
                PrintWriter script =response.getWriter();
                script.println("<script>");
                script.println("alert('입력되지 않은 항목이 있습니다.')");
                script.println("history.back()");
                script.println("</script>");
            } else {
                productDAO productDAO = new productDAO();
                int result = productDAO.productWrite(Oid, productNumber, productName);
                if(result == -1) {
                    PrintWriter script =response.getWriter();
                    script.println("<script>");
                    script.println("alert('글쓰기에 실패했습니다.')");
                    script.println("history.back()");
                    script.println("</script>");
                } else{
                    PrintWriter script =response.getWriter();
                    script.println("<script>");
                    script.println("location.href='product_show.jsp'");
                    script.println("</script>");
                }
            }
        }
    %>
</body>
</html>