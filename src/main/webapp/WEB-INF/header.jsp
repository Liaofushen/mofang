<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-heart" style="color:red"></span>&nbsp;爱魔方教程网站</a>
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
                            <c:if test="${user == null}">
                                <li><a href="${pageContext.request.contextPath}/user/login">登录/注册</a></li>
                            </c:if>
                            <c:if test="${user != null}">
                                <li><a href="${pageContext.request.contextPath}/user/info">欢迎您，${user.userName}</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/logout">退出登录</a></li>
                            </c:if>

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
