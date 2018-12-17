<%--
  Created by IntelliJ IDEA.
  User: pangda
  Date: 12/10/18
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="mgr-item-title">房源信息管理</h2>
<p>请在下方找到要管理的房源信息，并点击右面的按钮进行相关管理操作</p>

<form class="form-inline pull-right mgr-botmar-sm">
  <div class="form-group">
    <div class="input-group">
      <input type="text" class="form-control"/>
      <span class="input-group-addon">
              <a href="#"><i class="glyphicon glyphicon-search"> <span>搜索</span></i></a>
            </span>
    </div>
  </div>
</form>

<div class="row" id="deal_table">
  <table class="table table-hover">
    <thead>
    <tr>
      <th>#</th>
      <th>房东姓名</th>
      <th>房源基本信息</th>
      <th>房源价格</th>
      <th>房源地址</th>
      <th>房东电话</th>
      <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <th scope="row">1</th>
      <td>lzh</td>
      <td>一室一厅</td>
      <td>每晚￥100</td>
      <td>成都春熙路</td>
      <td>1234212</td>
      <td>
        <button class="btn-link" data-toggle="modal" data-target="#modalEdit">修改</button>
        <button class="btn-link" data-toggle="modal" data-target="#modalMakesure">删除</button>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>lzh</td>
      <td>一室一厅</td>
      <td>每晚￥100</td>
      <td>成都春熙路</td>
      <td>1234212</td>
      <td>
        <button class="btn-link" data-toggle="modal" data-target="#modalEdit">修改</button>
        <button class="btn-link" data-toggle="modal" data-target="#modalMakesure">删除</button>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>lzh</td>
      <td>一室一厅</td>
      <td>每晚￥100</td>
      <td>成都春熙路</td>
      <td>1234212</td>
      <td>
        <button class="btn-link" data-toggle="modal" data-target="#modalEdit">修改</button>
        <button class="btn-link" data-toggle="modal" data-target="#modalMakesure">删除</button>
      </td>
    </tr>
    <tr>
      <th scope="row">4
      </th>
      <td>lzh</td>
      <td>一室一厅</td>
      <td>每晚￥100</td>
      <td>成都春熙路</td>
      <td>1234212</td>
      <td>
        <button class="btn-link" data-toggle="modal" data-target="#modalEdit">修改</button>
        <button class="btn-link" data-toggle="modal" data-target="#modalMakesure">删除</button>
      </td>
    </tr>
    <tr>
      <th scope="row">5
      </th>
      <td>lzh</td>
      <td>一室一厅</td>
      <td>每晚￥100</td>
      <td>成都春熙路</td>
      <td>1234212</td>
      <td>
        <button class="btn-link" data-toggle="modal" data-target="#modalEdit">修改</button>
        <button class="btn-link" data-toggle="modal" data-target="#modalMakesure">删除</button>
      </td>
    </tr>
    </tbody>
  </table>

  <nav class="pull-right">
    <ul class="pagination">
      <li class="disabled"><a href="#"><span>&laquo;</span></a></li>
      <li class="active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li class="disabled"><a href="#">...</a></li>
      <li><a href="#">99</a></li>
      <li><a href="#"><span>&raquo;</span></a></li>
    </ul>
  </nav>
</div>

<div id="modalEdit" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">
          <span>&times;</span>
        </button>
        <h4 class="modal-title">修改信息</h4>
      </div>

      <div class="modal-body">
        <form class="form-horizontal">
          <div class="form-group">
            <label for="editId" class="col-sm-2 control-label">房源ID</label>
            <div class="col-sm-10">
              <input class="form-control" id="editId" readonly>
            </div>
          </div>

          <div class="form-group">
            <label for="editUsername" class="col-sm-2 control-label">房东昵称</label>
            <div class="col-sm-10">
              <input class="form-control" id="editUsername" readonly>
            </div>
          </div>

          <div class="form-group">
            <label for="editPhone" class="col-sm-2 control-label">基本信息</label>
            <div class="col-sm-10">
              <input class="form-control" id="editPhone" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPassword" class="col-sm-2 control-label">房源价格</label>
            <div class="col-sm-10">
              <input type="number" class="form-control" id="editPassword" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editIDNo" class="col-sm-2 control-label">房源地址</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="editIDNo" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editRealname" class="col-sm-2 control-label">联系电话</label>
            <div class="col-sm-10">
              <input type="number" class="form-control" id="editRealname" placeholder="若不修改，则不填">
            </div>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭，不保存更改</button>
        <button type="button" class="btn btn-primary">保存更改</button>
      </div>

    </div>
  </div>
</div>

<div id="modalMakesure" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
        <h4 class="modal-title">确认吗</h4>
      </div>
      <div class="modal-body">
        真的要删除它吗？
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-danger">确认，并删除</button>
      </div>
    </div>
  </div>
</div>