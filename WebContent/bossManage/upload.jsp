<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
  <html>
    <head>
      <title>文件上传</title>
   </head>
   
    <body>
      <form action="${pageContext.request.contextPath}/UploadHandleServlet" enctype="multipart/form-data" method="post">
         上传用户：<input type="text" name="username"><br/>
         上传文件1：<input type="file" name="logo" accept="image/gif,image/jpeg,image/png"><br/>
         上传文件2：<input type="file" name="file2"><br/>
         <input type="submit" value="提交">
         <img src="../uploads/20181016091851/20181016091851.jpg" />
    </form>
   </body>
</html>