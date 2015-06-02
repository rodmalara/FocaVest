<%-- 
    Document   : fileUploadTest
    Created on : 28/05/2015, 16:36:24
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
</head>
<body>
<form method="post" action="UploadEstablishmentImageServlet" enctype="multipart/form-data">
Select file to upload:
<input type="file" name="dataFile" id="fileChooser"/><br/><br/>
<input type="submit" value="Upload" />
</form>
</body>
</html>
