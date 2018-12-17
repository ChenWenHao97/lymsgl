<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
</head>
<body>
<%@include file="/blocks/navc.jsp" %>

<!--注册框-->
<div class="container well">
  <h1 class="mgr-text-center mgr-botmar-md">注册</h1>
  <div class="row mgr-botmar-sm">
    <div class="col-md-8 col-md-offset-2">
      <form>
        <div class="form-group">
          <input type="text" class="form-control" placeholder="昵称">
        </div>
        <div class="form-group">
          <input type="tel" pattern="^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$"
                 class="form-control" placeholder="请输入手机号码（+86）" title="请输入格式正确的手机号">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" placeholder="密码" pattern="^(\w{1,20})$"
                 title="密码应当长度为1-20，且仅包含字母和数字">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" placeholder="再次输入密码" pattern="^(\w{1,20})$"
                 title="密码应当长度为1-20，且仅包含字母和数字">
        </div>

        <div class="checkbox">
          <label>
            <input type="checkbox"> 我已同意<a href="license.jsp" style="text-decoration: #46b8da">旅游民宿网站用户协议</a>
          </label>
        </div>
        <button type="submit" class="btn btn-primary btn-block">注册</button>
      </form>
    </div>
  </div>

  <div class="mgr-text-center">
    <a href="login.jsp" style="color:#46b8da"><strong> 已有账号</strong></a>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="index.jsp" style="color: #46b8da"><strong>返回首页</strong></a>
  </div>
</div>

<%@include file="blocks/bot.jsp" %>
</body>
</html>
