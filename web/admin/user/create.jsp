<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="mgr-item-title">创建用户</h2>
<p>请输入要创建的用户信息，输入完毕后点击创建即可</p>

<form class="form-horizontal" action="/user/create" method="post">

  <div class="form-group">
    <label for="inputUsername" class="col-sm-2 control-label">昵称</label>
    <div class="col-sm-10">
      <input pattern='^(\w{1,20})$' class="form-control" id="inputUsername" title="昵称应当长度为1-20，且仅包含字母和数字" required
             placeholder="请输入昵称" name="nickname">
    </div>
  </div>

  <div class="form-group">
    <label for="inputPhone" class="col-sm-2 control-label">手机号</label>
    <div class="col-sm-10">
      <input type="tel" pattern="^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$"
             class="form-control" name="phonenumber" id="inputPhone" required placeholder="请输入手机号" title="请输入正确格式的手机号">
    </div>
  </div>

  <div class="form-group">
    <label for="inputPwd" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-10">
      <input type="password" pattern="^(\w{1,20})$" class="form-control" id="inputPwd" required
             placeholder="请输入密码" name="password" title="密码应当长度为1-20，且仅包含字母和数字">
    </div>
  </div>

  <div class="form-group">
    <label for="sltUserType" class="col-sm-2 control-label">类型</label>
    <div class="col-sm-10">
      <select id="sltUserType" name="type" class="form-control">
        <option value="1">房东</option>
        <option value="2">住户</option>
        <option value="100">系统管理员</option>
      </select>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-block btn-success">创建</button>
    </div>
  </div>
</form>
