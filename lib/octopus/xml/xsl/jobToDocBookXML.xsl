<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>


<xsl:template match ="/">&lt;?xml version="1.0" encoding="UTF-8"?&gt;


&lt;book&gt;
	&lt;title&gt;loaderJob&lt;/title&gt;
	&lt;bookinfo&gt;
	  &lt;authorgroup&gt;
		&lt;author&gt;
			&lt;firstname&gt;&lt;/firstname&gt;
			&lt;surname&gt;&lt;/surname&gt;
		&lt;/author&gt;
		&lt;author&gt;
			&lt;firstname&gt;&lt;/firstname&gt;
			&lt;surname&gt;&lt;/surname&gt;
		&lt;/author&gt;
	  &lt;/authorgroup&gt;
	  &lt;edition&gt;V1.5&lt;/edition&gt;
	  &lt;date&gt;&lt;/date&gt;

	&lt;/bookinfo&gt;
	&lt;preface&gt;
		&lt;title&gt;loaderJob&lt;/title&gt;
		&lt;para&gt;&lt;/para&gt;
	&lt;/preface&gt;
	&lt;part&gt;

<xsl:apply-templates select="loaderJob"/>

	&lt;/part&gt;
&lt;/book&gt;
</xsl:template>



<!-- loaderJob -->

<xsl:template match="loaderJob">
		&lt;chapter&gt;
			&lt;title&gt;loaderJob&lt;/title&gt;
			&lt;para&gt;
			&lt;/para&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;&lt;/entry&gt;
							&lt;entry&gt;&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log Mode:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logMode"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Increment:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDIncrement"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Table Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Column Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDColumnName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Name Column Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDNameColumnName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Name Column Value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDNameColumnValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;On Error Continue:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@onErrorContinue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Commit:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@commit"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;User ID:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@userID"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log Dir:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logDir"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log File:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logFile"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Vendor Config:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@vendorConfig"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Auto Create:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDAutoCreate"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Start Value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDStartValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Commit Count:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@commitCount"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Oid Logic:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@oidLogic"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Table Mode:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@tableMode"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Data cut off:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@dataCutOff"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log table:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logTable"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log table name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log column name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logColumnName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log row number:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logRowNumber"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log orginal value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logOriginalValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log new value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logNewValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log imp. def. name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logImportDefinitionName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log op. name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logOperationName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log type name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logTypeName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log class name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logClassName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Path to log conf.:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@pathToLoggerConf"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Return code:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@returnCode"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;


			&lt;/programlisting&gt;
   <xsl:apply-templates />
		&lt;/chapter&gt;


</xsl:template>



<!-- restartCounter -->

<xsl:template match="restartCounter">
			&lt;section&gt;
				&lt;title&gt;Restart Counter&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="4"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Table Name:&lt;/entry&gt;
							&lt;entry&gt;Import Definition Column Name:&lt;/entry&gt;
							&lt;entry&gt;Restart Counter Column Name:&lt;/entry&gt;
							&lt;entry&gt;Restart Auto Create:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@tableName"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@importDefinitionColumnName"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@restartCounterColumnName"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@restartAutoCreate"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;

			&lt;/section&gt;



</xsl:template>



<!-- variables -->

<xsl:template match="variables">
			&lt;section&gt;
				&lt;title&gt;Variables&lt;/title&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Prefix:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@prefix"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Suffix:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@suffix"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Override:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@override"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Replace In Constants:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@replaceInConstants"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Replace In SQL:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@replaceInSQL"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Replace In Data:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@replaceInData"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Replace In JDBC:&lt;/entry&gt;
            				&lt;entry align="left"&gt;<xsl:value-of select="@replaceInJDBC"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;
				&lt;section&gt;
					&lt;title&gt;Variable&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="9"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Name:&lt;/entry&gt;
							&lt;entry&gt;Value:&lt;/entry&gt;
							&lt;entry&gt;Prefix:&lt;/entry&gt;
							&lt;entry&gt;Suffix:&lt;/entry&gt;
							&lt;entry&gt;Override:&lt;/entry&gt;
							&lt;entry&gt;Replace In Constants:&lt;/entry&gt;
							&lt;entry&gt;Replace In SQL:&lt;/entry&gt;
							&lt;entry&gt;Replace In Data:&lt;/entry&gt;
							&lt;entry&gt;Replace In JDBC:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
        <xsl:for-each select="variable">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@name"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@value"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@prefix"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@suffix"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@override"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@replaceInConstants"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@replaceInSQL"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@replaceInData"/>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@replaceInJDBC"/>&lt;/entry&gt;
            			&lt;/row&gt;
        </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;
			&lt;/section&gt;



</xsl:template>



<!-- jdbcDefaultParameters -->

<xsl:template match="jdbcDefaultParameters">
			&lt;section&gt;
				&lt;title&gt;JDBC Default Parameters&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="6"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;-&lt;/entry&gt;
							&lt;entry&gt;DB Vendor:&lt;/entry&gt;
							&lt;entry&gt;JDBC Driver:&lt;/entry&gt;
							&lt;entry&gt;Connection Url:&lt;/entry&gt;
							&lt;entry&gt;User:&lt;/entry&gt;
							&lt;entry&gt;Password:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Source&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="6"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;-&lt;/entry&gt;
							&lt;entry&gt;DB Vendor:&lt;/entry&gt;
							&lt;entry&gt;JDBC Driver:&lt;/entry&gt;
							&lt;entry&gt;Connection Url:&lt;/entry&gt;
							&lt;entry&gt;User:&lt;/entry&gt;
							&lt;entry&gt;Password:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Target&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;

			&lt;/section&gt;



</xsl:template>



<!-- SQL -->

<xsl:template match="sql">
			&lt;section&gt;
				&lt;title&gt;SQL <xsl:value-of select="@name"/>&lt;/title&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Name:&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@name"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Log Mode:&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@logMode"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;On Error Continue:&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@onErrorContinue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Commit:&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@commit"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Return Code:&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@returnCode"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;
   <xsl:apply-templates select="include"/>
   <xsl:apply-templates select="jdbcTargetParameters"/>
   <xsl:apply-templates select="sqlStmt"/>

			&lt;/section&gt;



</xsl:template>



<!-- definitionInclude -->

<xsl:template match="definitionInclude">
			&lt;section&gt;
				&lt;title&gt;definitionInclude&lt;/title&gt;
   <xsl:apply-templates select="include"/>

			&lt;/section&gt;



</xsl:template>



<!-- jdbcTargetParameters -->

<xsl:template match="jdbcTargetParameters">
				&lt;section&gt;
					&lt;title&gt;JDBC Target Parameters&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="5"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;DB Vendor:&lt;/entry&gt;
							&lt;entry&gt;JDBC Driver:&lt;/entry&gt;
							&lt;entry&gt;Connection Url:&lt;/entry&gt;
							&lt;entry&gt;User:&lt;/entry&gt;
							&lt;entry&gt;Password:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Target&lt;/entry&gt;
            				&lt;entry align="center"&gt;
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='User'">
             <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;
         <xsl:for-each select="jdbcTargetParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;

				&lt;/section&gt;



</xsl:template>



<!-- SQL_stmt -->

<xsl:template match="sqlStmt">
				&lt;section&gt;
					&lt;title&gt;SQL Statement: &lt;/title&gt;

			&lt;programlisting&gt;
			<xsl:value-of select="."/>

			&lt;/programlisting&gt;
				&lt;/section&gt;



</xsl:template>



<!-- include -->

<xsl:template match="include">
				&lt;section&gt;
					&lt;title&gt;Include: &lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Include File:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@href"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;File's Type:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@parse"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;

				&lt;/section&gt;



</xsl:template>



<!-- echo -->

<xsl:template match="echo">
				&lt;section&gt;
					&lt;title&gt;Echo: &lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
							&lt;entry&gt;Message:&lt;/entry&gt;
							&lt;entry&gt;<xsl:value-of select="@message"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>


<!-- copyTable -->

<xsl:template match="copyTable">
			&lt;section&gt;
				&lt;title&gt;Copy Table <xsl:value-of select="@name"/>&lt;/title&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@name"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Source Table:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@sourceTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Target Table:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@targetTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log Mode:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logMode"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Oid logic:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@oidLogic"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;On error cont.:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@onErrorContinue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Commit Count:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@commitCount"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Increment:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDIncrement"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
				<xsl:apply-templates/>
			&lt;/section&gt;

</xsl:template>


<!-- importDefinition -->

<xsl:template match="importDefinition">
			&lt;section&gt;
				&lt;title&gt;Import Definition <xsl:value-of select="@name"/>&lt;/title&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@name"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Source Table:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@tableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Select Statement:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@selectStatement"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Commit Count:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@commitCount"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Log Mode:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@logMode"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Increment:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDIncrement"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Table Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Column Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDColumnName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Name Column Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDNameColumnName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Name Column Value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDNameColumnValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Auto Create:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDAutoCreate"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Object ID Start Value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@objectIDStartValue"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Data cut off:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@dataCutOff"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Return Code:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@returnCode"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
				<xsl:apply-templates/>
			&lt;/section&gt;

</xsl:template>



<!-- sortColumns -->

<xsl:template match="sortColumns">
				&lt;section&gt;
					&lt;title&gt;Sort Columns&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="1"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Sort Column:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="sortColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@entry"/>&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;

</xsl:template>


<!-- jdbcParameters -->

<xsl:template match="jdbcParameters">
			&lt;section&gt;
				&lt;title&gt;JDBC Parameters&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="6"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;-&lt;/entry&gt;
							&lt;entry&gt;DB Vendor:&lt;/entry&gt;
							&lt;entry&gt;JDBC Driver:&lt;/entry&gt;
							&lt;entry&gt;Connection Url:&lt;/entry&gt;
							&lt;entry&gt;User:&lt;/entry&gt;
							&lt;entry&gt;Password:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Source&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="6"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;-&lt;/entry&gt;
							&lt;entry&gt;DB Vendor:&lt;/entry&gt;
							&lt;entry&gt;JDBC Driver:&lt;/entry&gt;
							&lt;entry&gt;Connection Url:&lt;/entry&gt;
							&lt;entry&gt;User:&lt;/entry&gt;
							&lt;entry&gt;Password:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry align="center"&gt;Target&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters">
         <font size="1" face="Arial"><xsl:value-of select="@dbVendor" /></font>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='JdbcDriver'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Connection.Url'">
         <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='User'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
         <xsl:if test="@name='Password'">
           <font size="1" face="Arial"><xsl:value-of select="@value" /></font>
         </xsl:if>
         </xsl:for-each>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;programlisting&gt;

			&lt;/programlisting&gt;

			&lt;/section&gt;



</xsl:template>



<!-- valueColumns -->

<xsl:template match="valueColumns">
				&lt;section&gt;
					&lt;title&gt;Value Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="5"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Source Column:&lt;/entry&gt;
							&lt;entry&gt;Target Table:&lt;/entry&gt;
							&lt;entry&gt;Target Column:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;To hex:&lt;/entry&gt;
							&lt;entry&gt;From hex:&lt;/entry&gt;
							&lt;entry&gt;Value Mode:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="valueColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@sourceColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@toHex" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@fromHex" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>



<!-- variableColumns -->

<xsl:template match="variableColumns">
				&lt;section&gt;
					&lt;title&gt;Variable Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="6"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;-&lt;/entry&gt;
							&lt;entry&gt;Name:&lt;/entry&gt;
							&lt;entry&gt;Target Table:&lt;/entry&gt;
							&lt;entry&gt;Target Column:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;Value Mode:&lt;/entry&gt;
							&lt;entry&gt;Default Mode:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="variableColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;variableColumn&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@defaultValue" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
     <xsl:for-each select="userIDColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;userIDColumn&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@defaultValue" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
     <xsl:for-each select="timeStampColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;timeStampColumn&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>

<!-- transformations -->

<xsl:template match="transformations">
	&lt;section&gt;
		&lt;title&gt;Transfomations&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="5"&gt;
					&lt;thead&gt;
						&lt;row&gt;
						
							&lt;entry&gt;Transformation name:&lt;/entry&gt;
							&lt;entry&gt;Transformation class:&lt;/entry&gt;
							&lt;entry&gt;Transformation config:&lt;/entry&gt;
							&lt;entry&gt;
							
	      						&lt;informaltable frame="none" pgwide="1"&gt;
	      							&lt;tgroup rowsep="1" colsep="1" cols="1"&gt;
	      								&lt;thead&gt;
	      										&lt;row&gt;
	      											&lt;entry&gt;Source columns&lt;/entry&gt;
	      										&lt;/row&gt;
	       										&lt;row&gt;
	       											&lt;entry&gt;Column name:&lt;/entry&gt;
	     										&lt;/row&gt;
										&lt;/thead&gt;
          							&lt;/tgroup&gt;
          						&lt;/informaltable&gt;
          					&lt;/entry&gt;
          					
          					&lt;entry&gt;
       							&lt;informaltable frame="none" pgwide="1"&gt;
	      							&lt;tgroup rowsep="1" colsep="1" cols="1"&gt;
	      								&lt;thead&gt;
	      										&lt;row&gt;
	      											&lt;entry align="center"&gt;Target columns&lt;/entry&gt;
	      										&lt;/row&gt;
	      								
	      								
	      										&lt;row&gt;
	      											&lt;entry&gt;Column name:&lt;/entry&gt;
	      											&lt;entry&gt;Table name:&lt;/entry&gt;
	      											&lt;entry&gt;Table ID:&lt;/entry&gt;
	      											&lt;entry&gt;Value mode:&lt;/entry&gt;
	      										&lt;/row&gt;
	      								&lt;/thead&gt;
										
          							&lt;/tgroup&gt;
          						&lt;/informaltable&gt;
          					&lt;/entry&gt;
          					
       					&lt;/row&gt;
       				&lt;/thead&gt;
       				&lt;tbody&gt;
	       				<xsl:for-each select="transformation">
		       				&lt;row&gt;
		            			&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
		            			&lt;entry align="center"&gt;<xsl:value-of select="@transformatorClassName" />&lt;/entry&gt;
		            			&lt;entry align="center"&gt;<xsl:value-of select="@transformatorConfig" />&lt;/entry&gt;
		            			&lt;entry&gt;
	       							&lt;informaltable frame="none" pgwide="1"&gt;
			      						&lt;tgroup rowsep="1" colsep="1" cols="1"&gt;
		      								&lt;thead&gt;
			      								<xsl:for-each select="sourceColumns/sourceColumn">
			      										&lt;row&gt;
			      												&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
			      										&lt;/row&gt;	
			      								</xsl:for-each>	
											&lt;/thead&gt;	
										&lt;/tgroup&gt;	
	          						&lt;/informaltable&gt;
	          					&lt;/entry&gt;
	          					&lt;entry&gt;
		          					&lt;informaltable frame="none" pgwide="1"&gt;
		          						&lt;tgroup rowsep="1" colsep="1" cols="1"&gt;
			      							&lt;thead&gt;
			      									<xsl:for-each select="targetColumns/targetColumn">
			      										&lt;row&gt;
			      											&lt;entry align="center"&gt;<xsl:value-of select="@name" />&lt;/entry&gt;
			      											&lt;entry align="center"&gt;<xsl:value-of select="@tableName" />&lt;/entry&gt;
			      											&lt;entry align="center"&gt;<xsl:value-of select="@tableID" />&lt;/entry&gt;
			      											&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
			      										&lt;/row&gt;
			      									</xsl:for-each>		
											&lt;/thead&gt;
										&lt;/tgroup&gt;		
		          					&lt;/informaltable&gt;
	          					&lt;/entry&gt;
		            		&lt;/row&gt;
	     				</xsl:for-each>
       				&lt;/tbody&gt;
          		&lt;/tgroup&gt;
          	&lt;/informaltable&gt;
		&lt;/section&gt;
</xsl:template>



<!-- relationColumns -->

<xsl:template match="relationColumns">
				&lt;section&gt;
					&lt;title&gt;Relation Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="7"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Source Table:&lt;/entry&gt;
							&lt;entry&gt;Source Column:&lt;/entry&gt;
							&lt;entry&gt;Source Table ID:&lt;/entry&gt;
							&lt;entry&gt;Target Table:&lt;/entry&gt;
							&lt;entry&gt;Target Column:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;Relation Mode:&lt;/entry&gt;
							&lt;entry&gt;Default value:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="relationColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationSourceTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationSourceColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationSourceTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationTargetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationTargetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationTargetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@relationMode" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@defaultValue" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>



<!-- constantColumns -->

<xsl:template match="constantColumns">
				&lt;section&gt;
					&lt;title&gt;Constant Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="5"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Target Table:&lt;/entry&gt;
							&lt;entry&gt;Target Column:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;Value Mode:&lt;/entry&gt;
							&lt;entry&gt;Constant Value:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="constantColumn">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@constantValue" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>



<!-- counterColumns -->

<xsl:template match="counterColumns">
				&lt;section&gt;
					&lt;title&gt;Counter Columns:&lt;/title&gt;
			&lt;informaltable frame="topbot" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="2"&gt;
          			&lt;tbody&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Counter Table Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@counterTableName"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Counter Column Name:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@counterNameColumn"/>&lt;/entry&gt;
            			&lt;/row&gt;
            			&lt;row&gt;
            				&lt;entry&gt;Counter Column Value:&lt;/entry&gt;
            				&lt;entry&gt;<xsl:value-of select="@counterValueColumn"/>&lt;/entry&gt;
            			&lt;/row&gt;
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

    <xsl:choose>
      <xsl:when test="counterColumn">
				&lt;section&gt;
					&lt;title&gt;Counter Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="8"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Counter Name:&lt;/entry&gt;
							&lt;entry&gt;Counter Start Value:&lt;/entry&gt;
							&lt;entry&gt;Counter Increment:&lt;/entry&gt;
							&lt;entry&gt;Target Table Name:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;Target Column Name:&lt;/entry&gt;
							&lt;entry&gt;Value Mode:&lt;/entry&gt;
							&lt;entry&gt;Counter Start Value Reset:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
   <xsl:apply-templates select="counterColumn"/>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;

      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>

    <xsl:choose>
      <xsl:when test="subCounterColumn">
					&lt;section&gt;
					&lt;title&gt;Subcounter Column&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="7"&gt;
				    &lt;colspec colname='c1'/&gt;
				    &lt;colspec colnum='7' colname='c7'/&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Counter Name:&lt;/entry&gt;
							&lt;entry&gt;Counter Start Value:&lt;/entry&gt;
							&lt;entry&gt;Counter Increment:&lt;/entry&gt;
							&lt;entry&gt;Target Table Name:&lt;/entry&gt;
							&lt;entry&gt;Target Table ID:&lt;/entry&gt;
							&lt;entry&gt;Target Column Name:&lt;/entry&gt;
							&lt;entry&gt;Value Mode:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;

   <xsl:apply-templates select="subCounterColumn"/>

          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

					&lt;/section&gt;
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>

				&lt;/section&gt;



</xsl:template>



<!-- counterColumn -->

<xsl:template match="counterColumn">
     <xsl:for-each select=".">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterStartValue" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterIncrement" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterStartValueReset" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>



</xsl:template>



<!-- subCounterColumn -->

<xsl:template match="subCounterColumn">
     <xsl:for-each select=".">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterStartValue" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@counterIncrement" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetTableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@targetColumnName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@valueMode" />&lt;/entry&gt;
            			&lt;/row&gt;
	 <xsl:apply-templates select="subCounterKeyColumn"/>
     </xsl:for-each>



</xsl:template>



<!-- subCounterKeyColumn -->

<xsl:template match="subCounterKeyColumn">
<!--       			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="4"&gt;
          			&lt;tbody&gt; -->
            			&lt;row&gt;
            				&lt;entry namest="c1" nameend="c7"&gt;
			&lt;informaltable frame="none" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="4"&gt;
          						&lt;tbody&gt;
            						&lt;row&gt;
            							&lt;entry align="center"&gt;-&lt;/entry&gt;
            							&lt;entry align="center"&gt;Subcounter Key Column:&lt;/entry&gt;
            							&lt;entry align="center"&gt;Key Column Name:&lt;/entry&gt;
            							&lt;entry align="center"&gt;<xsl:value-of select="@keyColumnName" />&lt;/entry&gt;
            						&lt;/row&gt;
	       						&lt;/tbody&gt;
				&lt;/tgroup&gt;
      		&lt;/informaltable&gt;
            				&lt;/entry&gt;
            			&lt;/row&gt;




</xsl:template>



<!-- tables -->

<xsl:template match="tables">
				&lt;section&gt;
					&lt;title&gt;Target Table&lt;/title&gt;
			&lt;informaltable frame="all" pgwide="1"&gt;
				&lt;tgroup rowsep="1" colsep="1" cols="5"&gt;
					&lt;thead&gt;
						&lt;row&gt;
							&lt;entry&gt;Name:&lt;/entry&gt;
							&lt;entry&gt;Table ID:&lt;/entry&gt;
							&lt;entry&gt;Insert:&lt;/entry&gt;
							&lt;entry&gt;Table Mode:&lt;/entry&gt;
							&lt;entry&gt;Auto map:&lt;/entry&gt;
							&lt;entry&gt;Oid Logic:&lt;/entry&gt;
							&lt;entry&gt;Default mode:&lt;/entry&gt;
						&lt;/row&gt;
					&lt;/thead&gt;
          			&lt;tbody&gt;
     <xsl:for-each select="table">
            			&lt;row&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@tableName" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@tableID" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@insert" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@tableMode" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@autoMapColumns" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@oidLogic" />&lt;/entry&gt;
            				&lt;entry align="center"&gt;<xsl:value-of select="@defaultMode" />&lt;/entry&gt;
            			&lt;/row&gt;
     </xsl:for-each>
          			&lt;/tbody&gt;
        		&lt;/tgroup&gt;
      		&lt;/informaltable&gt;

				&lt;/section&gt;



</xsl:template>



</xsl:stylesheet>