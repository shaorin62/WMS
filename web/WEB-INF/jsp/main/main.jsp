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
    <title>메인 페이지로 왔습니다.</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="JNF">
<body>

<script language="javascript">

    alert('${js }' + '/jquery-3.3.1.min.js');
    alert("${ctx }");

    $(document).ready(function(){
        $('#btn').click(function(){
            alert ("Hello jQuery!");
        })
    });



</script>

<input type="button" id="btn" value="click">

</body>
</html>
