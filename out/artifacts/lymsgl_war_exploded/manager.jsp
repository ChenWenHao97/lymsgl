<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
</head>
<body>
<jsp:include page="/blocks/navc.jsp" flush="true">
  <jsp:param name="manager" value="active"/>
</jsp:include>

<%
  String block = request.getParameter("block");
  String item = request.getParameter("item");
  String inner_page = "/admin/" + block + "/" + item + ".jsp";
  String usr_active = "", ord_active = "", site_active = "";

  String[][] actives = new String[3][3];

  if ("user".equals(block)) {
    usr_active = "active";
    if ("create".equals(item)) actives[0][0] = "active";
    else if ("verify".equals(item)) actives[0][1] = "active";
    else if ("list".equals(item)) actives[0][2] = "active";
    else inner_page = "/admin/null.jsp";
  } else if ("order".equals(block)) {
    ord_active = "active";
    if ("list".equals(item)) actives[1][0] = "active";
    else inner_page = "/admin/null.jsp";
  } else if ("site".equals(block)) {
    site_active = "active";
    if ("house".equals(item)) actives[2][0] = "active";
    else if ("rechouse".equals(item)) actives[2][1] = "active";
    else if ("reccity".equals(item)) actives[2][2] = "active";
    else inner_page = "/admin/null.jsp";
  } else if ("result".equals(block)) {
    inner_page = "/admin/result.jsp";
  } else {
    inner_page = "/admin/null.jsp";
  }
%>

<div class="container marketing">
  <ul class="nav nav-tabs mgr-botmar-md">
    <li role="presentation" class="<%=usr_active%>"><a href="/manager.jsp?block=user&item=create">用户管理</a></li>
    <li role="presentation" class="<%=ord_active%>"><a href="/manager.jsp?block=order&item=list">订单管理</a></li>
    <li role="presentation" class="<%=site_active%>"><a href="/manager.jsp?block=site&item=house">网站管理</a></li>
  </ul>

  <div class="row">
    <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
        <li role="presentation" class="<%=actives[0][0]%>"><a href="/manager.jsp?block=user&item=create">创建用户</a></li>
        <li role="presentation" class="<%=actives[0][1]%>"><a href="/manager.jsp?block=user&item=verify">实名认证审批</a></li>
        <li role="presentation" class="<%=actives[0][2]%>"><a href="/manager.jsp?block=user&item=list">用户资料管理</a></li>
        <li role="separator">
          <hr>
        </li>
        <li role="presentation" class="<%=actives[1][0]%>"><a href="/manager.jsp?block=order&item=list">订单相关管理</a></li>
        <li role="separator">
          <hr>
        </li>
        <li role="presentation" class="<%=actives[2][0]%>"><a href="/manager.jsp?block=site&item=house">房源信息管理</a></li>
        <li role="presentation" class="<%=actives[2][1]%>"><a href="/manager.jsp?block=site&item=rechouse">房源推荐管理</a></li>
        <li role="presentation" class="<%=actives[2][2]%>"><a href="/manager.jsp?block=site&item=reccity">设置热门城市</a></li>
      </ul>
    </div>

    <div class="col-md-10">
      <jsp:include page="<%=inner_page%>"></jsp:include>
    </div>
  </div>
</div>


<%@include file="/blocks/bot.jsp" %>
</body>
</html>

