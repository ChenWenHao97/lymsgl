<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  boolean ok = (boolean) request.getAttribute("ok");
  String img = "remove";
  if (ok) {
      img = "ok";
  }
%>
<div class="row">
  <h1 style="text-align: center">
    <span class="glyphicon glyphicon-<%=img%>"></span>
  </h1>
</div>
<div class="row">
  <h2 style="text-align: center">${result}</h2>
</div>
