<%@ page import="com.wyy.mofang.entity.Course" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: liaofushen
  Date: 2019/3/15
  Time: 08:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${course.courseTitle}</title>
    <%@include file="link.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <div class="row">

        <div class="col-sm-12">
            <ul class="breadcrumb">
                <li>
                    <a href="${pageContext.request.contextPath}/index">主页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/course/category">教程</a>
                </li>
                <li class="active">
                    ${course.courseTitle}
                </li>
            </ul>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 text-center">
                    <h2 class="h2 center-block">
                        ${course.courseTitle}
                    </h2>

                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <%
                        Course c = (Course) request.getAttribute("course");
                        String[] courseContent = c.getCourseContent();
                        String[] courseImg = c.getCourseImg();
                        for (int i = 0; i < courseContent.length && i < courseImg.length; ++i) {
                    %>


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="h2 panel-title">步骤：<%=i+1%> &nbsp;</h2>
                        </div>
                        <div class="panel-body">
                            <p>
                                <%=courseContent[i]%>
                            </p>
                            <p>
                                <img src="<%=courseImg[i]%>" class="img-responsive" alt="Cinque Terre">

                            </p>
                        </div>
                    </div>
                    <% } %>

                    <a href="/course/study/${course.courseId}" class="btn btn-primary btn-lg" role="button">我已学习</a>

                    <%--<c:forEach items="${course.courseContent}" var="item">--%>
                        <%--<p>--%>
                                <%--${item}--%>
                        <%--</p>--%>
                    <%--</c:forEach>--%>
                    <%--<c:forEach items="${course.courseImg}" var="item">--%>
                        <%--<img src="${item}" class="img-responsive" alt="Cinque Terre">--%>
                    <%--</c:forEach>--%>

            </div>

        </div>
    </div>
</div>
    <%@include file="footer.jsp" %>

</body>
</html>
