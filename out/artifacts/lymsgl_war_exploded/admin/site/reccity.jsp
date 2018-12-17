<%--
  Created by IntelliJ IDEA.
  User: pangda
  Date: 12/10/18
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2 class="mgr-item-title">设置热门城市</h2>

<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <img
          src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538935648968&di=17315a87a71f9f889f58ddfe9625bc16&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fa71ea8d3fd1f413407002a5a2f1f95cad1c85eda.jpg">
      <div class="caption">
        <h3>成都</h3>
        <p class="a">
          <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
        </p>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img
          src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538936910317&di=9f5552b913688dc6aa437a2bb46e9a8a&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F011254579708b50000012e7e41f60e.jpg%40900w_1l_2o_100sh.jpg">
      <div class="caption">
        <h3>西安</h3>
        <p class="a">
          <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
        </p>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img
          src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1538936982944&di=829ebfb95bc2feb1c67d8ad1c9fa7efa&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dpixel_huitu%252C0%252C0%252C294%252C40%2Fsign%3D6bbf297980d4b31ce4319cfbeeae4213%2F09fa513d269759ee1c3f52f1b9fb43166d22df98.jpg">
      <div class="caption">
        <h3>上海</h3>
        <p class="a">
          <a data-toggle="modal" data-target="#modalEdit" class="btn btn-primary" role="button">修改</a>
        </p>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modalEdit" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">
          <span>&times;</span>
        </button>
        <h4 class="modal-title">修改推荐城市</h4>
      </div>

      <div class="modal-body">
        <form class="form-horizontal">
          <div class="form-group">
            <label for="editUsername" class="col-sm-2 control-label">城市名</label>
            <div class="col-sm-10">
              <input class="form-control" id="editUsername" placeholder="若不修改，则不填">
            </div>
          </div>

          <div class="form-group">
            <label for="editPhone" class="col-sm-2 control-label">图片URI</label>
            <div class="col-sm-10">
              <input class="form-control" id="editPhone" placeholder="若不修改，则不填">
            </div>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭，不保存更改</button>
        <button type="button" class="btn btn-primary">保存更改</button>
      </div>

    </div>
  </div>
</div>
