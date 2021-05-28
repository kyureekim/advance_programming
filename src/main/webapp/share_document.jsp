<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="org.orgDAO" %>
<%@ page import="document.Document" %>
<%@ page import="document.documentDAO" %>
<!DOCTYPE html>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>투명한 기부</title>
    <link rel="stylesheet" href="assets/css/main.css" />
  </head>
  <body class="is-preload">
  <%
  	String Oid =null;
	if (session.getAttribute("Oid") != null){
		Oid = (String)session.getAttribute("Oid");
	}
	Document document = new Document();
  %>
    <!--Wrapper-->
    <div id="wrapper">
      <div id="main">
        <div class="inner">
          <header id="header">
            <h2>서류 작성하기</h2>
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

          <!--Content-->
          <section>
            <div>작성하신 서류는 사용자에게 공개됩니다.</div>
            <br />
            <div class="col-6 col-12-small">
              <form method="post" action="share_document_service.jsp">
                <div class="box">
                  <h2>공유서류</h2>
                  <p>date : 2021.5.10</p>
                  <input type="file"/> <!-- 프론트에만 박아둘 부분 -->
                </div>
                <div class="box">
                  <h2>사유서</h2>
                  <p>date : 2021.5.10</p>
                  <textarea
                  	placeholder="사유를 작성해주세요."
                  	name="documentStatement"
                  	id="documentStatement"></textarea>
                </div>
                <button
                  type="submit"
                  style="float: right; margin-right: 10px"
                >
                  서류등록
                </button>
              </form>
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
  </body>
</html>