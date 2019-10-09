<%--
  Created by IntelliJ IDEA.
  User: Windows10
  Date: 2019/6/20
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
        ${error}
        <form method="post" action="${pageContext.request.contextPath}/save" enctype="multipart/form-data">
            <p>
                <label>文件：</label>
                <input type="file" id="files" name="files" multiple="multiple">
            </p>
            <input type="submit" value="提交">
        </form>
</body>
</html>
