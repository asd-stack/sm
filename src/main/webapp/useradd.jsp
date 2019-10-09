<%--
  Created by IntelliJ IDEA.
  User: Windows10
  Date: 2019/6/19
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fr" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fr:form modelAttribute="user" action="register" method="post">
    <p><fr:input path="name"/><fr:errors path="name"/> </p>
    <p><fr:input path="pwd"/><fr:errors path="pwd"/></p>
    <p><input type="submit" value="提交"></p>
</fr:form>
</body>
</html>
