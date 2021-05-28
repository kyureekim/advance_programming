let product_amount = document.getElementById("product_amount");
let total_amount = document.getElementById("total_amount");
let total_point = document.getElementById("total_point");
let notused_point = document.getElementById("notused_point");
let used_point = document.getElementById("used_point");
let gibu_point = document.getElementById("gibu_point");

function purchaseClick() {
  total_amount.value = product_amount.value;
  total_point.value = 7000 * parseInt(product_amount.value);
}

function minusClick() {
  let used = parseInt(localStorage.getItem("used")); // 사용한 포인트 조회
  let new_used = used + parseInt(total_point.value); // 사용 포인트에 새로 사용 포인트 더하기
  localStorage.setItem("used", new_used); // used에 used 업데이트
  location.href = "./complete_buy.jsp";
}

function reset() {
  const USED = localStorage.getItem("used"); // 사용 포인트 항상 조회 가능
  if (USED == null) {
    used_point.value = 0;
    localStorage.setItem("used", 0);
  }
  else {
    used_point.value = localStorage.getItem("used"); // 사용 포인트 항상 조회 가능
  }
  notused_point.value = parseInt(gibu_point.value) - parseInt(used_point.value);
}

function init() {
  reset();
}

init();