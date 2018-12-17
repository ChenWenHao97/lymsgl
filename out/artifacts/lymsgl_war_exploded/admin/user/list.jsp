<%@ page import="com.hepangda.model.dao.DAOFactory" %>
<%@ page import="com.hepangda.model.idao.IUserDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hepangda.model.vo.UserMessageVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  IUserDAO ido = DAOFactory.createUserDAO();
  final int pageby = 1;
  int now_page = 1;

  String keyword = request.getParameter("keyword");

  String now_page_str = request.getParameter("page");
  if (now_page_str != null) {
    now_page = Integer.valueOf(now_page_str);
  }

  if (keyword == null) {
    keyword = "";
  }

  int counts = ido.getCountByKeyword(keyword); // todo:
  int pages = (int) Math.ceil((double) counts / pageby);

  ArrayList<UserMessageVO> ulist = (ArrayList<UserMessageVO>) request.getAttribute("List");
  if (ulist == null) {
    ulist = ido.getByKeyword(now_page, pageby, keyword);
  }
%>

<h2 class="mgr-item-title">用户资料管理</h2>
<p>请在下方找到要管理的用户，并点击右面的按钮进行相关管理操作</p>

<form class="form-inline pull-right mgr-botmar-sm">
  <div class="form-group">
    <div class="input-group">
      <input type="text" class="form-control" id="keywordinput"/>
      <span class="input-group-addon">
        <a href="javascript:search()"><i class="glyphicon glyphicon-search"> <span>搜索</span></i></a>
      </span>
    </div>
  </div>
</form>

<table class="table table-hover">
  <thead>
  <tr>
    <th>#</th>
    <th>用户昵称</th>
    <th>手机号码</th>
    <th>身份</th>
    <th>是否实名认证</th>
    <th>真实姓名</th>
    <th>身份证号</th>
    <th>操作</th>
  </tr>
  </thead>
  <tbody>
  <%
    for (UserMessageVO umvo : ulist) {
  %>
  <tr>
    <td><%=umvo.getUid()%>
    </td>
    <td><%=umvo.getUsername()%>
    </td>
    <td><%=umvo.getPhonenumber()%>
    </td>
    <td><%=umvo.getStatus()%>
    </td>
    <td><%=umvo.isVerified() ? "是" : "否"%>
    </td>
    <td><%=umvo.getRealname()%>
    </td>
    <td><%=umvo.getIdnumber()%>
    </td>
    <td>
      <button class="btn-link" data-toggle="modal" data-target="#exampleModal" onclick='values(<%=umvo.toString()%>)'>
        修改信息
      </button>
      <button class="btn-link" data-toggle="modal" data-target="#makesureModal"
              onclick='dvalue({uid: <%=umvo.getUid()%>})'>删除用户
      </button>
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
  <a href="/user/get?page=<%=now_page-1%>&pageby=<%=pageby%>&keyword=<%=keyword%>"><span>&laquo;</span>上一页</a>
  <%
    }
  %>
  第<%=now_page%>/<%=pages%>页

  <%
    if (now_page < pages) {
  %>
  <a href="/user/get?page=<%=now_page+1%>&pageby=<%=pageby%>&keyword=<%=keyword%>">下一页<span>&raquo;</span></a>
  <%
    }
  %>
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
            <label for="editId" class="col-sm-2 control-label">用户ID</label>
            <div class="col-sm-10">
              <input class="form-control" id="editId" readonly>
            </div>
          </div>

          <div class="form-group">
            <label for="editUsername" class="col-sm-2 control-label">用户昵称</label>
            <div class="col-sm-10">
              <input class="form-control" id="editUsername" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPhone" class="col-sm-2 control-label">手机号码</label>
            <div class="col-sm-10">
              <input class="form-control" id="editPhone" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPassword" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="editPassword" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editVerified" class="col-sm-2 control-label">实名认证</label>
            <div class="col-sm-10">
              <select id="editVerified" class="form-control">
                <option value="true">是</option>
                <option value="false">否</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label for="editIDNo" class="col-sm-2 control-label">身份证号</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="editIDNo" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editRealname" class="col-sm-2 control-label">真实姓名</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="editRealname" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editUserType" class="col-sm-2 control-label">类型</label>
            <div class="col-sm-10">
              <select id="editUserType" class="form-control">
                <option value="1">房东</option>
                <option value="2">住户</option>
                <option value="100">系统管理员</option>
              </select>
            </div>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭，不保存更改</button>
        <button type="submit" class="btn btn-primary" onclick="doModify()">保存更改</button>
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
        <input hidden id="deleteId">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-danger" onclick="doDelete()">确认，并删除</button>
      </div>
    </div>
  </div>
</div>

<script>
  $("#exampleModal").modal('hide');
  $("#makesureModal").modal('hide');

  function values(obj) {
    $("#editId").val(obj.uid);
    $("#editUsername").val(obj.username);
    $("#editPhone").val(obj.phonenumber);
    $("#editPassword").val(obj.password);
    if (obj.verified) {
      $("#editVerified").val("true");
    } else {
      $("#editVerified").val("false");
    }
    $("#editIDNo").val(obj.idnumber);
    $("#editRealname").val(obj.realname);
    $("#editUserType").val(obj.status);
  }

  function dvalue(obj) {
    $("#deleteId").val(obj.uid);
  }

  function doDelete() {
    var id = $("#deleteId").val();
    $.get('/user/delete', {uid: id}, function (a, b, c) {
      location.reload(true);
    });
  }

  function doModify() {
    $.post('/user/modify', {
      uid: $("#editId").val(),
      username: $("#editUsername").val(),
      phonenumber: $("#editPhone").val(),
      password: $("#editPassword").val(),
      idnumber: $("#editIDNo").val(),
      realname: $("#editRealname").val(),
      status: $("#editUserType").val()
    }, function(data,status){
      location.reload(true);
    })
  }

  function search() {
    var keyword = $('#keywordinput').val();
    location.href = "/user/get?page=1&pageby=<%=pageby%>&keyword=" + keyword;
  }

</script>