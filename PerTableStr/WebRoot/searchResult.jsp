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
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	font-weight: bold;
}
body {
	background-color: #074358;
	margin-top: 0px;
}
.style2 {
	color: #FBE08B;
	font-weight: bold;
}
-->
        </style>

</head>
<body>
<h1 class="style2">Search Result: </h1>

<ol>
<s:iterator value="listofFoundElements" var="element">
<li class="style2"><a href="details?ID=<s:property value='#element.atomicNumber'/>"><s:property value="#element.elementName"/></a></li>
</s:iterator>

</ol>

</body>
</html>