<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="advance.product.org_product" %>
<%@ page import="advance.product.productDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="product" class="advance.product.org_product" scope="page"/>
<jsp:setProperty name="product" property="productID"/>
<jsp:setProperty name="product" property="Oid"/>
<jsp:setProperty name="product" property="productNumber"/>
<jsp:setProperty name="product" property="productName"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>투명한 기부 플랫폼</title>
</head>
<body>
    <%
        PrintWriter script =response.getWriter();
        script.println("<script>
            console.log("action했다..");
        </script>");
        String Oid = null;
        if (session.getAttribute("Oid") != null){
            Oid = (String) session.getAttribute("Oid");
        }
        if (Oid == null){
            PrintWriter script =response.getWriter();
            script.println("<script>
                alert('기부 단체로 로그인을 하세요.');
                location.href='login_a.jsp';
            </script>");
        } else {
            if (product.getProductNumber() ==null || product.getProductName() ==null) {
                PrintWriter script =response.getWriter();
                script.println("<script>
                    alert('입력되지 않은 항목이 있습니다.');
                    history.back();
                </script>");
            } else {
                productDAO productDAO = new productDAO();

                int result = productDAO.productWrite(product.getProductID(), product.getProductNumber(), product.getProductName());

                if(result == -1) {
                    PrintWriter script =response.getWriter();
                    script.println("<script>
                        alert('글쓰기에 실패했습니다.');
                        history.back();
                    </script>");
                } else {
                    PrintWriter script =response.getWriter();
                    script.println("<script>
                        location.href='product_show.jsp';
                    </script>");
                }
            }
        }
    %>
</body>
</html>