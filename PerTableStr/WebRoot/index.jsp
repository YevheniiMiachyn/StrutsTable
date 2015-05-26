
  <!--   Document   : index
    Created on : May 23, 2015, 12:43:21 AM
    Author     : Yevhenii Miachyn -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%@page errorPage = "errorPage.jsp" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Periodic Table</title>

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


      <%--   <%
            //Load CSV file and populate list of all elements
            String elementListPath = application.getRealPath(application.getInitParameter("elementListPath"));
            com.java.main.business.ElementSearchList allElements = new com.java.main.business.ElementSearchList("All",elementListPath);

        %>
 --%>
 
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#667D7F">

<tr>
        <td height="150" align="right" valign="bottom" background="images/Backgrounds/Header.jpg" bgcolor="#667D7F">

         <!--
                form1 will submit search query checking all items of an element for the
                requested String
          -->
    <%--   <s:form  action="searchResults" >
                <table width="500" border="0" cellspacing="0" cellpadding="2">
                    <tr>
                        <td align="right" valign="top">
                            <span class="style2">Search for an Element:                            </span>
                            
                            <s:textfield name="SearchValue"  />
                           
                            <s:submit value="Search Now" />
                            
                           
                    </td>
                  </tr>
                </table>
        </s:form>
 --%> 
       <s:form id="form1" name="form1" action="searchResults" >
                <table width="500" border="0" cellspacing="0" cellpadding="2">
                    <tr>
                        <td align="center">
                            <span class="style2">Search for an Element:                            </span>
                            <strong>
                            <input name="SearchValue" type="text" id="SearchValue" size="20" />
                            </strong>                            <br>
            <br />
                            <input type="submit" name="button" id="button" value="Search Now"/>
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


<table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
        <td>

            <!--
                Display table with all elements in typical Periodic Format
                Element Abbreviations shown and are clickable for details on the
                Element
            -->

            <table width="750" border="0" cellpadding="2" cellspacing="1">
              <tr class="style1">
    <td width="43" height="40" align="center" bgcolor="#00CCFF">
        <a href="details.jsp?ID=1" target="_blank">
       
              <s:property value="#attr.data"/> 
        </a>
    </td>
    <td width="36">&nbsp;</td>
    <td width="6" rowspan="7"></td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="36" align="center" bgcolor="#FFCC66">
        <a href="details.jsp?ID=2" target="_blank"> 
        <!-- TODO PUT element name starting from 0 to 101 --> 
          <s:property value="#attr.data"/> 
        </a></td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=3" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=4" target="_blank"> </a>
    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=5" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=6" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=7" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=8" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=9" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=10" target="_blank">  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=11" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=12" target="_blank">  </a>
    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=13" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=14" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=15" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=16" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=17" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=18" target="_blank">  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=19" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=20" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=21" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=22" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=23" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=24" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=25" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=26" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=27" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=28" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=29" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=30" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=31" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=32" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=33" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=34" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=35" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=36" target="_blank">  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=37" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=38" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=39" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=40" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=41" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=42" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=43" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=44" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=45" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=46" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=47" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=48" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=49" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=50" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=51" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=52" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=53" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=54" target="_blank">  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=55" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=56" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=71" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=72" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=73" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=74" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=75" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=76" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=77" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=78" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=79" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=80" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=81" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=82" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=83" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=84" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=85" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=86" target="_blank">  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=87" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details.jsp?ID=88" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=103" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=104" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=105" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=106" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=107" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=108" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=109" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=110" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=111" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details.jsp?ID=112" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=113" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=114" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=115" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=116" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=117" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details.jsp?ID=118" target="_blank">  </a>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="19"></td>
  </tr>
  <tr class="style1">
    <td height="40">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=57" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=58" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=59" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=60" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=61" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=62" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=63" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=64" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=65" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=66" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=67" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=68" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=69" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=70" target="_blank">  </a>
    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="style1">
    <td height="40">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=89" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=90" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=91" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=92" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=93" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=94" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=95" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=96" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=97" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=98" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=99" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=100" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=101" target="_blank">  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details.jsp?ID=102" target="_blank">  </a>
    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
            </table>

            </td>
    </tr>
</table>
</td>
</tr>

<tr>
      <td height="15">
      </td>
  </tr>

</table>

</body>
</html>
