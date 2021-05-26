<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="product.productVO" %>
<%@ page import="product.productDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>

<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "kim";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "select orgname, oid  from organization";
%> 
	

<jsp:useBean id="product" class="product.productVO" scope="page" />
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

	<!--
		<script>
			function get_src(id){
				var click_id = id;				
			}
		</script> -->
		
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<h1><a href="viewCorp2.jsp">기부가 필요한 단체</a></h1>
									<ul class="icons">
										<li><a href="Login.jsp"><span class="label">Login</span></a></li>
										<li><a href="Login.jsp"><span class="label">Logout</span></a></li>
									</ul>
									
								</header>

         <!-- Section -->
          <section>
            <header class="main">
              <button class="button primary large" onclick="productClick()">
                product
              </button>
              <button class="button primary large" onclick="talentClick()">
                talent
                </button>
            </header>
          </section>

          <section style="border-top: none" class="product">
            <div class="posts">
		    
		    <%
					try {
						// 데이터베이스를 접속하기 위한 드라이버 SW 로드
						Class.forName("oracle.jdbc.driver.OracleDriver");
						// 데이터베이스에 연결하는 작업 수행
						conn = DriverManager.getConnection(url, "kim", "1234");
						// 쿼리를 생성gkf 객체 생성
						stmt = conn.createStatement();
						// 쿼리 생성
						rs = stmt.executeQuery(sql);
					%>

					<%
						while (rs.next()) {
					%>
										
					<article>
               		<a href="corpDetail.jsp?id=<%=rs.getString("oid")%>" class="image" id="images/vol1.jpg" onclick="get_src(this.id)">
                	<img src="images/vol1.jpg" alt=""/>
                	</a>

                	<h3><%=rs.getString("ORGNAME")%></h3>
                	<h3><%=rs.getString("oid")%></h3>
                
              		</article>

	
					<%
						}
					} catch (Exception e) {
					e.printStackTrace();
					} finally {
					try {
					if (rs != null) {
						rs.close();
					}
					if (stmt != null) {
						stmt.close();
					}
					if (conn != null) {
						conn.close();
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					}
				%>

              <article>
                <a href="corpDetail.jsp" class="image" id="images/vol2.jpg" onclick="get_src(this.id)">
                	<img src="images/vol2.jpg" alt=""/>
                </a>
                <h3>단체2(청렴온도: 00도)</h3>
                <p>필요물품 나열</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image" id="images/vol3.jpg" onclick="get_src(this.id)">
                	<img src="images/vol3.jpg" alt=""/>
                </a>
                <h3>단체3(청렴온도: 00도)</h3>
                <p>필요물품 나열</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image" id="images/vol4.jpg" onclick="get_src(this.id)">
                	<img src="images/vol4.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail1.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

            
              <article>
                <a href="corpDetail1.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
            </div>
          </section>

          <section style="border-top: none" class="talent">
            <div class="posts">
            
              <article>
                <a href="corpDetail1.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>재능</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
              
              <article>
                <a href="corpDetail.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                	<img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
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
										<h2><a href="index.jsp">~~~~ donation</a></h2>
									</header>
									<ul>
										<li><span class="opener">MY PAGE</span>
											<ul>
												<li><a href="#">회원정보 조회</a></li>
												<li><a href="#">포인트 적립</a></li>
												<li><a href="#">재능 등록</a></li>
												<li><a href="#">공유 서류 조회</a></li>
											</ul></li>										
										<li><a href="viewCorp2.jsp">기부 하기</a></li>
										<li><a href="review.jsp">후기 작성</a></li>
									</ul>
								</nav>

								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">tangerinelove@naver.com</a></li>
										<li class="icon solid fa-phone">(+82) 10-3116-7130</li>
										<li class="icon solid fa-home">30, Pildong-ro 1-gil, Jung-gu<br />
										Seoul, Republic of Korea</li>
									</ul>
								</section>
							<!-- Footer -->
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