<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>排行榜</title>
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
                        排行榜
                    </li>

                </ul>
                <thead>
                <tr>
                    <th>学习排名</th>
                    <th>用户名</th>
                    <th>学习教程</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="item" varStatus="i">
                    <tr>
                        <td>${i.index + 1}</td>
                        <td>${item.userName}</td>
                        <td>${item.courseList.size()}</td>
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
</div>
<%@include file="footer.jsp" %>
</body>
</html>