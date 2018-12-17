<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
</head>
<body>
<%@include file="/blocks/navc.jsp" %>

<div class="container well">
  <h1 class="mgr-text-center mgr-botmar-md">登录</h1>
  <div class="row mgr-botmar-sm">
    <div class="col-md-8 col-md-offset-2">
      <form>
        <div class="form-group">
          <input type="text" id="phone" class="form-control" placeholder="手机号码"
                 pattern="^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$"
                 title="请输入格式正确的手机号">
        </div>
        <div class="form-group">
          <input type="text" id="pwd" class="form-control" placeholder="密码" pattern="^(\w{1,20})$"
                 title="密码应当长度为1-20，且仅包含字母和数字">
        </div>

        <div>
          <label>
            <input type="checkbox">记住我
            <span>  不是自己的电脑请勿勾选此项</span>
          </label>
        </div>
        <button type="submit" class="btn btn-primary btn-block">登录</button>
      </form>


    </div>
  </div>
  <div align="center">
    <a href="register.jsp" style="color: #46b8da"><strong>没有账号？立即注册</strong></a>
  </div>

</div>

<%@include file="blocks/bot.jsp" %>
</body>
</html>
