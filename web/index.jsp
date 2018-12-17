<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>旅游民宿管理</title>
  <%@include file="/blocks/library.jsp" %>
</head>
<body>
<jsp:include page="/blocks/nav.jsp" flush="true">
  <jsp:param name="index" value="active"/>
</jsp:include>

<!--轮播图-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!--轮播图指示-->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="first-slide" src="https://z1.muscache.cn/pictures/41df549a-66b9-4202-bde0-31941e58c063.jpg">
    </div>

    <div class="item">
      <img class="second-slide" src="https://z1.muscache.cn/pictures/41df549a-66b9-4202-bde0-31941e58c063.jpg">
    </div>

    <div class="item">
      <img class="third-slide" src="https://z1.muscache.cn/pictures/41df549a-66b9-4202-bde0-31941e58c063.jpg">
    </div>

  </div>

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">前一个</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">后一个</span>
  </a>
</div>


<%--热门城市推荐--%>
<div class="container marketing">

  <div class="row">
    <div class="col-lg-4">
      <img class="img-circle" alt="图片占位符" width="140" height="140"
           src="https://z1.muscache.cn/im/pictures/8b7519ec-2c82-4c09-8233-fd4d2715bbf9.jpg?aki_policy=large">
      <h2>热门城市1</h2>
      <p>城市介绍1</p>
      <p><a class="btn btn-default" href="#" role="button">详细信息 &raquo;</a></p>
    </div>

    <div class="col-lg-4">
      <img class="img-circle" alt="图片占位符" width="140" height="140"
           src="https://z1.muscache.cn/im/pictures/8b7519ec-2c82-4c09-8233-fd4d2715bbf9.jpg?aki_policy=large">
      <h2>热门城市2</h2>
      <p>城市介绍2</p>
      <p><a class="btn btn-default" href="#" role="button">详细信息 &raquo;</a></p>
    </div>

    <div class="col-lg-4">
      <img class="img-circle" alt="图片占位符" width="140" height="140"
           src="https://z1.muscache.cn/im/pictures/8b7519ec-2c82-4c09-8233-fd4d2715bbf9.jpg?aki_policy=large">
      <h2>热门城市3</h2>
      <p>城市介绍3</p>
      <p><a class="btn btn-default" href="#" role="button">详细信息 &raquo;</a></p>
    </div>
  </div>

  <hr class="featurette-divider">

  <div class="row featurette">
    <div class="col-md-7">
      <h2 class="featurette-heading">房源推荐1</h2>
      <p class="lead">房源介绍1</p>
    </div>
    <div class="col-md-5">
      <img class="featurette-image img-responsive center-block"
           src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
    </div>
  </div>

  <hr class="featurette-divider">

  <div class="row featurette">
    <div class="col-md-7 col-md-push-5">
      <h2 class="featurette-heading">房源推荐2</h2>
      <p class="lead">房源介绍2</p>
    </div>
    <div class="col-md-5 col-md-pull-7">
      <img class="featurette-image img-responsive center-block"
           src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
    </div>
  </div>

  <hr class="featurette-divider">

  <div class="row featurette">
    <div class="col-md-7">
      <h2 class="featurette-heading">房源推荐3</h2>
      <p class="lead">房源介绍3</p>
    </div>
    <div class="col-md-5">
      <img class="featurette-image img-responsive center-block"
           src="https://z1.muscache.cn/im/pictures/da2d8e97-90b7-409f-94ac-5ab0327c289b.jpg?aki_policy=large">
    </div>
  </div>
</div>

<%@include file="blocks/bot.jsp" %>
</body>
</html>