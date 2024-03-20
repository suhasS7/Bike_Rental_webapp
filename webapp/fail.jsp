<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Expired</title>
<style>
#container{x
display:flex;
justify-content: center;
align-items: center;
}
</style>
</head>
<body>

<div id="container">
<div>
<%
String msg1=(String)request.getAttribute("msg");
out.println(msg1);

%>

</div>
</div>


</body>
</html>