<%@ page import="com.hepangda.model.dao.DAOFactory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hepangda.model.vo.RealAuthVO" %>
<%@ page import="com.hepangda.model.idao.IRealAuthDAO" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
  IRealAuthDAO ido = DAOFactory.createRealAuthDAO();
  final int pageby = 10;
  int now_page = 1;
  int counts = ido.getCount();
  int pages = (int) Math.ceil((double) counts / pageby);
  String now_page_str = request.getParameter("page");
  if (now_page_str != null) {
    now_page = Integer.valueOf(now_page_str);
  }

  ArrayList<RealAuthVO> vfylist = (ArrayList<RealAuthVO>) request.getAttribute("VfyList");
  if (vfylist == null) {
    vfylist = ido.get(now_page, pageby);
  }
%>

<h2 class="mgr-item-title">实名认证审批</h2>
<p>目前还有<%=counts%>名用户等待实名认证</p>

<table class="table">
  <thead>
  <tr>
    <th>#</th>
    <th>昵称</th>
    <th>真实姓名</th>
    <th>身份证号</th>
    <th>操作</th>
  </tr>
  </thead>
  <tbody>
  <%
    for (RealAuthVO ravo : vfylist) {
  %>
  <tr>
    <td><%=ravo.getRaid()%>
    </td>
    <td><%=ravo.getUsername()%>
    </td>
    <td><%=ravo.getRealname()%>
    </td>
    <td><%=ravo.getIdnumber()%>
    </td>
    <td>
      <button onclick="pass(<%=ravo.getUid()%>)" class="btn btn-success">通过</button>
      <button onclick="fail(<%=ravo.getUid()%>)" class="btn btn-danger">不通过</button>
    </td>
  </tr>
  <%
    }
  %>
  </tbody>
</table>

<nav class="pull-right">
  <%
    if (now_page > 1) {
  %>
  <a href="/verify/get?page=<%=now_page-1%>&pageby=<%=pageby%>"><span>&laquo;</span>上一页</a>
  <%
    }
  %>
  第<%=now_page%>/<%=pages%>页

  <%
    if (now_page < pages) {
  %>
  <a href="/verify/get?page=<%=now_page+1%>&pageby=<%=pageby%>">下一页<span>&raquo;</span></a>
  <%
    }
  %>
</nav>


<script>
  function pass(id) {
    $.get('/verify/pass', {uid: id}, function (a, b, c) {
      location.reload(true);
    });
  }

  function fail(id) {
    $.get('/verify/fail', {uid: id}, function (a, b, c) {
      location.reload(true);
    });
  }
</script>