
function click_management_house() {
  var real_name = document.getElementById("real_name");
  var management_house = document.getElementById("management_house");
  var process_orders = document.getElementById("process_orders");
  real_name.className="";
  process_orders.className="";
  management_house.className="active";
  document.getElementById("real_name_all").style.display="none";
  document.getElementById("process_orders_all").style.display="none";
  document.getElementById("management_house_all").style.display="block";
}

function click_real_name(){
  var real_name = document.getElementById("real_name");
  var management_house = document.getElementById("management_house");
  var process_orders = document.getElementById("process_orders");
  real_name.className="active";
  process_orders.className="";
  management_house.className="";
  document.getElementById("real_name_all").style.display="block";
  document.getElementById("process_orders_all").style.display="none";
  document.getElementById("management_house_all").style.display="none";
}

function click_process_orders() {
  var real_name = document.getElementById("real_name");
  var management_house = document.getElementById("management_house");
  var process_orders = document.getElementById("process_orders");
  real_name.className="";
  process_orders.className="active";
  management_house.className="";
  document.getElementById("process_orders_all").style.display="block";
  document.getElementById("real_name_all").style.display="none";
  document.getElementById("management_house_all").style.display="none";
}

var add_house = document.getElementById("add_house");
var del_house = document.getElementById("del_house");
var mod_house = document.getElementById("mod_house");

function click_add_house() {
  var add_house = document.getElementById("add_house");
  var del_house = document.getElementById("del_house");
  var mod_house = document.getElementById("mod_house");
  add_house.className="active";
  del_house.className="";
  mod_house.className="";
  document.getElementById("add_house_right").style.display="block";
  document.getElementById("del_house_right").style.display="none";
  document.getElementById("mod_house_right").style.display="none";
}

function click_del_house() {
  var add_house = document.getElementById("add_house");
  var del_house = document.getElementById("del_house");
  var mod_house = document.getElementById("mod_house");
  add_house.className="";
  del_house.className="active";
  mod_house.className="";
  document.getElementById("add_house_right").style.display="none";
  document.getElementById("del_house_right").style.display="block";
  document.getElementById("mod_house_right").style.display="none";
}

function click_mod_house() {
  var add_house = document.getElementById("add_house");
  var del_house = document.getElementById("del_house");
  var mod_house = document.getElementById("mod_house");
  add_house.className="";
  del_house.className="";
  mod_house.className="active";
  document.getElementById("add_house_right").style.display="none";
  document.getElementById("del_house_right").style.display="none";
  document.getElementById("mod_house_right").style.display="block";
}

function click_yichuli() {
  var yichuli = document.getElementById("yichuli");
  var weichuli = document.getElementById("weichuli");
  yichuli.className="";
  weichuli.className="active";
  document.getElementById("weichuli_right").style.display="none";
  document.getElementById("yichuli_right").style.display="block";
}

function click_weichuli() {
  var yichuli = document.getElementById("yichuli");
  var weichuli = document.getElementById("weichuli");
  yichuli.className="active";
  weichuli.className="";
  document.getElementById("weichuli_right").style.display="block";
  document.getElementById("yichuli_right").style.display="none";
}

function change_second() {
  var form = document.getElementById("_form");
  document.getElementById("second_panel").click();
}

function change_third() {
  var form = document.getElementById("_form");
  document.getElementById("third_panel").click();
}

function change_fouth() {
  var form = document.getElementById("_form");
  document.getElementById("fouth_panel").click();
}

function finish() {
  var form = document.getElementById("_form");
  document.getElementById("fouth_panel").click();
}


$(function () { $('#collapseFour').collapse({
  toggle: false
})});
$(function () { $('#collapseTwo').collapse('show')});
$(function () { $('#collapseThree').collapse('toggle')});
$(function () { $('#collapseOne').collapse('hide')});