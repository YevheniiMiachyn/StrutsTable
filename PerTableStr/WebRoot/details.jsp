<%-- 
    Document   : details.jsp
    Created on : May 26, 2015, 4:12:32 PM
    Author     : Chris Hardin, Yevhenii Miachyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page errorPage = "errorPage.jsp" %>

<%@page import="com.java.main.business.ElementSearchList"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

        <%
            //myID Used as identifier for specific element
            int myID = Integer.parseInt(request.getParameter("ID")); 
            myID -= 1;

            //load CSV file and populate list of all elements
            //(myID used to pull details on specific element)
            String elementListPath = application.getRealPath(application.getInitParameter("elementListPath"));
            ElementSearchList allElements = new ElementSearchList("All",elementListPath);
        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            Details on : 
                <% out.println( String.valueOf( allElements.getElement(myID).getElementName())); %>
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
      <form id="form1" name="form1" method="post" action="searchResults.jsp">
                <table width="500" border="0" cellspacing="0" cellpadding="2">
                    <tr>
                        <td align="center">
                            <span class="style2">Search for an Element:                            </span>
                            <strong>
                            <input name="SearchValue" type="text" id="SearchValue" size="20" />
                            </strong>                            <br>
            <br />
                            <input type="submit" name="button" id="button" value="Search Now" />
                            <br>
                            <br>
                    </td>
                  </tr>
                </table>
        </form>
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
                <% out.println( String.valueOf( allElements.getElement(myID).getElementName())); %>
    </td>
  </tr>
  <tr>
    <td width="300" rowspan="2" valign="top">
        <img
            src="images/<% out.println( String.valueOf( allElements.getElement(myID).getImageURI())); %>"
            width="300"
            height="300"
           />
    </td>
    <td><table width="400" border="1" cellspacing="0" cellpadding="2">
      <tr>
        <td width="135">Abbreviation:</td>
        <td width="251">
            <% out.println( String.valueOf( allElements.getElement(myID).getElementAbbreviation())); %>
        </td>
      </tr>
      <tr>
        <td>Atomic Number:</td>
        <td>
            <% out.println( String.valueOf( allElements.getElement(myID).getAtomicNumber())); %>
        </td>
      </tr>
      <tr>
        <td>Atomic Weight:</td>
        <td>
            <%
            	out.println( String.valueOf( allElements.getElement(myID).getAtomicWeight()));
            %>
        </td>
      </tr>
      <tr>
        <td>Metallic:</td>
        <td>
            <% 
                if(allElements.getElement(myID).isMetallic()){
                    out.println("Yes");
                    }else{
                    out.println("No");
                }
            %>
        </td>
      </tr>
    </table></td>
  </tr>

  <tr>
    <td><% out.println( String.valueOf( allElements.getElement(myID).getElementDescription())); %>
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
