<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg">


  <xsl:template match="Head">
    <html>
      <style type="text/css">
      td {  font-family: Arial, Helvetica, sans-serif;}
      </style>
      <head><title>LoaderDBVendor HTML</title></head>
      <body  bgcolor="#ffffff" text="#000000">

 <xsl:apply-templates select="LoaderConf"/>

 </body>
 </html>
 </xsl:template>

<!-- OidDbType -->

<xsl:template match="OidDbType">
	<!-- <b><font size="4" color="blue" face="Verdana">OidDbType</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">OidDbType:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>

<!-- VersionDbType -->

<xsl:template match="VersionDbType">
	<!-- <b><font size="4" color="blue" face="Verdana">VersionDbType</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">VersionDbType:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>

<!-- OidDbColumnName-->

<xsl:template match="OidDbColumnName">
	<!--  <b><font size="4" color="blue" face="Verdana">OidDbColumnName</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">OidDbColumnName:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>

<!-- VersionDbColumnName-->

<xsl:template match="VersionDbColumnName">
	<!-- <b><font size="4" color="blue" face="Verdana">VersionDbColumnName</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">VersionDbColumnName:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>


<!-- ExcludeTables-->

<xsl:template match="ExcludeTables">
	<!-- <b><font size="4" color="blue" face="Verdana">ExcludeTables</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">ExcludeTables:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>

<!-- DateFormat-->

<xsl:template match="DateFormat">
	<!-- <b><font size="4" color="blue" face="Verdana">ExcludeTables</font></b> -->
	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">DateFormat:</font></b></td>
       <td WIDTH="75%"><left>
         <font size="3" face="Arial"><xsl:value-of select="."/></font>
       </left></td>
     </tr>
     </table>
     <br/>
</xsl:template>

<!-- SQLType -->

<xsl:template match="SQLType">
   <b><font size="3" color="blue" face="Verdana">DBType to JDBCType mapping</font></b>
   <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
		<td WIDTH="25%"><b><font size="3" face="Arial">DB data type</font></b></td>
		<td WIDTH="75%"><b><font size="3" face="Arial">JDBC data type</font></b></td>
	</tr>
       <xsl:for-each select="/LoaderConf/SQLType/*">
       <tr>
         <td WIDTH="25%"><font size="3" face="Arial"><xsl:value-of select="name()"/></font></td>
         <td WIDTH="75%"><font size="3" face="Arial"><xsl:value-of select="."/></font></td>
       </tr>
       </xsl:for-each>
     </table>
     <br/>
</xsl:template>

<!-- JDBCType -->

<xsl:template match="JDBCType">
   <b><font size="3" color="blue" face="Verdana">JDBCType to DBType mapping</font></b>
   <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
		<td WIDTH="25%"><b><font size="3" face="Arial">JDBC data type</font></b></td>
		<td WIDTH="75%"><b><font size="3" face="Arial">DB data type</font></b></td>
	</tr>
       <xsl:for-each select="/LoaderConf/JDBCType/*">
       <tr>
         <td WIDTH="25%"><font size="3" face="Arial"><xsl:value-of select="name()"/></font></td>
         <td WIDTH="75%"><font size="3" face="Arial"><xsl:value-of select="."/></font></td>
       </tr>
       </xsl:for-each>
     </table>
     <br/>
</xsl:template>

<!-- JAVAType -->

<xsl:template match="JAVAType ">
   <b><font size="3" color="blue" face="Verdana">JDBCType to Java types mapping</font></b>
   <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
		<td WIDTH="25%"><b><font size="3" face="Arial">JDBC data type</font></b></td>
		<td WIDTH="75%"><b><font size="3" face="Arial">Java data type</font></b></td>
	</tr>
       <xsl:for-each select="/LoaderConf/JAVAType /*">
       <tr>
         <td WIDTH="25%"><font size="3" face="Arial"><xsl:value-of select="name()"/></font></td>
         <td WIDTH="75%"><font size="3" face="Arial"><xsl:value-of select="."/></font></td>
       </tr>
       </xsl:for-each>
     </table>
     <br/>
</xsl:template>


<!-- Driver-->

 <xsl:template match="Driver">
   <b><font size="3" color="blue" face="Verdana">Driver: <xsl:value-of select="@name"/></font></b>
   <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">ClassName:</font></b></td>
       <td WIDTH="75%"><left>
       <xsl:for-each select="ClassName">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">Connection:</font></b></td>
       <td WIDTH="75%"><left>
       <xsl:for-each select="Connection">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td WIDTH="25%"><b><font size="3" face="Arial">RequiredUser:</font></b></td>
       <td WIDTH="75%"><left>
       <xsl:for-each select="RequiredUser">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">FirstColumnResult:</font></b></td>
       <td><left>
       <xsl:for-each select="FirstColumnResult">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">EnableJumpInResult:</font></b></td>
       <td><left>
       <xsl:for-each select="EnableJumpInResult">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">EnablePreviousRecord:</font></b></td>
       <td><left>
       <xsl:for-each select="EnablePreviousRecord">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left></td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">BeforeFirstRow:</font></b></td>
       <td><left>
       <xsl:for-each select="BeforeFirstRow">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">AfterLastRow:</font></b></td>
       <td><left>
       <xsl:for-each select="AfterLastRow">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">EnableOrderBy:</font></b></td>
       <td><left>
       <xsl:for-each select="EnableOrderBy">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>
     <tr>
       <td><b><font size="3" face="Arial">AlterTablePrimaryKey:</font></b></td>
       <td><left>
       <xsl:for-each select="AlterTablePrimaryKey">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>

     <tr>
       <td><b><font size="3" face="Arial">MetaData:</font></b></td>
       <td><left>
       <xsl:for-each select="MetaData">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>

     <tr>
       <td><b><font size="3" face="Arial">RowCountEnabled:</font></b></td>
       <td><left>
       <xsl:for-each select="RowCountEnabled">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>

     <tr>
       <td><b><font size="3" face="Arial">SetFetchSizeEnabled:</font></b></td>
       <td><left>
       <xsl:for-each select="SetFetchSizeEnabled">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
     </tr>

     <tr>
       <td><b><font size="3" face="Arial">SetCursorNameEnabled:</font></b></td>
       <td><left>
       <xsl:for-each select="SetCursorNameEnabled">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
      </tr>

      <tr>
       <td><b><font size="3" face="Arial">SetEmptyStringAsNull:</font></b></td>
       <td><left>
       <xsl:for-each select="SetEmptyStringAsNull">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
      </tr>

      <tr>
       <td><b><font size="3" face="Arial">ReadingOrderRelevant:</font></b></td>
       <td><left>
       <xsl:for-each select="ReadingOrderRelevant">
         <font size="3" face="Arial"><xsl:value-of select="@value"/></font>
       </xsl:for-each>
       </left>
       </td>
      </tr>

   </table>
   <br/>
 </xsl:template>


</xsl:stylesheet>