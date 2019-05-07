<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>交流发帖</title>
    <%@include file="link.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-sm-12">

            <table class="table table-striped">
                <ul class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/index">主页</a>
                    </li>
                    <li class="active">
                        发帖交流
                    </li>

                </ul>

                <a class="btn btn-lg btn-primary pull-right" href="${pageContext.request.contextPath}/article/new">
                    我要发帖 » </a>

                <div class="row">&nbsp;</div>

                <thead>
                <tr>
                    <th>帖子编号</th>
                    <th>帖子标题</th>
                    <th>发帖人</th>
                    <th>发帖时间</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${articleCategory}" var="item">
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/article/${item.articleId}">${item.articleId}</a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/article/${item.articleId}">${item.articleTitle}</a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/article/${item.articleId}">${item.user.userName} </a>
                        </td>

                        <td>
                            <a href="${pageContext.request.contextPath}/article/${item.articleId}"><fmt:formatDate
                                    value="${item.articleTime}" pattern="yyyy-MM-dd hh:mm"/>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>


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
</div>

<%@include file="footer.jsp" %>
</body>
</html>