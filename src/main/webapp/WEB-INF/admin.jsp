<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>管理员</title>
    <%@include file="link.jsp" %>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/index"><span
                                class="glyphicon glyphicon-heart" style="color:red"></span>&nbsp;爱魔方教程网站</a>
                    </div>
                    <div>
                        <!--向左对齐-->
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="${pageContext.request.contextPath}/course/category">魔方教程</a></li>
                            <li><a href="${pageContext.request.contextPath}/article/category">发帖交流</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/rank">排行榜</a></li>

                        </ul>
                        <!--向右对齐-->
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="${pageContext.request.contextPath}/user/admin">欢迎您，管理员wyy</a></li>

                        </ul>
                        <%--<a class="navbar-text navbar-right" href="${pageContext.request.contextPath}/user/info">--%>
                        <%--<c:if test="${user == null}">--%>
                        <%--<a href="${pageContext.request.contextPath}/user/login">登录/注册</a>--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${user != null}">--%>
                        <%--${user.userName}--%>
                        <%--&nbsp;--%>
                        <%--<a href="${pageContext.request.contextPath}/user/logout">退出登录</a>--%>

                        <%--</c:if>--%>

                        <%--</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>



            <div class="row">&nbsp;</div>


            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">
                        新增教程
                    </a>
                </li>
                <li>
                    <a href="#ioa" data-toggle="tab">删除教程</a>
                </li>

                <li>
                    <a href="#ios" data-toggle="tab">删除帖子</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="home">

                    <form class="form-horizontal" role="form" method="post"
                          enctype="multipart/form-data"
                          action="${pageContext.request.contextPath}/course/add">
                        <div class="form-group">
                            <label for="articleTitle" class="col-sm-2 control-label">标题</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="articleTitle" name="courseTitle"
                                       placeholder="请输入标题">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="articleContent" class="col-sm-2 control-label">正文</label>
                            <div class="col-sm-10">
            <textarea rows="20" class="form-control" id="articleContent" name="courseContent"
                      placeholder="请输入内容"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="img" class="col-sm-2 control-label">上传图片</label>
                            <div class="col-sm-10">
                                <input id="img" name="img" multiple="multiple" type="file" class="file" data-show-upload="false">

                            </div>
                        </div>
                        <div class="form-group pull-right">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-lg btn-primary">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="ioa">
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
                                    <a href="${pageContext.request.contextPath}/course/delete/${item.courseId}">删除
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="tab-pane fade" id="ios">


                    <table class="table table-striped">

                        <thead>
                        <tr>
                            <th>帖子编号</th>
                            <th>帖子标题</th>
                            <th>发帖人</th>
                            <th>发帖时间</th>
                            <th>删除</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${articleCategory}" var="item">
                            <tr>
                                <td>
                                    <a href="${pageContext.request.contextPath}/article/${item.articleId}">${item.articleId}</a>
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
                                <td>
                                    <a href="${pageContext.request.contextPath}/article/delete/${item.articleId}">删除
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>


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
</div>
<%@include file="footer.jsp" %>
</body>
</html>