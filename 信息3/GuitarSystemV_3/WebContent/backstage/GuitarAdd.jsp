<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>GuitarSellSystem</title>
  <meta name="description" content="销售页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand" style="center">
    <strong>吉他商城</strong> 
  </div>
</header>
<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">    
      <li class="admin-parent">     
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="GuitarSearch.jsp" class="am-cf"><span class="am-icon-check"></span> 查询系统<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="GuitarAdd.jsp"><span class="am-icon-puzzle-piece"></span> 新增吉他</a></li>        
        </ul>
      </li>     
    </ul>
   </div>
  <!-- sidebar end -->

   <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加</strong></div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
        <div class="am-panel am-panel-default">
          <div class="am-panel-bd">
            <div class="am-g">
              <div class="am-u-md-4">
              </div>
              <div class="am-u-md-8">
              </div>
            </div>
          </div>
        </div>
        <div class="am-panel am-panel-default">
          <div class="am-panel-bd">
          </div>
        </div>
      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <form action="addGuitar" method="post" class="am-form am-form-horizontal" >
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">序列号</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.serialNumber" placeholder="序列号 ">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">制作人</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.spec.builder" placeholder="制作人">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">模型</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.spec.model" placeholder="模型">
            </div>
          </div>
		  
	      <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">类型</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.spec.type" placeholder="类型">
            </div>
          </div>
		  
		  <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">背面木质</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.spec.backWood" placeholder="背面木质">
            </div>
          </div>
		  
		  <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">顶部木质</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.spec.topWood" placeholder="顶部木质">
            </div>
          </div>
          
           <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">价格</label>
            <div class="am-u-sm-9">
              <input type="text" name="guitar.price" placeholder="价格">
            </div>
          </div>
	
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <input type="submit" class="am-btn am-btn-primary" id="submit" value="提交"/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- content end -->
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</html>
