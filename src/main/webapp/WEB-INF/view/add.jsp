<%--
  Created by IntelliJ IDEA.
  User: Windows10
  Date: 2019/6/5
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="info2">
    <p>
        <form:checkbox path="isok"/>true
    </p>
    <p>
        <form:checkbox path="test" value="读书"/>看书
        <form:checkbox path="test" value="上网"/>上网
    </p>
    <p>

        <form:select size="3" multiple="multiple" path="list1" items="${info2.list1}">

        </form:select>
    </p>


</form:form>
<%--<select>--%>
<%--<c:forEach items="${info2.list1}" var="s">--%>
        <%--<option>${s.id}</option>--%>
<%--</c:forEach>--%>
<%--</select>--%>
</body>
</html>
