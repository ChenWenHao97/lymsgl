<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="mgr-item-title">订单相关管理</h2>
<p>请在下方找到要管理的订单，并点击右面的按钮进行相关管理操作</p>

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

<table class="table table-hover">
  <thead>
  <tr>
    <th>#</th>
    <th>房源ID</th>
    <th>住户昵称</th>
    <th>房东昵称</th>
    <th>当前状态</th>
    <th>操作</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>1</td>
    <td>3</td>
    <td>abcde</td>
    <td>defgh</td>
    <td>
      <div class="label label-success" role="alert">已完成</div>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal">修改订单状态</button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal">删除此订单</button>
    </td>
  </tr>
  <tr>
    <td>2</td>
    <td>3</td>
    <td>abcde</td>
    <td>defgh</td>
    <td>
      <span class="label label-success" role="alert">已完成</span>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal">修改订单状态</button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal">删除此订单</button>
    </td>
  </tr>
  <tr>
    <td>3</td>
    <td>3</td>
    <td>abcde</td>
    <td>defgh</td>
    <td>
      <div class="label label-danger" role="alert">已拒绝</div>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal">修改订单状态</button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal">删除此订单</button>
    </td>
  </tr>
  <tr>
    <td>4</td>
    <td>3</td>
    <td>abcde</td>
    <td>defgh</td>
    <td>
      <div class="label label-warning" role="alert">未处理</div>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal">修改订单状态</button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal">删除此订单</button>
    </td>
  </tr>
  <tr>
    <td>5</td>
    <td>3</td>
    <td>abcde</td>
    <td>defgh</td>
    <td>
      <div class="label label-info" role="alert">正在进行</div>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal">修改订单状态</button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal">删除此订单</button>
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

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
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
            <label for="editUserType" class="col-sm-2 control-label">类型</label>
            <div class="col-sm-10">
              <select id="editUserType" class="form-control">
                <option value="1">未处理</option>
                <option value="2">正在执行</option>
                <option value="3">已拒绝</option>
                <option value="4">已完成</option>
              </select>
            </div>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭，不保存更改</button>
        <button type="submit" class="btn btn-primary">保存更改</button>
      </div>

    </div>
  </div>
</div>

<div class="modal fade" id="makesureModal" tabindex="-1" role="dialog">
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
        <button type="button" class="btn btn-danger" onclick="doDelete()">确认，并删除</button>
      </div>
    </div>
  </div>
</div>

<script>
  function doDelete() {
    alert("删除成功！");
  }
</script>
