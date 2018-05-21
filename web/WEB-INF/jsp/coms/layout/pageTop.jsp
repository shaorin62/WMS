    <%--
      Created by IntelliJ IDEA.
      User: shaor
      Date: 2018-04-26
      Time: 오후 2:22
      To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>

        <ul id="nav">
            <li class="current"><a href="${ctx}/main/main.do" title="Home">Home</a></li>
            <li><a href="#" title="Services">Services</a>
            <ul class="sub">
                <li><a href="javascript:fn_menu('${ctx }/toastgrid/table.do','test')" title="Services > Webdesign">Toast Grid</a></li>
                <li><a href="#" title="Services > Developement">Development</a></li>
                <li><a href="#" title="Services > Illustration">Illustration</a></li>
                <li><a href="#" title="Services > Search Engine">Search engine</a></li>
                <li><a href="#" title="Services > Wordpress">Wordpress</a></li>
            </ul>
            </li>
            <li><a href="#" title="Blog">Blog</a>
                <ul class="sub" >
                    <li><a href="#" title="Services > Themes">Themes</a></li>
                    <li><a href="#" title="Services > Plugins">Plugins</a></li>
                </ul>
            </li>
            <li><a href="#" title="Contact">Contact</a></li>
        </ul>


