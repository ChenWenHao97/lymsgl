<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar-wrapper">
  <div class="container">

    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
            <span class="sr-only">拖动导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <a class="navbar-brand" href="#">旅游民宿管理</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="<%=request.getParameter("index")%>"><a href="/index.jsp">首页</a></li>
            <li class="<%=request.getParameter("renter")%>"><a href="/renter.jsp">我是住户</a></li>
            <li class="<%=request.getParameter("host")%>"><a href="/host.jsp">我是房东</a></li>
            <li class="<%=request.getParameter("manager")%>"><a href="/manager.jsp?block=user&item=create">管理后台</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">我的
                <span class="caret"></span>
              </a>

              <ul class="dropdown-menu">
                <li class="dropdown-header">我的信息</li>
                <li><a href="/login.jsp">登录</a></li>
                <li><a href="/register.jsp">注册</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">退出登录</a></li>
              </ul>
            </li>
          </ul>
        </div>

      </div>
    </nav>

  </div>
</div>