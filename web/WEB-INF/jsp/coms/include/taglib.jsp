<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-04-26
  Time: 오후 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri = "http://www.springframework.org/tags"%>


<c:set var="ctx" value="${pageContext['request'].contextPath }"/>
<c:set var="css" value="${ctx }/resources/css" />
<c:set var="img" value="${ctx }/resources/img" />
<c:set var="js" value="${ctx }/resources/js" />

<script type="text/javascript" src="${js }/jquery-3.3.1.min.js"></script>