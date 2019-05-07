<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人用户</title>
    <%@include file="link.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1>Welcome!</h1>
            亲爱的：${user.userName} <br>
            您总共学习了${user.courseList.size()}个教程 <br>
            您已经学习的教程分别是：<br>
            <c:forEach items="${user.courseList}" var="item">
                <span class="label label-success">${item.courseTitle}</span>
            </c:forEach>

        </div>
    </div>
</div>
<div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</div>

<%@include file="footer.jsp" %>
</body>
</html>