let product_amount = document.getElementById("product_amount");
let total_amount = document.getElementById("total_amount");
let total_point = document.getElementById("total_point");
let notused_point = document.getElementById("notused_point");

function purchaseClick() {
  total_amount.value = product_amount.value;
  total_point.value = 7000 * parseInt(product_amount.value);
}

function minusClick() {
  let notused = localStorage.getItem("notused");
  let notused2 = notused - total_point.value;
  console.log(notused2);
  localStorage.setItem("notused", notused2);
  location.href = "./complete_buy.jsp";
}

function reset() {
  notused_point.value = localStorage.getItem("notused");
}

function init() {
  reset();
}

init();