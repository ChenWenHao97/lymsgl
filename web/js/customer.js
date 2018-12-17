function ChstkRecommend() {
  var recommend = document.getElementById("Recommend");
  var query = document.getElementById("Query");
  var order = document.getElementById("Order");
  recommend.className="active";
  query.className="";
  order.className="";
  var houseorder=document.getElementById("HouseOrder");
  var housequery=document.getElementById("HouseQuery");
  var houserecommend=document.getElementById("HouseRecommend");
  houseorder.style.display="none";
  houserecommend.style.display="block";
  housequery.style.display="none";

}

function ChstkQuery() {
  var recommend = document.getElementById("Recommend");
  var query = document.getElementById("Query");
  var order = document.getElementById("Order");
  recommend.className="";
  query.className="active";
  order.className="";
  var houseorder=document.getElementById("HouseOrder");
  var housequery=document.getElementById("HouseQuery");
  var houserecommend=document.getElementById("HouseRecommend");
  houseorder.style.display="none";
  houserecommend.style.display="none";
  housequery.style.display="block";
}

function ChstkOrder() {
  var recommend = document.getElementById("Recommend");
  var query = document.getElementById("Query");
  var order = document.getElementById("Order");
  recommend.className="";
  query.className="";
  order.className="active";
  var houseorder=document.getElementById("HouseOrder");
  var housequery=document.getElementById("HouseQuery");
  var houserecommend=document.getElementById("HouseRecommend");
  houseorder.style.display="block";
  houserecommend.style.display="none";
  housequery.style.display="none";
}

function Checkresult(){
  var queryresult = document.getElementById("Queryresult");
  queryresult.style.display="block";
}

function FillData(){
  document.getElementById("data").style.display="block";
  document.getElementById("price").style.display="none";
  document.getElementById("type").style.display="none";
  document.getElementById("number").style.display="none";
}
function FillPrice(){
  document.getElementById("data").style.display="none";
  document.getElementById("price").style.display="block";
  document.getElementById("type").style.display="none";
  document.getElementById("number").style.display="none";
}
function FillType(){
  document.getElementById("data").style.display="none";
  document.getElementById("price").style.display="none";
  document.getElementById("type").style.display="block";
  document.getElementById("number").style.display="none";
}
function FillNumber(){
  document.getElementById("data").style.display="none";
  document.getElementById("price").style.display="none";
  document.getElementById("type").style.display="none";
  document.getElementById("number").style.display="block";
}

function Untreated() {
  var a=document.getElementById("untreated");
  var b=document.getElementById("handle");
  a.className="active";
  b.className="";
  document.getElementById("untreatedorder").style.display="block";
  document.getElementById("handleorder").style.display="none";
}

function Handle() {
  var a=document.getElementById("untreated");
  var b=document.getElementById("handle");
  a.className="";
  b.className="active";
  document.getElementById("untreatedorder").style.display="none";
  document.getElementById("handleorder").style.display="block";
}

function checkaddr() {
  var reg = /^[\u4e00-\u9fa5]+$/;
  var emp_name = document.getElementById("address");
  if (!reg.test(emp_name.value)) {
    document.getElementById("address_tip").innerHTML = "<img src='img/error.png'>请输入正确的地址";
    emp_name.focus();
    return false;
  }
  else {
    document.getElementById("address_tip").innerHTML = "<img src='img/right.png'>";
    return true;
  }
}


function checkenddata() {
  var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
  var emp_name = document.getElementById("enddata");
  if (!reg.test(emp_name.value)) {
    document.getElementById("enddata_tip").innerHTML = "<img src='img/error.png'>请输入正确的日期格式";
    emp_name.focus();
    return false;
  }
  else {
    document.getElementById("enddata_tip").innerHTML = "<img src='img/right.png'>";
    return true;
  }
}

function checkprice() {
  var reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;
  var emp_name = document.getElementById("highprice");
  if (!reg.test(emp_name.value)) {
    document.getElementById("highprice_tip").innerHTML = "<img src='img/error.png'>请输入价格";
    emp_name.focus();
    return false;
  }
  else {
    document.getElementById("highprice_tip").innerHTML = "<img src='img/right.png'>";
    return true;
  }
}

function checknumber() {
  var reg = /^[1-9]{1}$/;
  var emp_name = document.getElementById("number");
  if (!reg.test(emp_name.value)) {
    document.getElementById("number_tip").innerHTML = "<img src='img/error.png'>请输入价格";
    emp_name.focus();
    return false;
  }
  else {
    document.getElementById("number_tip").innerHTML = "<img src='img/right.png'>";
    return true;
  }
}
