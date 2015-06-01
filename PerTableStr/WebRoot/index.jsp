
  <!--   Document   : index
    Created on : May 23, 2015, 12:43:21 AM
    Author     : Yevhenii Miachyn -->
    
    
<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


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
.errorMessage{
color: #cc0033;
font-weight: bold; 

}

.tdLabel{
    color: #FBE08B;
    font-weight: bold;
  }
  
 -->
        
        </style>

</head>
<body>

 
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#667D7F">

<tr>
        <td height="150" align="right" valign="bottom" background="images/Backgrounds/Header.jpg" bgcolor="#667D7F">

         <!--
                form1 will submit search query checking all items of an element for the
                requested String
          -->
    
       <s:form  action="elementSearch" >
                
                           
                            <s:textfield label="Search for an Element" key="searchValue"/>                         
                           
                                                          
                             <s:submit label="Submit"/>
                            
                
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
        <a href="details?ID=1" target="_blank">
       
              <s:property value="#attr.elementList[0].elementAbbreviation"/> 
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
        <a href="details?ID=2" target="_blank"> 
                 <s:property value="#attr.elementList[1].elementAbbreviation"/> 
        </a></td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=3" target="_blank"> <s:property value="#attr.elementList[2].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=4" target="_blank"><s:property value="#attr.elementList[3].elementAbbreviation"/>  </a>
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
      <a href="details?ID=5" target="_blank"> <s:property value="#attr.elementList[4].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=6" target="_blank"> <s:property value="#attr.elementList[5].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=7" target="_blank"> <s:property value="#attr.elementList[6].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=8" target="_blank"> <s:property value="#attr.elementList[7].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=9" target="_blank"> <s:property value="#attr.elementList[8].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=10" target="_blank"> <s:property value="#attr.elementList[9].elementAbbreviation"/>  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=11" target="_blank"> <s:property value="#attr.elementList[10].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=12" target="_blank"><s:property value="#attr.elementList[11].elementAbbreviation"/>   </a>
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
      <a href="details?ID=13" target="_blank"> <s:property value="#attr.elementList[12].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=14" target="_blank"> <s:property value="#attr.elementList[13].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=15" target="_blank">  <s:property value="#attr.elementList[14].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=16" target="_blank"> <s:property value="#attr.elementList[15].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=17" target="_blank"> <s:property value="#attr.elementList[16].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=18" target="_blank"> <s:property value="#attr.elementList[17].elementAbbreviation"/>  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=19" target="_blank"> <s:property value="#attr.elementList[18].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=20" target="_blank"> <s:property value="#attr.elementList[19].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=21" target="_blank"><s:property value="#attr.elementList[20].elementAbbreviation"/>   </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=22" target="_blank"> <s:property value="#attr.elementList[21].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=23" target="_blank">  <s:property value="#attr.elementList[22].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=24" target="_blank"> <s:property value="#attr.elementList[23].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=25" target="_blank"><s:property value="#attr.elementList[24].elementAbbreviation"/>   </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=26" target="_blank"> <s:property value="#attr.elementList[25].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=27" target="_blank"> <s:property value="#attr.elementList[26].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=28" target="_blank"> <s:property value="#attr.elementList[27].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=29" target="_blank"> <s:property value="#attr.elementList[28].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=30" target="_blank">  <s:property value="#attr.elementList[29].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=31" target="_blank"> <s:property value="#attr.elementList[30].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=32" target="_blank"> <s:property value="#attr.elementList[31].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=33" target="_blank"><s:property value="#attr.elementList[32].elementAbbreviation"/>   </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=34" target="_blank"><s:property value="#attr.elementList[33].elementAbbreviation"/>   </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=35" target="_blank"> <s:property value="#attr.elementList[34].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=36" target="_blank"> <s:property value="#attr.elementList[35].elementAbbreviation"/>  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=37" target="_blank"> <s:property value="#attr.elementList[36].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=38" target="_blank"> <s:property value="#attr.elementList[37].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=39" target="_blank"> <s:property value="#attr.elementList[38].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=40" target="_blank"> <s:property value="#attr.elementList[39].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=41" target="_blank"> <s:property value="#attr.elementList[40].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=42" target="_blank"> <s:property value="#attr.elementList[41].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=43" target="_blank"> <s:property value="#attr.elementList[42].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=44" target="_blank"><s:property value="#attr.elementList[43].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=45" target="_blank"> <s:property value="#attr.elementList[44].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=46" target="_blank"> <s:property value="#attr.elementList[45].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=47" target="_blank"> <s:property value="#attr.elementList[46].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=48" target="_blank"> <s:property value="#attr.elementList[47].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=49" target="_blank"> <s:property value="#attr.elementList[48].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=50" target="_blank"> <s:property value="#attr.elementList[49].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=51" target="_blank"> <s:property value="#attr.elementList[50].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=52" target="_blank"> <s:property value="#attr.elementList[51].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=53" target="_blank"><s:property value="#attr.elementList[52].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=54" target="_blank"><s:property value="#attr.elementList[53].elementAbbreviation"/>  </a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=55" target="_blank"> <s:property value="#attr.elementList[54].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=56" target="_blank"><s:property value="#attr.elementList[55].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=71" target="_blank"> <s:property value="#attr.elementList[70].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=72" target="_blank"> <s:property value="#attr.elementList[71].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=73" target="_blank"><s:property value="#attr.elementList[72].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=74" target="_blank"> <s:property value="#attr.elementList[73].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=75" target="_blank"> <s:property value="#attr.elementList[74].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=76" target="_blank"> <s:property value="#attr.elementList[75].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=77" target="_blank"> <s:property value="#attr.elementList[76].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=78" target="_blank"> <s:property value="#attr.elementList[77].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=79" target="_blank"><s:property value="#attr.elementList[78].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=80" target="_blank"> <s:property value="#attr.elementList[79].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=81" target="_blank"> <s:property value="#attr.elementList[80].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=82" target="_blank"> <s:property value="#attr.elementList[81].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=83" target="_blank"> <s:property value="#attr.elementList[82].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=84" target="_blank"> <s:property value="#attr.elementList[83].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=85" target="_blank"><s:property value="#attr.elementList[84].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=86" target="_blank">  <s:property value="#attr.elementList[85].elementAbbreviation"/></a>
    </td>
  </tr>
  <tr class="style1">
    <td height="40" align="center" bgcolor="#00CCFF">
      <a href="details?ID=87" target="_blank"><s:property value="#attr.elementList[86].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#00CCFF">
      <a href="details?ID=88" target="_blank"> <s:property value="#attr.elementList[87].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=103" target="_blank"> <s:property value="#attr.elementList[102].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=104" target="_blank"><s:property value="#attr.elementList[103].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=105" target="_blank">  <s:property value="#attr.elementList[104].elementAbbreviation"/></a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=106" target="_blank"><s:property value="#attr.elementList[105].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=107" target="_blank">  <s:property value="#attr.elementList[106].elementAbbreviation"/></a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=108" target="_blank"> <s:property value="#attr.elementList[107].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=109" target="_blank"> <s:property value="#attr.elementList[108].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=110" target="_blank"> <s:property value="#attr.elementList[109].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=111" target="_blank"> <s:property value="#attr.elementList[110].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FF9999">
      <a href="details?ID=112" target="_blank"> <s:property value="#attr.elementList[111].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=113" target="_blank"><s:property value="#attr.elementList[112].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=114" target="_blank"><s:property value="#attr.elementList[113].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=115" target="_blank"> <s:property value="#attr.elementList[114].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=116" target="_blank"><s:property value="#attr.elementList[115].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=117" target="_blank"> <s:property value="#attr.elementList[116].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#FFCC66">
      <a href="details?ID=118" target="_blank"><s:property value="#attr.elementList[117].elementAbbreviation"/>  </a>
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
      <a href="details?ID=57" target="_blank"><s:property value="#attr.elementList[56].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=58" target="_blank"><s:property value="#attr.elementList[57].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=59" target="_blank"> <s:property value="#attr.elementList[58].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=60" target="_blank"> <s:property value="#attr.elementList[59].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=61" target="_blank"><s:property value="#attr.elementList[60].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=62" target="_blank"> <s:property value="#attr.elementList[61].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=63" target="_blank"> <s:property value="#attr.elementList[62].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=64" target="_blank"> <s:property value="#attr.elementList[63].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=65" target="_blank"><s:property value="#attr.elementList[64].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=66" target="_blank"> <s:property value="#attr.elementList[65].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=67" target="_blank"> <s:property value="#attr.elementList[66].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=68" target="_blank"> <s:property value="#attr.elementList[67].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=69" target="_blank"><s:property value="#attr.elementList[68].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=70" target="_blank"> <s:property value="#attr.elementList[69].elementAbbreviation"/> </a>
    </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="style1">
    <td height="40">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=89" target="_blank"><s:property value="#attr.elementList[88].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=90" target="_blank"> <s:property value="#attr.elementList[89].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=91" target="_blank"> <s:property value="#attr.elementList[90].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=92" target="_blank"> <s:property value="#attr.elementList[91].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=93" target="_blank"> <s:property value="#attr.elementList[92].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=94" target="_blank"> <s:property value="#attr.elementList[93].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=95" target="_blank"> <s:property value="#attr.elementList[94].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=96" target="_blank"> <s:property value="#attr.elementList[95].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=97" target="_blank"> <s:property value="#attr.elementList[96].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=98" target="_blank"><s:property value="#attr.elementList[97].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=99" target="_blank"> <s:property value="#attr.elementList[98].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=100" target="_blank"><s:property value="#attr.elementList[99].elementAbbreviation"/>  </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=101" target="_blank"> <s:property value="#attr.elementList[100].elementAbbreviation"/> </a>
    </td>
    <td align="center" bgcolor="#66CC66">
      <a href="details?ID=102" target="_blank"> <s:property value="#attr.elementList[101].elementAbbreviation"/> </a>
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
