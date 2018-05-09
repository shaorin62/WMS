<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-04-26
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>
<html>
<head>
    <title>메인 페이지.</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="JNF">
<body>

<link rel="stylesheet" href="${ctx }/resources/css/common.css" type="text/css" />

<link href='https://fonts.googleapis.com/css?family=Economica' rel='stylesheet' type='text/css'>


<div class="content-wrapper">
    <h1>시작을 위한 메인 페이지.</h1>
    <p>각종 테스트 페이지 및 모듈 실험을 위한 페이지 입니다. </p>
    <p>앞으로 여러가지 서비스나 모듈을 적용해 볼 생각입니다 . </p>
    <p>이 페이지가 업무 및 각종 웹 개발시 도움이 되도록 업데이트 하도록 하겠습니다.</p>
    <div>자 그럼 왼쪽 위에 작은 상자로 각종 모듈을 시작해 봅시다.</div>

</div>

<!--   MENU STRUCTURE-->

<!--    Label is linked to the hidden checkbox-->
<label for="menu-button" class="menu-button--label">▤</label>

<!--    Checkbox state controls the menu position. When it is checked the menu slides in-->
<input type="checkbox" id="menu-button">

<!--    .menu-wrap is a wrapper for all the menu structure for the easier traversing-->
<div class="menu-wrap">
    <div class="side-menu">
        <ul class="side-menu--list">
            <li>
                <a class="subset">Company</a>
                <a href="${ctx}/main/table.do"> Toast Grid</a>
                <a href="${ctx}/tournament/tournamentview.do">Tournament</a>
                <a href="">Social Responsibility</a>
            </li>
            <li>
                <a class="subset" href="">Products</a>
                <a href="">Solar panels</a>
                <a href="">Electronics</a>
                <a href="">Utilizers</a>
            </li>
            <li>
                <a class="subset" href="">Contacts</a>
                <a href="">Staff</a>
                <a href="">Contact</a>
                <a href="">Media</a>
            </li>

        </ul>

    </div>
</div>


</body>
</html>
