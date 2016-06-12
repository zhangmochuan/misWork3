<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li class="admin-parent">        
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="GuitarSearch.jsp" class="am-cf"><span class="am-icon-check"></span> 查询系统<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="GuitarAdd.jsp"><span class="am-icon-puzzle-piece"></span> 新增吉他</a></li>
        </ul>
      </li>
    </ul>
    <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">吉他销售</strong> / <small>查询</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form action="searchGuitar" method="post" class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-id">序列号</th>
                <th class="table-title">制作人</th>
                <th class="table-type">模型</th>
                <th class="table-author">类型</th>
                <th class="table-set">背部材质</th>
                <th class="table-set">顶部材质</th>
                <th class="table-set">价格</th>
                <th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
	          <c:forEach items="${guitars }" var="guitar">
	         	<tr>
	                <td class="table-id">${guitar.serialNumber }</td>
	                <td class="table-title">${guitar.spec.builder }</td>
                	<td class="table-set">${guitar.spec.model }</td>
	                <td class="table-type">${guitar.spec.type }</td>
	                <td class="table-author">${guitar.spec.backWood }</td>
	                <td class="table-set">${guitar.spec.topWood }</td>
	                <td class="table-set">${guitar.price }</td>
	                <td class="table-set"><a href="delGuitar?guitar.serialNumber=${guitar.serialNumber }">删除</a></td>
	              </tr>
	          </c:forEach>
          </tbody>
        </table>
         <input type="submit" class="am-btn am-btn-primary" id="submit" value="查询"/>
        </form>
      </div>

    </div>
  </div>
  <!-- content end -->
</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>
