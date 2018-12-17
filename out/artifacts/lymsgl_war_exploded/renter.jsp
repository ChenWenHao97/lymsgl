<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
</head>
<body>
<jsp:include page="/blocks/navc.jsp" flush="true">
  <jsp:param name="renter" value="active"/>
</jsp:include>

<div class="container">
  <ul class="nav nav-tabs" style="margin-bottom: 20px">
    <li onclick="ChstkRecommend();" id="Recommend" role="presentation" class="active"><a>房源推荐</a></li>
    <li onclick="ChstkQuery();" id="Query" role="presentation"><a>查找房源</a></li>
    <li onclick="ChstkOrder();" id="Order" role="presentation"><a>查看订单</a></li>
    <!--<li role="presentation"><a href="#">其他项目</a></li>-->
  </ul>
  <div id="HouseRecommend">
    <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li role="presentation" id="北京" class="active"><a>北京</a></li>
        <li role="presentation" id="上海"><a>上海</a></li>
        <li role="presentation" id="广东"><a>广东</a></li>
        <li role="presentation" id="深圳"><a>深圳</a></li>
        <li role="presentation" id="成都"><a>成都</a></li>
        <li role="presentation" id="重庆"><a>重庆</a></li>
        <li role="presentation" id="西安"><a>西安</a></li>
        <li role="presentation" id="城市"><a>更多热门城市</a></li>
      </ul>
    </div><!--热门城市导航栏-->
    <div id="table1">
      <div class="row">
        <div class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="http://pic.58pic.com/58pic/17/43/72/05n58PICq5T_1024.jpg">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2088376937,472570804&fm=200&gp=0.jpg">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=811970530,2241554549&fm=200&gp=0.jpg"
                 alt="...">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div style="margin-left:205px; " class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=83159691,2849267076&fm=200&gp=0.jpg"
                 alt="...">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3800598288,2966051837&fm=26&gp=0.jpg"
                 alt="...">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-md-3">
          <div class="thumbnail">
            <img src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3483736624,1351191540&fm=200&gp=0.jpg"
                 alt="...">
            <div class="caption">
              <h3>西安邮电大学别墅</h3>
              <p>这是西北地区唯一一栋价值过亿的别野</p>
              <p class="a">
                <a href="#" class="btn btn-primary" role="button">咨询</a>
                <a href="#" class="btn btn-default" role="button">预订</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div><!--展示推荐房源的表单-->
    <div class="row">
      <nav style="margin-left: 530px;" class="fenye pull-right">
        <ul class="pagination">
          <li>
            <a href="#">
              <span>&laquo;</span>
            </a>
          </li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li>
            <a href="#">
              <span>&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
    </div><!--分页按钮-->
  </div><!--房源推荐界面-->

  <div id="HouseQuery" style="display:none">
    <form class="form-inline" style="border:1px solid #ececec; padding: 10px 10px; border-radius: 20px">
      <div class="form-group">
        <label for="address">地址</label><br/>
        <input type="text" class="form-control" id="address" placeholder="请输入地址" onblur="checkaddr()">
      </div>
      <label id="address_tip" color="red"></label>
      <br/>
      <label>价格</label>
      <br/>
      <div class="form-group">
        <input type="text" class="form-control" id="lowprice" placeholder="最低价">
      </div>
      &nbsp-------
      <div class="form-group">
        <input type="text" class="form-control" id="highprice" placeholder="最高价" onblur="checkprice()">
      </div>
      <label id="highprice_tip" color="red"></label>
      <br/>
      <label>日期</label>
      <br/>
      <div class="form-group">
        <input type="text" class="form-control" id="stardata" placeholder="入住日期">
      </div>
      &nbsp-------
      <div class="form-group">
        <input type="text" class="form-control" id="enddata" placeholder="离开日期" onblur="checkenddata()">
      </div>
      <label id="enddata_tip" color="red"></label>
      <br/>
      <label>房源类型</label>
      <br/>
      <div>
        <select style="width: 200px" class="form-control">
          <option>整个房源</option>
          <option>独立房间</option>
          <option>合住房间</option>
          <!--<option></option>
          <option></option>-->
        </select>
      </div>
      <div class="form-group">
        <label for="number">人数</label><br/>
        <input type="text" class="form-control" id="number" placeholder="入住人数" onblur="checknumber()">
      </div>
      <label id="number_tip" color="red"></label>
    </form>
    <div style="margin-left: 90%; margin-top: 20px;">
            <span class="input-group-btn">
                    <button style="background-color: #5bc0de; width: 100px;border-radius: 20px;font-family: 幼圆"
                            onclick="javascript:Checkresult();" class="btn btn-default" type="button">查    询</button>
            </span>
    </div>
    <!--<div style="margin-left: 100px;" style="height: 200px;" class="col-lg-10">
        <div id="Querybutton" class="input-group">
            <input type="text" class="form-control" placeholder="请输入要查找的房源地址，例如：陕西省西安市长安区">
            <span class="input-group-btn">
            <button onclick="javascript:Checkresult();" class="btn btn-default" type="button">查询</button>
            </span>
        </div>
    </div>
    <div style="margin-left: 40%;" class="btn-group" role="group" aria-label="...">
        <button onclick="javascript:FillData();" type="button" >日期</button>
        <button onclick="javascript:FillPrice();" type="button" >价格</button>
        <button onclick="javascript:FillType();" type="button" >房源类型</button>
        <button onclick="javascript:FillNumber();" type="button" >入住人数</button>
        <div id="data" style="display:none">
            <input type="text" class="form-control" placeholder="请输入入住日期" aria-describedby="basic-addon2">
            <nobr><p>&#45;&#45;&#45;&#45;</p></nobr>
            <input type="text" class="form-control" placeholder="请输入终止日期" aria-describedby="basic-addon2">
        </div>
        <div id="price" style="display:none">
            <input type="text" class="form-control" placeholder="请输入最低价格" aria-describedby="basic-addon2">
            <nobr><p>&#45;&#45;&#45;&#45;</p></nobr>
            <input type="text" class="form-control" placeholder="请输入最高价格" aria-describedby="basic-addon2">
        </div>
        <div style="margin-left: 70px;" id="type" class="dropdown" style="display:none">
                <button class="btn btn-default dropdown-toggle" type="button" id="选择房源类型" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                  请选择房源类型
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#">独享房源</a></li>
                    <li><a href="#">独立房间</a></li>
                    <li><a href="#">合住房间</a></li>
                </ul>
        </div>
        <div id="number" style="display:none">
            <input type="text" class="form-control" placeholder="请输入入住人数" aria-describedby="basic-addon2">

        </div>
    </div>-->
    <div id="Queryresult" style="display:none">
      <div id="table2">
        <div class="row">
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="http://pic.58pic.com/58pic/17/43/72/05n58PICq5T_1024.jpg" alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2088376937,472570804&fm=200&gp=0.jpg"
                   alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=811970530,2241554549&fm=200&gp=0.jpg"
                   alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=83159691,2849267076&fm=200&gp=0.jpg"
                   alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3800598288,2966051837&fm=26&gp=0.jpg"
                   alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3483736624,1351191540&fm=200&gp=0.jpg"
                   alt="...">
              <div class="caption">
                <h3>西安邮电大学别墅</h3>
                <p>这是西北地区唯一一栋价值过亿的别野</p>
                <p class="a"><a href="#" class="btn btn-primary" role="button">咨询</a> <a href="#"
                                                                                         class="btn btn-default"
                                                                                         role="button">预订</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <nav style="margin-left: 480px;" class="fenye" class="pull-right">
          <ul class="pagination">
            <li>
              <a href="#">
                <span>&laquo;</span>
              </a>
            </li>
            <li class="active"><a href="#">1</a></li>
            <li><a>2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
              <a href="#">
                <span>&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>

  <div id="HouseOrder" style="display:none">
    <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li onclick="javascript:Untreated();" role="presentation" id="untreated" class="active"><a>未处理订单</a></li>
        <li onclick="javascript:Handle();" role="presentation" id="handle"><a>已处理订单</a></li>
      </ul>
    </div>
    <div class="row" id="untreatedorder">
      <div class="col-md-8 col-md-offset-1">
        <div class="bs-example" data-example-id="hoverable-table">
          <table class="table table-hover">
            <thead>
            <tr>
              <th>序号</th>
              <th>想要预定的房间</th>
              <th>入住日期</th>
              <th>结束日期</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <th scope="row">1</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td><input style="width: 70px" onclick="onModel()" class="btn btn-success btn-sm" type="button"
                         value="修改">
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="取消">
              </td>
            </tr>

            <tr>
              <th scope="row">2</th>
              <
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td><input style="width: 70px" onclick="onModel()" class="btn btn-success btn-sm" type="button"
                         value="修改">
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="取消">
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td><input style="width: 70px" onclick="onModel()" class="btn btn-success btn-sm" type="button"
                         value="修改">
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="取消">
              </td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td><input style="width: 70px" onclick="onModel()" class="btn btn-success btn-sm" type="button"
                         value="修改">
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="取消">
              </td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td><input style="width: 70px" onclick="onModel()" class="btn btn-success btn-sm" type="button"
                         value="修改">
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="取消">
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div id="jumpwrong" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
              </button>
              <h4 class="modal-title">通知栏</h4>
            </div>
            <div class="modal-body">

              <div class="alert alert-danger" role="alert">
                <strong>已取消订单</strong>
              </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
    </div>
    <div class="row" id="handleorder" style="display: none">
      <div class="col-md-8 col-md-offset-1">
        <div class="bs-example" data-example-id="hoverable-table">
          <table class="table table-hover">
            <thead>
            <tr>
              <th>序号</th>
              <th>想要预定的房间</th>
              <th>入住时间</th>
              <th>结束时间</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <th scope="row">1</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td>
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="退订">
              </td>
            </tr>

            <tr>
              <th scope="row">2</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td>
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="退订">
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td>
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="退订">
              </td>
            </tr>
            <tr>
              <th scope="row">4

              </th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td>
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="退订">
              </td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>一室一厅102</td>
              <td>10.7</td>
              <td>10.14</td>
              <td>
                <input style="width: 70px" onclick="offModel()" class="btn btn-danger btn-sm" type="button" value="退订">
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="./js/customer.js"></script>

<%@include file="blocks/bot.jsp" %>
</body>
</html>

