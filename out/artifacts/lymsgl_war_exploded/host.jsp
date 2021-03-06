<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
  <link href="./css/fangdong.css" rel="stylesheet">
  <script src="./js/fangdong.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="/blocks/navc.jsp" flush="true">
  <jsp:param name="host" value="active"/>
</jsp:include>

<div class="container">
  <div id="">
    <ul class="nav nav-tabs" id="first-nav">
      <li role="presentation" onclick="click_real_name()" class="active" id="real_name"><a class="a">实名认证</a></li>
      <li role="presentation" onclick="click_management_house()" id="management_house"><a class="a">管理房源</a></li>
      <li role="presentation" onclick="click_process_orders()" id="process_orders"><a class="a">处理订单</a></li>
    </ul>

    <div id="real_name_all">
      <div id="real_name_next">
        <ul class="nav nav-pills nav-stacked">
          <li role="presentation" class="active"><a>实名认证</a></li>
        </ul>
      </div>
      <p class="title">实名认证</p>
      <div id="real_name_next_form">
        <label id="lab_name">姓名</label>
        <input id="in_name" type="text" class="form-control" placeholder="the name">
        <br>
        <label id="lab_idcard">身份证号</label>
        <input id="in_idcard" type="text" class="form-control" placeholder="id number">
      </div>
      <div>
        <button id="btn_zhuce" class="btn btn-success">确认注册</button>
      </div>
    </div>

    <div id="management_house_all">
      <div id="management_house_next">
        <ul class="nav nav-pills nav-stacked">
          <li role="presentation" onclick="javascript:click_add_house();" class="active" id="add_house"><a>添加房源</a></li>
          <li role="presentation" onclick="javascript:click_del_house();" id="del_house"><a>删除房源</a></li>
          <li role="presentation" onclick="javascript:click_mod_house();" id="mod_house"><a>修改房源</a></li>
        </ul>
      </div>

      <div id="add_house_right">
        <p class="title">添加房源</p>

        <div id="form_add_house">

          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                     href="#collapseOne">
                    第一步：选择房源类型
                  </a>
                </h4>
              </div>
              <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                  <form>
                    <p class="aa">您要发布的房源是：
                      <button name="but" class="btn">整套房子</button>
                      <button name="but" class="btn">独立房间</button>
                    </p>
                    <p class="aa">您的房源类型是：</p>
                    <p class="aaa">城市民居：
                      <button name="but1" class="btn">住宅民俗</button>
                      <button name="but1" class="btn">洋房</button>
                      <button name="but1" class="btn">四合院</button>
                      <button name="but1" class="btn">别墅</button>
                    </p>
                    <p class="aaa">酒店公寓：
                      <button name="but1" class="btn">集中式公寓</button>
                    </p>
                    <p class="aaa">景区民宿：
                      <button name="but1" class="btn">度假民宿</button>
                      <button name="but1" class="btn">客栈</button>
                    </p>
                    <p class="aaa">农家乐乐：
                      <button name="but1" class="btn">农家乐</button>
                    </p>
                    <p class="aaa">特色住宅：
                      <button name="but1" class="btn">集装箱</button>
                      <button name="but1" class="btn">窑洞</button>
                      <button name="but1" class="btn">房车</button>
                    </p>
                  </form>
                  <button class="next btn btn-info" onclick="javascript:change_second();">下一步</button>
                </div>
              </div>
            </div>
            <div class="panel panel-success">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                     href="#collapseTwo" id="second_panel">
                    第二步：快告诉我们房源的位置吧
                  </a>
                </h4>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                  <form>
                    <p class="aa">您的房源位于：<input placeholder="例如：省市区"/></p>
                    <p class="aa">街道地址位于：<input placeholder="例如：子午大道***"/></p>
                    <p class="aa">小区具体名称：<input placeholder="例如：幸福花园小区"/></p>
                    <p class="aa">单元、门牌号：<input placeholder="例如：六号楼1202室"/></p>
                  </form>
                  <button class="next btn btn-info" onclick="javascript:change_third();">下一步</button>
                </div>
              </div>
            </div>
            <div class="panel panel-info">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                     href="#collapseThree" id="third_panel">
                    第三步：给房源起个好名字吧
                  </a>
                </h4>
              </div>
              <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                  <form>
                    <p class="aa">房源标题：</p>
                    <textarea class="tarea" rows="3" cols="50" placeholder="建议包括内容：风格、特点、重要设施"></textarea>
                    <p class="aa">房源亮点：</p>
                    <textarea class="tarea" rows="5" cols="50" placeholder="建议包括内容：风格、特点、重要设施"></textarea>
                  </form>
                  <button class="next btn btn-info" onclick="javascript:change_fouth();">下一步</button>
                </div>
              </div>
            </div>
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion"
                     href="#collapseFour" id="fouth_panel">
                    第四步：设置价格和可入住人数
                  </a>
                </h4>
              </div>
              <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">
                  <form>
                    <p class="aa">每晚价格：<input oninput="value=value.replace(/[^\d]/g,'')" class="ipt"/>元/晚</p>
                    <p class="aa">可住人数：<input oninput="value=value.replace(/[^\d]/g,'')" class="ipt"/>人</p>
                  </form>
                  <button class="next btn btn-info" id="btn_finish" onclick="javascript:finish();">完成</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="del_house_right">
        <p class="title">删除房源</p>
        <table id="tab_del_house" class="table table-hover">
          <thead>
          <tr>
            <th>序号</th>
            <th>房源地址</th>
            <th>房源类型</th>
            <th>操作</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>01</td>
            <td>西安市西安邮电大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">删除</button>
            </td>
          </tr>
          <tr>
            <td>02</td>
            <td>西安市陕西师范大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">删除</button>
            </td>
          </tr>
          <tr>
            <td>03</td>
            <td>西安市西北政法大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">删除</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>

      <div id="mod_house_right">
        <p class="title">修改房源</p>
        <table id="tab_mod_house" class="table table-hover">
          <thead>
          <tr>
            <th>序号</th>
            <th>房源地址</th>
            <th>房源类型</th>
            <th>操作</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>01</td>
            <td>西安市西安邮电大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">修改</button>
            </td>
          </tr>
          <tr>
            <td>02</td>
            <td>西安市陕西师范大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">修改</button>
            </td>
          </tr>
          <tr>
            <td>03</td>
            <td>西安市西北政法大学</td>
            <td>公寓</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">修改</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>

    </div>

    <div id="process_orders_all">
      <div id="process_orders_next">
        <ul class="nav nav-pills nav-stacked">
          <li onclick="javascript:click_weichuli();" role="presentation" id="yichuli" class="active"><a>未处理订单</a></li>
          <li onclick="javascript:click_yichuli();" role="presentation" id="weichuli"><a>已处理订单</a></li>
        </ul>
      </div>
      <div id="weichuli_right">
        <p class="title">未处理订单</p>
        <table id="tab_weichuli" class="table table-hover">
          <thead>
          <tr>
            <th>序号</th>
            <th>申请者姓名</th>
            <th>联系电话</th>
            <th>身份证号</th>
            <th>房源地址</th>
            <th>操作</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>01</td>
            <td>甲</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西安邮电大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">同意</button>
              <button type="button" class="btn_del btn btn-danger">不同意</button>
            </td>
          </tr>
          <tr>
            <td>02</td>
            <td>乙</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市陕西师范大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">同意</button>
              <button type="button" class="btn_del btn btn-danger">不同意</button>
            </td>
          </tr>
          <tr>
            <td>03</td>
            <td>丙</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西北政法大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">同意</button>
              <button type="button" class="btn_del btn btn-danger">不同意</button>
            </td>
          </tr>
          <tr>
            <td>04</td>
            <td>丁</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西安外国语大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">同意</button>
              <button type="button" class="btn_del btn btn-danger">不同意</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>

      <div id="yichuli_right">
        <p class="title">已处理订单</p>
        <table id="tab_yichuli" class="table table-hover">
          <thead>
          <tr>
            <th>序号</th>
            <th>申请者姓名</th>
            <th>联系电话</th>
            <th>身份证号</th>
            <th>房源地址</th>
            <th>操作</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>01</td>
            <td>甲</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西安邮电大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">已同意</button>
            </td>
          </tr>
          <tr>
            <td>02</td>
            <td>乙</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市陕西师范大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">已同意</button>
            </td>
          </tr>
          <tr>
            <td>03</td>
            <td>丙</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西北政法大学</td>
            <td>
              <button type="button" class="btn_del btn btn-danger">已拒绝</button>
            </td>
          </tr>
          <tr>
            <td>04</td>
            <td>丁</td>
            <td>xxxxxxxxxxx</td>
            <td>xxxxxxxxxxxx</td>
            <td>西安市西安外国语大学</td>
            <td>
              <button type="button" class="btn_del btn btn-success">已同意</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>


<%@include file="blocks/bot.jsp" %>
</body>
</html>

