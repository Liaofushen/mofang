<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>魔方教程</title>
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
                        教程
                    </li>

                </ul>
                <thead>
                <tr>
                    <th>教程编号</th>
                    <th>教程标题</th>
                    <th>是否学习</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${courseCategory}" var="item">
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/course/${item.courseId}">${item.courseId}</a>
                        </td>
                        <td><a href="${pageContext.request.contextPath}/course/${item.courseId}">${item.courseTitle}</a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/course/${item.courseId}">${item.learn ? "√" : "×"}</a>
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
</div>

<%@include file="footer.jsp" %>

</body>
</html>