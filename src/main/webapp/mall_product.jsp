<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Elements - Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link href="./assets/css/mall_product.css" rel="stylesheet" />
  </head>
  <body class="is-preload">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->
      <div id="main">
        <div class="inner">
          <!-- Header -->
          <header id="header">
            <h2>Mall</h2>
            <ul class="icons">
              <li>
                <a href="login.html"><span class="label">Login</span></a>
              </li>
              <li>
                <a href="login.html"><span class="label">Logout</span></a>
              </li>
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
                <h3>{치약}</h3>
                <p>{7000}원</p>
                <h3>수량</h3>
                <form method="post" action="#">
                  <input
                    type="text"
                    name="product_name"
                    id="product_name"
                    placeholder="구매하실 수량을 입력하세요."
                  />
                </form>
                <a
                  href="#"
                  class="button large"
                  type="button"
                  class="btn btn-primary"
                  data-bs-toggle="modal"
                  data-bs-target="#exampleModal"
                  >구매하기</a
                >
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
              <h2>{치약}</h2>
              <h3>수랑 :</h3>
              <h3>사용예정 포인트 :</h3>
            </div>
            <div class="modal-footer">
              <a href="./complete_buy.jsp" type="button" class="button large"
                >포인트 차감하기</a
              >
              <!-- <button
                type="button"
                class="button large"
                data-bs-dismiss="modal"
              >
                포인트 차감하기
              </button> -->
            </div>
          </div>
        </div>
      </div>

      <div id="sidebar">
        <div class="inner">
          <!-- Menu -->
          <nav id="menu">
            <header class="major">
              <h2>플랫폼 이름</h2>
            </header>
            <ul>
              <h3>**아동복지센터님 환영합니다</h3>
              <li><a href="#">Homepage</a></li>
              <li><a href="product_show.jsp">기부받기</a></li>
              <li>
                <a href="#" class="opener">마이페이지</a>
                <ul>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
                  <li><a href="#">마이페이지</a></li>
                </ul>
              </li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li>
                <span class="opener">메뉴</span>
                <ul>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                  <li><a href="#">메뉴</a></li>
                </ul>
              </li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
              <li><a href="#">메뉴</a></li>
            </ul>
          </nav>

          <!-- Section -->
          <section>
            <header class="major">
              <h2>Get in touch</h2>
            </header>
            <p>기부플랫폼 소개</p>
            <ul class="contact">
              <li class="icon solid fa-envelope">
                <a href="#">이메일</a>
              </li>
              <li class="icon solid fa-phone">전화번호</li>
              <li class="icon solid fa-home">
                주소<br />
                상세주소
              </li>
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
  </body>
</html>
