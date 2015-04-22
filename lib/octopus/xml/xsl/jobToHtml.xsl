<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg">


<xsl:template match="Head">
    <html>
      <style type="text/css">
      td {  font-family: Arial, Helvetica, sans-serif;}
      </style>
      <head><title>Job To Html</title></head>
      <body  bgcolor="#ffffff" text="#000000">

 <xsl:apply-templates select="loaderJob"/>

 </body>
 </html>
 </xsl:template>


<!-- loaderJob -->

    <xsl:template match="loaderJob">
      <b><font size="6" color="blue" face="Verdana">loaderJob</font></b>
      <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="20%"><b><font size="1" face="Arial">Log Mode:</font></b></td>
       <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@logMode"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Increment:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDIncrement"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Table Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Column Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDColumnName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Name Column Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDNameColumnName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Name Column Value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDNameColumnValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">On Error Continue:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@onErrorContinue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Commit:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@commit"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">User ID:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@userID"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log Dir:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logDir"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log File:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logFile"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Vendor Config:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@vendorConfig"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Auto Create:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDAutoCreate"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Start Value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDStartValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Commit Count:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@commitCount"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Oid Logic:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@oidLogic"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Table Mode:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@tableMode"/></font></left></td>
     </tr>

     <tr>
       <td><b><font size="1" face="Arial">Data cutt off:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@dataCutOff"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log table name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log table:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logTable"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log column name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logColumnName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log row num:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logRowNumber"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log org. value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logOriginalValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Table Mode:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@tableMode"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log new value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logNewValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log imp. def. name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logImportDefinitionName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log op. name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logOperationName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log type name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logTypeName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log class name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logClassName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Path to log conf:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@pathToLoggerConf"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Return Code:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@returnCode"/></font></left></td>
     </tr>
   </table>

   <br/>
   <br/>
   <br/>
   <xsl:apply-templates />
 </xsl:template>


<!-- restartCounter -->

<xsl:template match="restartCounter">
      <b><font size="4" color="blue" face="Verdana">Restart Counter</font></b>
      <table BORDER="1" WIDTH="100%" >
        <tr>
          <td><center><b><font size="1" face="Arial">Table Name:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Import Definition Column Name:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Restart Counter Column Name:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Restart Auto Create:</font></b></center></td>
        </tr>

        <tr>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@tableName"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@importDefinitionColumnName"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@restartCounterColumnName"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@restartAutoCreate"/></font></center></td>
        </tr>
      </table>

      <br/>
      <br/>
</xsl:template>


<!-- variables -->

<xsl:template match="variables">
      <b><font size="4" color="blue" face="Verdana">Variables</font></b>

      <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Prefix:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@prefix"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Suffix:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@suffix"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Override:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@override"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Replace In Constants:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@replaceInConstants"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Replace In SQL:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@replaceInSQL"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Replace In Data:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@replaceInData"/></font></left></td>
        </tr>
        <tr>
          <td WIDTH="20%"><b><font size="1" face="Arial">Replace In JDBC:</font></b></td>
          <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@replaceInJDBC"/></font></left></td>
        </tr>
      </table>
  <br/>

  <font face="Verdana"><b>Variable</b></font>

      <table BORDER="1" WIDTH="100%" >

        <tr>
          <td><center><b><font size="1" face="Arial">Name:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Value:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Prefix:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Suffix:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Override:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Replace In Constants:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Replace In SQL:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Replace In Data:</font></b></center></td>
          <td><center><b><font size="1" face="Arial">Replace In JDBC:</font></b></center></td>
        </tr>

        <xsl:for-each select="variable">

        <tr>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@name"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@value"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@prefix"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@suffix"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@override"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@replaceInConstants"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@replaceInSQL"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@replaceInData"/></font></center></td>
          <td><center><font size="1" face="Arial"><xsl:value-of select="@replaceInJDBC"/></font></center></td>
        </tr>

        </xsl:for-each>

      </table>

      <br/>
      <br/>
</xsl:template>



<!-- jdbcDefaultParameters -->

<xsl:template match ="jdbcDefaultParameters">
  <br/>
  <b><font size="4" color="blue" face="Verdana">JDBC Default Parameters</font></b>
  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1" face="Arial">-</font></center></td>
       <td><center><b><font size="1" face="Arial">DB Vendor:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">JDBC Driver:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Connection Url:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">User:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Password:</font></b></center></td>
     </tr>
     <tr>
       <td><center><b><font size="1" face="Arial">Source</font></b></center></td>
       <td><center>
       <xsl:for-each select="jdbcSourceParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>
       </center></td>
       <td><center>
       <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
     </tr>
   </table>

   <br/>

  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1" face="Arial">-</font></center></td>
       <td><center><b><font size="1" face="Arial">DB Vendor:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">JDBC Driver:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Connection Url:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">User:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Password:</font></b></center></td>
     </tr>
     <tr>
       <td><center><b><font size="1" face="Arial">Target</font></b></center></td>
       <td><center>
       <xsl:for-each select="jdbcTargetParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='User'">
             <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
     </tr>
   </table>

   <br/>
   <br/>
</xsl:template>


<!-- SQL -->

<xsl:template match="sql">
  <br/>
  <b><font size="4" color="blue" face="Verdana">SQL <xsl:value-of select="@name"/></font></b>
  <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="20%"><b><font size="1" face="Arial">Name:</font></b></td>
       <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@name"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log Mode:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logMode"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">On Error Continue:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@onErrorContinue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Commit:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@commit"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Return Code:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@returnCode"/></font></left></td>
     </tr>
   </table>
   <xsl:apply-templates select="include"/>
   <xsl:apply-templates select="jdbcTargetParameters"/>
   <xsl:apply-templates select="sqlStmt"/>

   <br/>
   <br/>
</xsl:template>


<!-- definitionInclude -->

<xsl:template match="definitionInclude">
  <br/>
  <b><font size="4" color="blue" face="Verdana">definitionInclude </font></b>

   <xsl:apply-templates select="include"/>

   <br/>
   <br/>
</xsl:template>


<!-- jdbcTargetParameters -->

<xsl:template match="jdbcTargetParameters">
  <br/>
  <font face="Verdana"><b>JDBC Target Parameters</b></font>
  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1" face="Arial">-</font></center></td>
       <td><center><b><font size="1" face="Arial">DB Vendor:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">JDBC Driver:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Connection Url:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">User:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Password:</font></b></center></td>
     </tr>
     <tr>
       <td><center><b><font size="1" face="Arial">Target</font></b></center></td>
       <td><center>

         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>

       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='User'">
             <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
     </tr>
   </table>
</xsl:template>


<!-- SQL_stmt -->

<xsl:template match="sqlStmt">
	<br/>
	<font face="Verdana"><b>SQL Statement: </b></font>
	<br/>

	<PRE>
	<font size="1" face="Helvetica"><xsl:value-of select="."/></font>
	</PRE>

	<xsl:apply-templates select="include"/>

</xsl:template>


<!-- include -->

<xsl:template match="include">
	<br/>
	<font face="Verdana"><b>Include: </b></font>
	<br/>

	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
	   <tr>
	     <td WIDTH="20%"><b><font size="1" face="Arial">Include File:</font></b></td>
	     <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@href"/></font></left></td>
	   </tr>
	   <tr>
	     <td><b><font size="1" face="Arial">File's Type:</font></b></td>
	     <td><left><font size="1" face="Arial"><xsl:value-of select="@parse"/></font></left></td>
	   </tr>
	</table>

</xsl:template>


<!-- echo -->

<xsl:template match="echo">
	<br/>
	<font face="Verdana"><b>Echo: </b></font>
	<br/>

	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
	   <tr>
	     <td WIDTH="20%"><b><font size="1" face="Arial">Message:</font></b></td>
	     <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@message"/></font></left></td>
	   </tr>
	</table>

</xsl:template>


<!-- copyTable -->

<xsl:template match="copyTable">
   <br/>
   <br/>
   <br/>
    <xsl:for-each select="copyTable"/>
      <b><font size="4" color="blue" face="Verdana">Copy table <xsl:value-of select="@name"/></font></b>
      <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="20%"><b><font size="1" face="Arial">Name:</font></b></td>
       <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@name"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Source Table:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@sourceTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Target Table:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@targetTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log Mode:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logMode"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Oid logic:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@oidLogic"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">On error cont.:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@onErrorContinue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Commit Count:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@commitCount"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Increment:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDIncrement"/></font></left></td>
     </tr>
   </table>

   <xsl:apply-templates/>
</xsl:template>

<!-- importDefinition -->

<xsl:template match="importDefinition">
   <br/>
   <br/>
   <br/>
    <xsl:for-each select="importDefinition"/>
      <b><font size="4" color="blue" face="Verdana">Import Definition <xsl:value-of select="@name"/></font></b>
      <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="20%"><b><font size="1" face="Arial">Name:</font></b></td>
       <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@name"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Source Table:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@tableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Select Statement:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@selectStatement"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Commit Count:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@commitCount"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Log Mode:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@logMode"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Increment:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDIncrement"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Table Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Column Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDColumnName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Name Column Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDNameColumnName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Name Column Value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDNameColumnValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Auto Create:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDAutoCreate"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Object ID Start Value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@objectIDStartValue"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Data cut off:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@dataCutOff"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Return Code:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@returnCode"/></font></left></td>
     </tr>
   </table>

   <xsl:apply-templates/>
</xsl:template>


<!-- sortColumns -->

<xsl:template match="sortColumns">
  <br/>
  <font face="Verdana"><b>Sort Columns</b></font>
  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Sort Column:</font></b></center></td>
     </tr>

     <xsl:for-each select="sortColumn">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@entry" /></font></center></td>
     </tr>
     </xsl:for-each>
  </table>
</xsl:template>


<!-- jdbcParameters -->

<xsl:template match="jdbcParameters">
  <br/>
  <font face="Verdana"><b>JDBC Parameters</b></font>
  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1" face="Arial">-</font></center></td>
       <td><center><b><font size="1" face="Arial">DB Vendor:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">JDBC Driver:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Connection Url:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">User:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Password:</font></b></center></td>
     </tr>
     <tr>
       <td><center><b><font size="1" face="Arial">Source</font></b></center></td>
       <td><center>
       <xsl:for-each select="jdbcSourceParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>
       </center></td>
       <td><center>
       <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
     </tr>
   </table>

     <br/>

  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1" face="Arial">-</font></center></td>
       <td><center><b><font size="1" face="Arial">DB Vendor:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">JDBC Driver:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Connection Url:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">User:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Debug:</font></b></center></td>
     </tr>
     <tr>
       <td><center><b><font size="1" face="Arial">Target</font></b></center></td>

       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='User'">
             <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
       <td><center>
         <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='debug'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>
       </center></td>
     </tr>
   </table>
</xsl:template>


<!-- valueColumns -->

<xsl:template match="valueColumns">
   <br/>
   <font face="Verdana"><b>Value Column</b></font>
   <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Source Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">To hex:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">From hex:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Value Mode:</font></b></center></td>
     </tr>
     <xsl:for-each select="valueColumn">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@sourceColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@toHex" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@fromHex" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>


<!-- variableColumns -->

<xsl:template match="variableColumns">
   <br/>
   <font face="Verdana"><b>Variable Column</b></font>
   <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><font size="1">-</font></center></td>
       <td><center><b><font size="1" face="Arial">Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Value Mode:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Default value:</font></b></center></td>
     </tr>
     <xsl:for-each select="variableColumn">
     <tr>
       <td><center><font size="1" face="Arial"><center><b>variableColumn</b></center></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@defaultValue" /></font></center></td>
     </tr>
     </xsl:for-each>
     <xsl:for-each select="userIDColumn">
     <tr>
       <td><center><font size="1" face="Arial"><center><b>userIDColumn</b></center></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@defaultValue" /></font></center></td>
     </tr>
     </xsl:for-each>
     <xsl:for-each select="timeStampColumn">
     <tr>
       <td><center><font size="1" face="Arial"><center><b>timeStampColumn</b></center></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>



<!-- transformations -->

<xsl:template match="transformations">
 <br/>
 <font face="Verdana"><b>Transformations </b></font>
 <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Transformation name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Transformation class:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Transformation config:</font></b></center></td>
       <td>
	      <table BORDER="1" WIDTH="100%" VALIGN="top">
	      	<tr>
	      		<td align="center"><center><b><font size="1" face="Arial">Source columns</font></b></center></td>
	      	</tr>
	       	<tr>
	       		<td align="center"><center><b><font size="1" face="Arial">Column name:</font></b></center></td>
	     	</tr>
	      </table>
       </td>
       
       <td>
       <table BORDER="1" WIDTH="100%"  VALIGN="top">
	      	<tr>
	      		<td colspan="4"><center><b><font size="1" face="Arial">Target columns</font></b></center></td>
	      	</tr>
	       	<tr>
	       		<td width="30%"><center><b><font size="1" face="Arial">Column name:</font></b></center></td>
	       		<td width="30%"><center><b><font size="1" face="Arial">Table name:</font></b></center></td>
	       		<td width="10%"><center><b><font size="1" face="Arial">Table ID:</font></b></center></td>
	       		<td width="30%"><center><b><font size="1" face="Arial">Value mode:</font></b></center></td>
	     	</tr>
	      </table>
       </td>
     </tr>
     <xsl:for-each select="transformation">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@transformatorClassName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@transformatorConfig" /></font></center></td>
       <td>
       	 <table BORDER="1" WIDTH="100%" VALIGN="top">
       		<xsl:for-each select="sourceColumns/sourceColumn">
       
	     	  <tr>
	      	 		<td><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
	      	 </tr>
       		</xsl:for-each>
       	</table>
       </td>
     <td>
      <table BORDER="1" WIDTH="100%" VALIGN="top">
       <xsl:for-each select="targetColumns/targetColumn">
       
       <tr>
       		<td width="30%"><center><font size="1" face="Arial"><xsl:value-of select="@name" /></font></center></td>
       		<td width="30%"><center><font size="1" face="Arial"><xsl:value-of select="@tableName" /></font></center></td>
       		<td width="10%"><center><font size="1" face="Arial"><xsl:value-of select="@tableID" /></font></center></td>
       		<td width="30%"><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
       </tr>
       </xsl:for-each>
       </table>
     </td> 
     </tr>
     </xsl:for-each>
     
 </table>

</xsl:template>


<!-- relationColumns -->

<xsl:template match="relationColumns">
  <br/>
  <font face="Verdana"><b>Relation Column</b></font>
  <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Source Table:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Source Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Source Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Relation Mode:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Default value:</font></b></center></td>
     </tr>
     <xsl:for-each select="relationColumn">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationSourceTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationSourceColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationSourceTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationTargetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationTargetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationTargetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@relationMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@defaultValue" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>

</xsl:template>



<!-- constantColumns -->

<xsl:template match="constantColumns">
    <br/>
    <font face="Verdana"><b>Constant Column</b></font>
    <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Target Table:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Value Mode:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Constant Value:</font></b></center></td>
     </tr>
     <xsl:for-each select="constantColumn">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@constantValue" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>


<!-- counterColumns -->

<xsl:template match="counterColumns">
  <br/>
  <font face="Verdana"><b>Counter Columns: </b></font>
  <table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
     <tr>
       <td WIDTH="20%"><b><font size="1" face="Arial">Counter Table Name:</font></b></td>
       <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@counterTableName"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Counter Column Name:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@counterNameColumn"/></font></left></td>
     </tr>
     <tr>
       <td><b><font size="1" face="Arial">Counter Column Value:</font></b></td>
       <td><left><font size="1" face="Arial"><xsl:value-of select="@counterValueColumn"/></font></left></td>
     </tr>
   </table>
   <xsl:apply-templates select="counterColumn"/>
   <xsl:apply-templates select="subCounterColumn"/>
</xsl:template>


<!-- counterColumn -->

<xsl:template match="counterColumn">
   <br/>
   <font face="Verdana"><b>Counter Column</b></font>
   <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Counter Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Counter Start Value:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Counter Increment:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Value Mode:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Counter Start Value Reset:</font></b></center></td>
     </tr>
     <xsl:for-each select=".">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterStartValue" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterIncrement" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterStartValueReset" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>


<!-- subCounterColumn -->

<xsl:template match="subCounterColumn">
   <br/>
   <font face="Verdana"><b>Subcounter Column</b></font>
   <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Counter Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Counter Start Value:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Counter Increment:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Target Column Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Value Mode:</font></b></center></td>
     </tr>
     <xsl:for-each select=".">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterStartValue" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@counterIncrement" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetTableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@targetColumnName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@valueMode" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>

	<xsl:apply-templates select="subCounterKeyColumn"/>

</xsl:template>



<!-- include -->

<xsl:template match="subCounterKeyColumn">
	<br/>
	<font face="Verdana"><b>Subcounter Key Column: </b></font>
	<br/>

	<table BORDER="0" WIDTH="100%" bgcolor="#eaefff">
	   <tr>
	     <td WIDTH="20%"><b><font size="1" face="Arial">Key Column Name:</font></b></td>
	     <td WIDTH="80%"><left><font size="1" face="Arial"><xsl:value-of select="@keyColumnName"/></font></left></td>
	   </tr>
	</table>

</xsl:template>


<!-- tables -->

<xsl:template match="tables">
   <br/>
   <font face="Verdana"><b>Target Table</b></font>
   <table BORDER="1" WIDTH="100%">
     <tr>
       <td><center><b><font size="1" face="Arial">Name:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Table ID:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Insert:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Table Mode:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Auto map:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Oid Logic:</font></b></center></td>
       <td><center><b><font size="1" face="Arial">Default mode:</font></b></center></td>
     </tr>
     <xsl:for-each select="table">
     <tr>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@tableName" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@tableID" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@insert" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@tableMode" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@autoMapColumns" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@oidLogic" /></font></center></td>
       <td><center><font size="1" face="Arial"><xsl:value-of select="@defaultMode" /></font></center></td>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>

</xsl:stylesheet>