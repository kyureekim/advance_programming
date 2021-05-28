<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>투명한 기부</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
	<%
  	String Oid =null;
	if (session.getAttribute("Oid") != null){
		Oid = (String)session.getAttribute("Oid");
	}
	
	if (Oid != null){
        PrintWriter script =response.getWriter();
        script.println("<script>");
        script.println("alert('이미 로그인 되어있습니다.')");
        script.println("location.href='index.jsp'");
        script.println("</script>");
    }
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index_a.jsp" class="logo"><strong>기부</strong> &nbsp'나만의 투명한 기부 참여'</a>
								</header>


							<!-- Banner -->
								<section id="banner">
										<div class="col-12 col-2-medium">
                                            <h4>Log IN</h4>
											<form method="get" action="login_org_service.jsp">
												<div class="row gtr-uniform">
													<div class="col-6 col-12-xsmall">
														<input type="email" name="Oid" id="Oid" value="" placeholder="email" />
													</div>
													<div class="col-6 col-12-xsmall">
														<input type="password" name="orgPassword" id="orgPassword" value="" placeholder="password" />
													</div>
                                                    <td colspan="2"><div align="center">
                                                        <INPUT TYPE="SUBMIT" NAME="Submit" VALUE="login">
                                                        <INPUT TYPE="RESET" VALUE="cancle"></td>
												</div>
											</form>
										</div>
								</section>
						</div>
					</div>

		<!-- Sidebar -->
      <div id="sidebar">
        <div class="inner">
          <!-- Menu -->
          <nav id="menu">
            <header class="major">
              <h2><a href="org_main.jsp">NE donation</a></h2>
            </header>
            <ul>
              <h3>로그인을 해주세요.</h3>
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