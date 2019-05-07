<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <%@include file="link.jsp"%>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="col-sm-10">
                &nbsp;
                &nbsp;
            </div>
            <div class="col-sm-10">
                &nbsp;
                &nbsp;
            </div>
            <div class="col-sm-10">
                &nbsp;
                &nbsp;
            </div>
            <div class="col-sm-10">
                &nbsp;
                &nbsp;
            </div>
            <div class="col-sm-10">
                &nbsp;
                &nbsp;
            </div>
            <div class="col-sm-12" style="background-color: linen">

            <div class="col-sm-12 text-center text-info">
                <div class="col-sm-10">
                    &nbsp;
                    &nbsp;
                </div>
                <img src="/static/img/logo.png">

                <h2>
                    注册</h2>
                <div class="col-sm-10">
                    &nbsp;
                    &nbsp;
                </div>
            </div>
            <form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/user/register">
                <div class="form-group">
                    <label for="userName" class="col-sm-2 control-label">账号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入账号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="userPass" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userPass" name="userPass" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">注册</button>
                        <a  class="pull-right" href="${pageContext.request.contextPath}/user/login">已有账号，去登录</a>
                    </div>
                </div>
            </form>
                <div class="col-sm-10">
                    &nbsp;
                    &nbsp;
                </div>
            </div></div>
        <div class="col-sm-3"></div>
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
</div>

<%@include file="footer.jsp" %>
</body>
</html>