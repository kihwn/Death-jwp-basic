<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>SLiPP Java Web Programming</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="../css/styles.css" rel="stylesheet">
	</head>
	<body>
<nav class="navbar navbar-fixed-top header">
 	<div class="col-md-12">
        <div class="navbar-header">

            <a href="/" class="navbar-brand">SLiPP</a>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse1">
          <i class="glyphicon glyphicon-search"></i>
          </button>

        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse1">
          <form class="navbar-form pull-left">
              <div class="input-group" style="max-width:470px;">
                <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                <div class="input-group-btn">
                  <button class="btn btn-default btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
              </div>
          </form>
          <ul class="nav navbar-nav navbar-right">
             <li>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-bell"></i></a>
                <ul class="dropdown-menu">
                  <li><a href="https://slipp.net" target="_blank">SLiPP</a></li>
                  <li><a href="https://facebook.com" target="_blank">Facebook</a></li>
                </ul>
             </li>
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <li><a href="../user/list"><i class="glyphicon glyphicon-user"></i></a></li>
                </c:when>
            </c:choose>
           </ul>
        </div>
     </div>
</nav>
<div class="navbar navbar-default" id="subnav">
    <div class="col-md-12">
        <div class="navbar-header">
            <a href="#" style="margin-left:15px;" class="navbar-btn btn btn-default btn-plus dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-home" style="color:#dd1111;"></i> Home <small><i class="glyphicon glyphicon-chevron-down"></i></small></a>
            <ul class="nav dropdown-menu">

                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <li><a href="../user/list"><i class="glyphicon glyphicon-user" style="color:#1111dd;"></i> Profile</a></li>
                    </c:when>
                </c:choose>
                <li class="nav-divider"></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog" style="color:#dd1111;"></i> Settings</a></li>
            </ul>
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse2">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="../index.jsp">Posts</a></li>
                <c:choose>
                <c:when test="${not empty sessionScope.user.userId}">
                    <li><a href="../user/logout" role="button">로그아웃</a></li>
                    <li><a href="#" role="button">개인정보수정</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="../user/login.jsp" role="button">로그인</a></li>
                    <li><a href="../user/form.jsp" role="button">회원가입</a></li>
                </c:otherwise>
                </c:choose>
                <!--
                <li><a href="#loginModal" role="button" data-toggle="modal">로그인</a></li>
                <li><a href="#registerModal" role="button" data-toggle="modal">회원가입</a></li>
                -->
            </ul>
        </div>
    </div>
</div>