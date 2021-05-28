<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="org.orgDAO" %>
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
  %>
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->
      <div id="main">
        <div class="inner">
          <!-- Header -->
          <header id="header">
            <h2>물품 등록</h2>
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

          <!-- Content -->
          <section>
            <!-- Content -->
            <h2 id="content">필요한 물품과 수량을 입력해주세요.</h2>
            <form method="post" action="product_apply_service.jsp">
              <div class="row">
                <div class="col-3 col-12-small product">
                  <h3>물품</h3>
                    <input
                      type="text"
                      name="productName"
                      id="productName"
                      placeholder="물품명을 입력하세요."
                    />
                </div>
                <div class="col-3 col-12-small amount">
                  <h3>수량</h3>
                    <input
                      type="text"
                      name="productNumber"
                      placeholder="물품개수를 입력하세요."
                    />
                </div>
              </div>
              <div class="success-btn">
                <input type="submit" value="등록완료" class="button large" />
              </div>
            </form>
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
  </body>
</html>