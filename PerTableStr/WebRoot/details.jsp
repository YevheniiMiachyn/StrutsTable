<%-- 
    Document   : details.jsp
    Created on : May 26, 2015, 4:12:32 PM
    Author     : Yevhenii Miachyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            Details on : <s:property value="element.elementName" />
                
        </title>

            <style type="text/css">
<!--

body {
	background-color: #074358;
	margin-top: 0px;
}
.style2 {
        color: #FBE08B;
	font-weight: bold;
}
.style3 {
        color: #FBE08B;
        font-size: 24px;
}

-->
        </style>
    </head>
    <body>

        <!-- Display Element Details including:
            Name
            Abbreviation
            Image
            Atomic Number
            Atomic Weight
            Metallic or Not
            Description
        -->

        <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#667D7F">

<tr>
        <td height="150" align="right" valign="bottom" background="images/Backgrounds/Header.jpg" bgcolor="#667D7F">

         <!--
                form1 will submit search query checking all items of an element for the
                requested String
          -->
      <s:form action="elementSearch">
                <table width="500" border="0" cellspacing="0" cellpadding="2">
                    <tr>
                        <td align="center">
                            <span class="style2">Search for an Element:                            </span>
                            <strong>
                            <input name="searchValue" type="text" id="searchValue" size="20" />
                            </strong>                            <br>
            <br />
                            <input type="submit" name="button" id="button" value="Search Now" />
                            <br>
                            <br>
                    </td>
                  </tr>
                </table>
        </s:form>
     </td>
  </tr>
    <tr>
      <td height="15">
      </td>
  </tr>


<tr>
      <td align="center">

       <table width="700" border="0" cellspacing="0" cellpadding="2" align="center">
  <tr>
    <td colspan="2" align="center" bgcolor="#074358" class="style3" height="40">
                <s:property value="element.elementName" />
    </td>
  </tr>
  <tr>
    <td width="300" rowspan="2" valign="top">
        <img
            src="images/<s:property value="element.imageURI" />"
            width="300"
            height="300"
           />
    </td>
    <td><table width="400" border="1" cellspacing="0" cellpadding="2">
      <tr>
        <td width="135">Abbreviation:</td>
        <td width="251">
            <s:property value="element.elementAbbreviation" />
        </td>
      </tr>
      <tr>
        <td>Atomic Number:</td>
        <td>
           <s:property value="element.atomicNumber" />
        </td>
      </tr>
      <tr>
        <td>Atomic Weight:</td>
        <td>
           <s:property value="element.atomicWeight" />
        </td>
      </tr>
      <tr>
        <td>Metallic:</td>
        <td>
           <s:property value="element.isElementMetallic"/>
        </td>
      </tr>
    </table></td>
  </tr>

  <tr>
    <td><s:property value="element.elementDescription" />
    </td>
  </tr>
</table>

      </td></tr>
         <tr>
      <td height="15">
      </td>
  </tr>

        </table>
    </body>
</html>
