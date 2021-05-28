<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="product.productVO" %>
<%@ page import="product.productDAO" %>
<%@ page import="org.Org" %>
<%@ page import="org.orgDAO" %>
<%@ page import="point.Point" %>
<%@ page import="point.pointDAO" %>
<%@ page import="java.util.ArrayList" %>

<jsp:useBean id="product" class="product.productVO" scope="page" />
<jsp:useBean id="org" class="org.Org" scope="page"/>
<jsp:useBean id="point" class="point.Point" scope="page"/>
<!DOCTYPE html>
<html>
  <head>
    <title>투명한 기부</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/org.css " />
  </head>
  <body class="is-preload">
  <%
  	String Oid =null;
	if (session.getAttribute("Oid") != null){
		Oid = (String)session.getAttribute("Oid");
	}
	
	Point Point = new Point();
	pointDAO pointDAO = new pointDAO();
	point = pointDAO.getpoint(Oid);
  %>
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->
      <div id="main">
        <div class="inner">
          <!-- Header -->
          <header id="header">
            <h2>신청한 기부물품</h2>
            <ul class="icons">
              <% 
            	if (Oid == null){
            	%>
              <li>
                <a href="login_org.jsp"><span class="label">Login</span></a>
              </li>
              <%
            	} else {
              %>
              <li>
                <a href="logout_service.jsp"><span class="label">Logout</span></a>
              </li>
              <%
            	}
              %>
            </ul>
          </header>

          <!-- Section -->
          <section>
          	<div class="product-tab">
              <button class="button primary large">
                point
              </button>
              <a href="./point_apply.jsp" class="button large">등록하기</a>
            </div>
            <br>
            <br>
            	<%
            		if(point == null) {
            	%>
            <h3 id="content">필요한 포인트를 등록하지 않았어요.</h3>
            	<%
            		} else{
            	%>
            <h3>필요한 포인트: <%=point.getPoint() %></h3>
            <h3>필요한 물품: <%=point.getPointproduct() %></h3>
            	<%
            		}
            	%>
            <hr>
            <header class="main product-tab">
              <div>
                <button class="button primary large" onclick="productClick()">
                  product
                </button>
                <button class="button primary large" onclick="talentClick()">
                  talent
                </button>
              </div>
              <a href="./product_apply.jsp" class="button large">등록하기</a>
            </header>
          </section>

          <section  style="border-top: none" class="product">
          	<div>
         	  <article>
	         	 <div class="posts">
	            	<% 
	                	productDAO productDAO = new productDAO();
	                	int count = productDAO.count();
	                	if (count != 0) {
	                		for(int i=1; i<count+1; i++){
	                			productVO productVO = new productVO();
	                			product = productDAO.getList(i);
	                			String oid = product.getOid();
	                			
	                			Org Org = new Org();
	                			orgDAO orgDAO = new orgDAO();
	                %>
	              <article>
	                <h4><%=product.getProductName() %></h4>
	                <p><%=product.getProductNumber() %></p>
	                <p><%=orgDAO.getName(oid) %></p>
	              </article>
	              <% 		}
	              		}
	              %>
	           </div>
              </article>
            </div>
          </section>

          <section style="border-top: none" class="talent">
            <div class="posts">
              <article>
                <p>종이접기</p>
              </article>
              <article>
                <p>인형극</p>
              </article>
              <article>
                <p>공부하기</p>
              </article>
            </div>
          </section>
        </div>
      </div>

      <!-- Sidebar -->
      <div id="sidebar">
      <%
      	orgDAO orgDAO = new orgDAO();
      %>
        <div class="inner">
          <!-- Menu -->
          <nav id="menu">
            <header class="major">
              <h2><a href="org_main.jsp">NE donation</a></h2>
            </header>
            <ul>
              <h3><p style="color: #f56a6a; display: inline;"><%=orgDAO.getName(Oid) %></p>님 환영합니다</h3>
              <li><a href="product_show.jsp">기부받기</a></li>
              <li><a href="mall.jsp">MALL</a></li>
              <li>
                <a href="#" class="opener">마이페이지</a>
                <ul>
                  <li><a href="org_mypage.jsp#myInfo">개인정보</a></li>
                  <li><a href="org_mypage.jsp#orgPoint">포인트</a></li>
                  <li>
                    <a href="org_mypage.jsp#orgUsedPoint">포인트 사용내역</a>
                  </li>
                  <li>
                    <a href="org_mypage.jsp#orgProduct">물품 기부내역</a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>

		  <section>
            <header class="major">
              <h2>Get in touch</h2>
            </header>
            <ul class="contact">
              <li class="icon solid fa-envelope"><a href="#">nedonation@donation.com</a></li>
              <li class="icon solid fa-phone">(+82) 10-3116-7130</li>
              <li class="icon solid fa-home">30, Pildong-ro 1-gil, Jung-gu<br />
                Seoul, Republic of Korea</li>
            </ul>
          </section>
        </div>
      </div>
    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/apply.js"></script>
  </body>
</html>
