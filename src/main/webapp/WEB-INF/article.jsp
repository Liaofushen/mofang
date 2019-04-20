<%--
  Created by IntelliJ IDEA.
  User: liaofushen
  Date: 2019/3/15
  Time: 08:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${article.articleTitle}</title>
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
                    <a href="${pageContext.request.contextPath}/article/category">发帖交流</a>
                </li>
                <li class="active">
                    ${article.articleTitle}
                </li>
            </ul>
            <a class="btn btn-lg btn-primary pull-right" href="${pageContext.request.contextPath}/article/new">
                我要发帖 » </a>
            <div class="row">&nbsp;</div>

            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="h2 center-block">
                        ${article.articleTitle}
                        <br/>
                    </h1>
                    <div class="lead">
                        <p>发帖人：${article.user.userName}</p>
                        <p>发帖时间：<fmt:formatDate
                                value="${article.articleTime}" pattern="yyyy-MM-dd hh:mm"/></p>


                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <c:forEach items="${article.articleContentList}" var="item">
                        <p>
                                ${item}
                        </p>
                    </c:forEach>
                    <c:forEach items="${article.articleImgList}" var="item">
                        <img src="${item}" class="img-responsive" alt="Cinque Terre">
                    </c:forEach>

                    <p>&nbsp;</p>

                    <hr class="divider"/>


                    <div class="divider"><h2 class="h2"> 评论列表</h2></div>


                    <c:forEach items="${article.commentList}" var="item">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span
                                    class="glyphicon glyphicon-user"></span>&nbsp;${item.user.userName}</div>
                            <div class="panel-body">
                                <p>${item.commentContent}
                                </p>
                                <p><fmt:formatDate
                                        value="${item.commentTime}" pattern="yyyy-MM-dd hh:mm"/></p>
                            </div>
                        </div>
                    </c:forEach>

                    <hr class="divider"/>

                    <form role="form" method="post" action="${pageContext.request.contextPath}/article/comment">
                        <div class="form-group">
                            <input type="hidden" name="articleId" value="${article.articleId}"/>
                            <label for="comment">我要评论</label>
                            <textarea class="form-control" rows="3" id="comment" name="commentContent"></textarea>
                        </div>
                        <div class="form-group pull-right">
                            <button type="submit" class="btn btn-default">提交评论</button>
                        </div>
                    </form>


                </div>

            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>

</body>
</html>
