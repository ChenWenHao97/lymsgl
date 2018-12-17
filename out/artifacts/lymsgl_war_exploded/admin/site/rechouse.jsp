<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="mgr-item-title">房源推荐管理</h2>

<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
      <div class="caption">
        <h3>房源一号</h3>
        <div class="row">
          <div class="col-md-12">
            一段非常简要的介绍
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div style="color:gray">地域：上海</div>
          </div>
          <div class="col-md-6">
            <div class="pull-right" style="color:red">RMB 300/晚</div>
          </div>
        </div>
        <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
      <div class="caption">
        <h3>房源二号</h3>
        <div class="row">
          <div class="col-md-12">
            两段非常简要的介绍
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div style="color:gray">地域：西安</div>
          </div>
          <div class="col-md-6">
            <div class="pull-right" style="color:red">RMB 4396/晚</div>
          </div>
        </div>
        <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
      <div class="caption">
        <h3>房源三号</h3>
        <div class="row">
          <div class="col-md-12">
            三段非常简要的介绍
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div style="color:gray">地域：成都</div>
          </div>
          <div class="col-md-6">
            <div class="pull-right" style="color:red">RMB 777/晚</div>
          </div>
        </div>
        <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
      </div>
    </div>
  </div>
</div>


<div id="modalEdit" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
            aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">修改房源推荐</h4>
      </div>

      <div class="modal-body">
        <form class="form-horizontal">
          <div class="form-group">
            <label for="editId" class="col-sm-2 control-label">房源ID</label>
            <div class="col-sm-10">
              <input class="form-control" id="editId">
            </div>
          </div>

          <div class="form-group">
            <label for="editUsername" class="col-sm-2 control-label">房源区域</label>
            <div class="col-sm-10">
              <input class="form-control" id="editUsername" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPhone" class="col-sm-2 control-label">介绍</label>
            <div class="col-sm-10">
              <input class="form-control" id="editPhone" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPassword" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-10">
              <input type="number" class="form-control" id="editPassword" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editIDNo" class="col-sm-2 control-label">图片URI</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="editIDNo" placeholder="若不修改，则不填">
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">完成</button>
      </div>
    </div>
  </div>
