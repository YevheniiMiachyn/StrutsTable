<!-- Document   : Search Result
     Created on : May 30, 2015, 12:09:21 PM
     Author     : Yevhenii Miachyn -->


<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Found Elements</title>
</head>
<body>
<h1>Search Result: </h1>

<ol>
<s:iterator value="listofFoundElements" var="element">
<li><s:property value="#element.elementName"/></li>
</s:iterator>

</ol>


</body>
</html>