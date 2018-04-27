<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-04-26
  Time: 오전 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>테스트 시작</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="JNF">
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>
<body>


<c:set var = "pageforward" value = "/main/main.do"/>
<jsp:forward page = "${pageforward }"/>

<%--  <script language="javascript">
    location.href = '/main/main.do';
  </script>--%>
</body>
</html>
