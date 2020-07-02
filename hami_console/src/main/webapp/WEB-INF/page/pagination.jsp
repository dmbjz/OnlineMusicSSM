<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="clearfix text-right">
    <input type="hidden" id="pageNo" name="pageNo" value="${mq.pageNo}">
    <input type="hidden" id="totalPage" value="${page.totalPage}">
    <ul class="pagination no-margin">
        <li id="prev" class="disabled"><a href="#">Prev</a></li>
        <c:forEach begin="1" end="${page.totalPage}" var="myPageNo">
            <li <c:if test="${myPageNo == mq.pageNo}">class="active"</c:if>><a
                    pageNoButton href="#">${myPageNo}</a></li>
        </c:forEach>
        <li id="next"><a href="#">Next</a></li>
    </ul>
</div>
</body>
</html>
