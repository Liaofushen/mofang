<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员页面</title>
    <%@include file="link.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="h1">新增教程</div>

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
        <div class="col-sm-2"></div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>