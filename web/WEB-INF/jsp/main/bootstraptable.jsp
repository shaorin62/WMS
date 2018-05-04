<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-05-04
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <!--TOSTA-->
    <link rel="stylesheet" type="text/css" href="${ctx }/resources/node_modules/tui-grid/examples/css/explain.css" />
    <link rel="stylesheet" type="text/css" href="${ctx }/resources/node_modules/tui-grid/dist/tui-grid.css" />
    <link rel="stylesheet" href="https://uicdn.toast.com/tui.grid/latest/tui-grid.css" />
</head>
<body>
<div class="code-html">
        <div id="grid"></div>
    </div>
</body>



<script type="text/javascript" class="code-js">

    gridData
    var grid = new tui.Grid({
        el: $('#grid'),
        data: gridData,
        scrollX: false,
        scrollY: false,
        columns: [
            {
                title: 'Name',
                name: 'name'
            },
            {
                title: 'Artist',
                name: 'artist'
            },
            {
                title: 'Type',
                name: 'type'
            },
            {
                title: 'Release',
                name: 'release'
            },
            {
                title: 'Genre',
                name: 'genre'
            }
        ]
    });

</script>

</html>