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
    <link href="./assets/css/mall_product.css" rel="stylesheet" />
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
            <h2>Mall</h2>
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
            <h2 id="content">{치약} 구매하기</h2>
            <div class="row">
              <div class="col-6 col-12-small">
                <img src="images/toothpaste.jpeg" alt="" />
              </div>
              <div class="col-3 col-12-small">
                <h3>치약</h3>
                <p>7000원</p>
                <h3>수량</h3>
                <form method="post" action="#">
                  <input
                    type="text"
                    name="product_amount"
                    id="product_amount"
                    placeholder="구매하실 수량을 입력하세요."
                  />
                </form>
                <button
                  class="button large btn btn-primary"
                  type="button"
                  data-bs-toggle="modal"
                  data-bs-target="#exampleModal"
                  onclick="purchaseClick()"
                >
                  구매하기
                </button>
              </div>
            </div>
          </section>
        </div>
      </div>

      <!-- Modal -->
      <div
        class="modal fade"
        id="exampleModal"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h2 class="modal-title" id="exampleModalLabel">결제창</h2>
              <button
                type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"
              ></button>
            </div>
            <div class="modal-body">
              <h2>치약</h2>
              <h3>
                <span>수량 : </span>
                <input id="total_amount" style="border: none" readonly />
              </h3>
              <h3>
                <span>사용예정 포인트 :</span>
                <input id="total_point" style="border: none" readonly />
              </h3>
            </div>
            <div class="modal-footer">
              <!-- <a
                href="./complete_buy.jsp"
                type="button"
                class="button large"
                onclick="javascript:minusClick()"
                >포인트 차감하기</a
              > -->
              <button type="button" class="button large" onclick="minusClick()">
                포인트 차감하기
              </button>
            </div>
          </div>
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
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
      crossorigin="anonymous"
    ></script>
   	<script src="assets/js/mall.js"></script>
  </body>
</html>
