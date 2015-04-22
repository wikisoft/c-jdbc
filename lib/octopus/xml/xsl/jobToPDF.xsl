<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
     xmlns:fo="http://www.w3.org/1999/XSL/Format"
>


<xsl:template match ="/">
	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

		<!-- defines page layout -->
		<fo:layout-master-set>

			<fo:simple-page-master master-name="simple"
					page-height="21cm"
					page-width="29.7cm"
					margin-top="2.5cm"
					margin-bottom="1cm"
					margin-left="1cm"
					margin-right="1.5cm"
					orphans="5" >
				<fo:region-body margin-top="0.7cm"/>
				<fo:region-before extent="0.7cm"/>

			</fo:simple-page-master>
		</fo:layout-master-set>

		<fo:page-sequence master-reference="simple">
			<fo:static-content flow-name="xsl-region-before">
				<fo:block text-align="end"
							font-size="10pt"
							font-family="serif"
							line-height="14pt" >
					loaderJob p. <fo:page-number/>
				</fo:block>
			</fo:static-content>

			<fo:flow flow-name="xsl-region-body">
				<fo:block/>

				<xsl:apply-templates select="loaderJob"/>

			</fo:flow>
		</fo:page-sequence>
	</fo:root>
</xsl:template>



<!-- loaderJob -->

<xsl:template match="loaderJob">
    <fo:block font-size="30pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="44pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	loaderJob
    </fo:block>

    <fo:table>
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="21.2cm"/>
	<fo:table-body font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log Mode:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@logMode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Increment:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDIncrement"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Table Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDTableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Column Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDColumnName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Name Column Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDNameColumnName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Name Column Value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDNameColumnValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               On Error Continue:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@onErrorContinue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Commit:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@commit"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               User ID:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@userID"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log Dir:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logDir"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log File:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logFile"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Vendor Config:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@vendorConfig"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Auto Create:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDAutoCreate"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Start Value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDStartValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Commit Count:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@commitCount"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Oid Logic:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@oidLogic"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Table Mode:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@tableMode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Data cutt off:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@dataCutOff"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log table name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logTableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log table:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logTable"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log column name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logColumnName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log row number:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logRowNumber"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log orginal value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logOriginalValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log new value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logNewValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log imp. def. name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logImportDefinitionName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log operation name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logOperationName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log type name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logTypeName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log class name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logClassName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Path to log. conf.:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@pathToLoggerConf"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Return Code:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@returnCode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		</fo:table-body>

	</fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
    <xsl:apply-templates />
</xsl:template>


<!-- restartCounter -->

<xsl:template match="restartCounter">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	Restart Counter
    </fo:block>

    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="15pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Restart Counter
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="7.1cm"/>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="7.1cm"/>
	<fo:table-column column-width="6.1cm"/>
	<fo:table-body font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Table Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Import Definition Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Restart Counter Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Restart Auto Create:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@tableName"/>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@importDefinitionColumnName"/>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@restartCounterColumnName"/>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@restartAutoCreate"/>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-body>

    </fo:table>
    <fo:block
       space-before.optimum="40pt">
    </fo:block>
</xsl:template>


<!-- variables -->

<xsl:template match ="variables">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	Variables
    </fo:block>

    <fo:table>
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Prefix:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@prefix"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Suffix:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@suffix"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Override:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@override"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Replace In Constants:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@replaceInConstants"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Replace In SQL:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@replaceInSQL"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Replace In Data:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@replaceInData"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Replace In JDBC:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@replaceInJDBC"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		</fo:table-body>

    </fo:table>


    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Variable
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3.2cm"/>

	<fo:table-header>
	     <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Prefix:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Suffix:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Override:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Replace In Constants:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Replace In SQL:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Replace In Data:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Replace In JDBC:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>

	  <xsl:for-each select="variable">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@name" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@value" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@prefix" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@suffix" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@override" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@replaceInConstants" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@replaceInSQL" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@replaceInData" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
		       <xsl:value-of select="@replaceInJDBC" />
	            </fo:block>
	         </fo:table-cell>

	      </fo:table-row>
	  </xsl:for-each>
	</fo:table-body>
    </fo:table>

    <fo:block
	space-before.optimum="40pt"
    />

</xsl:template>



<!-- jdbcDefaultParameters -->

<xsl:template match ="jdbcDefaultParameters">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	JDBC Default Parameters
    </fo:block>

    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	JDBC Default Parameters
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="2.6cm"/>
	<fo:table-column column-width="2.1cm"/>

	<fo:table-header>
	     <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               DB Vendor:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               JDBC Driver:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Connection Url:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               User:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Password:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Source
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters">
		       <xsl:value-of select="@dbVendor"/>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='JdbcDriver'">
		       <xsl:value-of select="@value"/>
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='Connection.Url'">
		       <xsl:value-of select="@value"/>
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='User'">
		       <xsl:value-of select="@value"/>
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='Password'">
		       <xsl:value-of select="@value"/>
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-body>

    </fo:table>

    <fo:block
	space-before.optimum="10pt"/>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="2.6cm"/>
	<fo:table-column column-width="2.1cm"/>

	<fo:table-header>
	     <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               DB Vendor:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               JDBC Driver:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Connection Url:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               User:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Password:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcTargetParameters">
		       <xsl:value-of select="@dbVendor" />
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center"  >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='JdbcDriver'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center"  >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='Connection.Url'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='User'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='Password'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-body>

    </fo:table>
    <fo:block
       space-before.optimum="40pt">
    </fo:block>

</xsl:template>


<!-- SQL -->

<xsl:template match="sql">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	SQL <xsl:value-of select="@name"/>
    </fo:block>

    <fo:table
	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body>
	    <xsl:for-each select="sql"/>
	      <fo:table-row>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@name"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell>
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Log Mode:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell>
	            <fo:block text-align="start">
	               <xsl:value-of select="@logMode"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell>
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               On Error Continue:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell>
	            <fo:block text-align="start">
	               <xsl:value-of select="@onErrorContinue"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell>
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Commit:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell>
	            <fo:block text-align="start">
	               <xsl:value-of select="@commit"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Return Code:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@returnCode"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	</fo:table-body>

    </fo:table>

    <xsl:apply-templates />

    <fo:block
       space-before.optimum="40pt">
    </fo:block>

</xsl:template>


<!-- definitionInclude -->

<xsl:template match="definitionInclude">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center">
	definitionInclude
    </fo:block>

    <xsl:apply-templates select="include"/>

    <fo:block
       space-before.optimum="40pt">
    </fo:block>

</xsl:template>


<!-- jdbcTargetParameters -->

<xsl:template match="jdbcTargetParameters">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="15pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	JDBC Target Parameters
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="2.6cm"/>
	<fo:table-column column-width="2.1cm"/>

	<fo:table-header>
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               DB Vendor:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               JDBC Driver:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Connection Url:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               User:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Password:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">

		       <xsl:value-of select="@dbVendor" />

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center"  >
	               <xsl:for-each select="jdbcTargetParameter">
		       <xsl:if test="@name='JdbcDriver'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center"  >
	               <xsl:for-each select="jdbcTargetParameter">
		       <xsl:if test="@name='Connection.Url'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameter">
		       <xsl:if test="@name='User'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameter">
		       <xsl:if test="@name='Password'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-body>

    </fo:table>

</xsl:template>


<!-- sqlStmt -->

<xsl:template match="sqlStmt">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="10pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	SQL Statement:
    </fo:block>

    <fo:block font-size="10pt"
	font-family="sans-serif"
	line-height="13pt"
	space-after.optimum="5pt"
	start-indent="15pt"
	white-space-collapse="false">
	<xsl:value-of select="."/>
    </fo:block>

    <xsl:apply-templates select="include"/>

</xsl:template>



<!-- include -->

<xsl:template match="include">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="10pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Include:
    </fo:block>

    <fo:table
	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Include File:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@href"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               File's Type:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@parse"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	</fo:table-body>

    </fo:table>

</xsl:template>



<!-- echo -->

<xsl:template match="echo">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="10pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Echo:
    </fo:block>

    <fo:table
	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid"
	         				border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Message:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid"
	         				border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@message"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	</fo:table-body>

    </fo:table>

</xsl:template>


<!-- copyTable -->

<xsl:template match="copyTable">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center"
	break-before="page">
	Copy table <xsl:value-of select="@name"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="21.2cm"/>
	<fo:table-body font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">
		<xsl:for-each select="copyTable"/>
		      <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@name"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Source Table:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@sourceTableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Target Table:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@targetTableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>


		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Commit Count:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@commitCount"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log Mode:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logMode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Increment:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDIncrement"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Return Code:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@returnCode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		</fo:table-body>

	</fo:table>
    <xsl:apply-templates />
</xsl:template>


<!-- importDefinition -->

<xsl:template match="importDefinition">
    <fo:block font-size="18pt"
	font-family="sans-serif"
	line-height="24pt"
	space-after.optimum="5pt"
	background-color="blue"
	color="white"
	text-align="center"
	break-before="page">
	Import Definition <xsl:value-of select="@name"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="21.2cm"/>
	<fo:table-body font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">
		<xsl:for-each select="importDefinition"/>
		      <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@name"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Source Table:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@tableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Select Statement:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@selectStatement"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Commit Count:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@commitCount"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Log Mode:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@logMode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Increment:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDIncrement"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Table Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDTableName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Column Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDColumnName"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Name Column Name:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDNameColumnNameValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Name Column Value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDNameColumnValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Auto Create:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDAutoCreate"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Object ID Start Value:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@objectIDStartValue"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Data cutt off:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <fo:block text-align="start">
		               <xsl:value-of select="@dataCutOff"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Return Code:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
		            <fo:block text-align="start">
		               <xsl:value-of select="@returnCode"/>
		            </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		</fo:table-body>

	</fo:table>
    <xsl:apply-templates />
</xsl:template>


<!-- sortColumns -->

<xsl:template match ="sortColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Sort Columns
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="27.2cm"/>

	<fo:table-header>
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Sort Column:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>
	   <xsl:for-each select="sortColumn">
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@entry" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	   </xsl:for-each >
	</fo:table-body>

    </fo:table>
</xsl:template>


<!-- jdbcParameters -->

<xsl:template match ="jdbcParameters">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	JDBC Parameters
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="2.6cm"/>
	<fo:table-column column-width="2.1cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               DB Vendor:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               JDBC Driver:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Connection Url:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               User:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Password:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Source
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcSourceParameters">
		       <xsl:value-of select="@dbVendor" />
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='JdbcDriver'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='Connection.Url'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='User'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcSourceParameters/jdbcSourceParameter">
		       <xsl:if test="@name='Password'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-body>
    </fo:table>

    <fo:block
	space-before.optimum="20pt"
    />

    <fo:table
		border-style="solid"
		table-omit-header-at-break="false"
		font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">
	<fo:table-column column-width="1.5cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="8.5cm"/>
	<fo:table-column column-width="2.6cm"/>
	<fo:table-column column-width="2.1cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               DB Vendor:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               JDBC Driver:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Connection Url:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               User:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Debug:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcTargetParameters">
		       <xsl:value-of select="@dbVendor" />
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center">
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='JdbcDriver'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center"  >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='Connection.Url'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='User'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:for-each select="jdbcTargetParameters/jdbcTargetParameter">
		       <xsl:if test="@name='debug'">
		       <xsl:value-of select="@value" />
		       </xsl:if>
		       </xsl:for-each>
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-body>

    </fo:table>
</xsl:template>




<!-- valueColumns -->

<xsl:template match ="valueColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Value Column
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="6.7cm"/>
	<fo:table-column column-width="6.7cm"/>
	<fo:table-column column-width="6.7cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="2.3cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Source Column:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Column:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               To hex:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               From hex:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value Mode:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-header>

	<fo:table-body >

	  <xsl:for-each select="valueColumn">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@sourceColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@toHex" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@fromHex" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	  </xsl:for-each >
	</fo:table-body>
    </fo:table>
</xsl:template>



<!-- variableColumns -->

<xsl:template match ="variableColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Variable Column
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="3.2cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="2.2cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">

	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Column:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Default value:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value Mode:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-header>
	<fo:table-body>

	   <xsl:for-each select="variableColumn">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               variableColumn
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@name" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@defaultValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	   </xsl:for-each >

	   <xsl:for-each select="userIDColumn">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               userIDColumn
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@name" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@defaultValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	   </xsl:for-each >

	   <xsl:for-each select="timeStampColumn">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               timeStampColumn
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@name" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@defaultValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	   </xsl:for-each >

	</fo:table-body>

    </fo:table>

</xsl:template>

<!--transformations-->

<xsl:template match ="transformations">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Transformation
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="3.2cm"/>
	<fo:table-column column-width="4cm"/>
	<fo:table-column column-width="13cm"/>
	<fo:table-header>
		<fo:table-row>
	         
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	              Transformation name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Transformation class:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Transformation config:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            
	            <fo:block text-align="center" font-weight="bold">
	               Source columns:
	            </fo:block>
	            <fo:table
    				border-style="none"
    				table-omit-header-at-break="false"
    				font-size="10pt"
					line-height="14pt"
					font-family="sans-serif">
					<fo:table-column column-width="4cm"/>
					
					<fo:table-body>
						 <fo:table-row>
						 		
	    						<fo:table-cell border-width="0.0009cm" border-style="none">
	           					 	 <fo:block text-align="center" font-weight="bold">
	               						Column name:
	            					 </fo:block>
	         					</fo:table-cell>
	         			</fo:table-row>
	    			</fo:table-body>		 
	             </fo:table>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	           <fo:block text-align="center" font-weight="bold">
	               Target columns:
	            </fo:block>
	            <fo:table
    				border-style="none"
    				table-omit-header-at-break="false"
    				font-size="10pt"
					line-height="14pt"
					font-family="sans-serif">
					<fo:table-column column-width="4.5cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="1cm"/>
					<fo:table-column column-width="2.5cm"/>
					<fo:table-body>
						 <fo:table-row>
	    						<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	 <fo:block text-align="center" font-weight="bold">
	               						Column name:
	            					 </fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	 <fo:block text-align="center" font-weight="bold">
	               						Table name:
	            					 </fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	 <fo:block text-align="center" font-weight="bold">
	               						Table ID:
	            					 </fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	 <fo:block text-align="center" font-weight="bold">
	               						Value mode:
	            					 </fo:block>
	         					</fo:table-cell>
	         			</fo:table-row>
	    			</fo:table-body>		 
	             </fo:table>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>
	<fo:table-body>
	   <xsl:for-each select="transformation">
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@name" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@transformatorClassName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@transformatorConfig" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	             <fo:table
    				border-style="none"
    				table-omit-header-at-break="false"
    				font-size="10pt"
					line-height="14pt"
					font-family="sans-serif">
					<fo:table-column column-width="4cm"/>
					<fo:table-body>
	  					 <xsl:for-each select="sourceColumns/sourceColumn">
	    					 <fo:table-row>
	    						<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	<fo:block text-align="center" >
	              						 <xsl:value-of select="@name" />
	            					</fo:block>
	         					</fo:table-cell>
	         				 </fo:table-row>
	         			</xsl:for-each >	 	
	    			</fo:table-body>		 
	             </fo:table>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:table
    				border-style="none"
    				table-omit-header-at-break="false"
    				font-size="10pt"
					line-height="14pt"
					font-family="sans-serif">
					<fo:table-column column-width="4.5cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="1cm"/>
					<fo:table-column column-width="2.5cm"/>
					<fo:table-body>
	  					 <xsl:for-each select="targetColumns/targetColumn">
	    					 <fo:table-row>
	    						<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	<fo:block text-align="center" >
	              						 <xsl:value-of select="@name" />
	            					</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	<fo:block text-align="center" >
	              						 <xsl:value-of select="@tableName" />
	            					</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	<fo:block text-align="center" >
	              						 <xsl:value-of select="@tableID" />
	            					</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border-width="0.0009cm" border-style="solid">
	           					 	<fo:block text-align="center" >
	              						 <xsl:value-of select="@valueMode" />
	            					</fo:block>
	         					</fo:table-cell>
	         				 </fo:table-row>
	         			</xsl:for-each >	 	
	    			</fo:table-body>		 
	             </fo:table>
	         </fo:table-cell>
	      </fo:table-row>
	   </xsl:for-each >
	</fo:table-body>
  </fo:table>
</xsl:template>
<!-- relationColumns -->

<xsl:template match ="relationColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Relation Column
    </fo:block>

    <fo:table
	keep-with-previous="always"
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5.3cm"/>
	<fo:table-column column-width="5.4cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="5.3cm"/>
	<fo:table-column column-width="5.4cm"/>
	<fo:table-column column-width="1.8cm"/>
	<fo:table-column column-width="2.2cm"/>
	<fo:table-header>
		<fo:table-row>
		   <fo:table-cell border-width="0.0009cm" border-style="solid">
		       <fo:block text-align="center" font-weight="bold">
		          Source Table:
		       </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		       <fo:block text-align="center" font-weight="bold">
		          Source Column:
		       </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		       <fo:block text-align="center" font-weight="bold">
		          Source Table ID:
		       </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		       <fo:block text-align="center" font-weight="bold">
		          Target Table:
		       </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		       <fo:block text-align="center" font-weight="bold">
		          Target Column:
		       </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		      <fo:block text-align="center" font-weight="bold">
		          Target Table ID:
		      </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		      <fo:block text-align="center" font-weight="bold">
		          Default value:
		      </fo:block>
		    </fo:table-cell>
		    <fo:table-cell border-width="0.0009cm" border-style="solid">
		      <fo:block text-align="center" font-weight="bold">
		         Relation Mode:
		      </fo:block>
		    </fo:table-cell>
		 </fo:table-row>
	</fo:table-header>

	<fo:table-body>
	      <xsl:for-each select="relationColumn">
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationSourceTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationSourceColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationSourceTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationTargetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationTargetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationTargetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@defaultValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@relationMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	   </xsl:for-each >
	</fo:table-body>

    </fo:table>

</xsl:template>



<!-- constantColumns -->

<xsl:template match ="constantColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Constant Column
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="8.1cm"/>
	<fo:table-column column-width="8.1cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-header>
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
		       Target Table:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Column:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value Mode:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Constant Value:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>
           <xsl:for-each select="constantColumn">
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@constantValue" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
           </xsl:for-each >
	</fo:table-body>

    </fo:table>

</xsl:template>



<!-- counterColumns -->

<xsl:template match="counterColumns">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Counter Columns:
    </fo:block>

    <fo:table
	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Counter Table Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@counterTableName"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell>
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Counter Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell>
	            <fo:block text-align="start">
	               <xsl:value-of select="@counterNameColumn"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	       <fo:table-row>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Counter Column Value:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@counterValueColumn"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	</fo:table-body>

    </fo:table>
   <xsl:apply-templates select="counterColumn"/>
   <xsl:apply-templates select="subCounterColumn"/>

</xsl:template>




<!-- counterColumn -->

<xsl:template match ="counterColumn">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Counter Column
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="2.0cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="7.7cm"/>
	<fo:table-column column-width="3.2cm"/>
	<fo:table-column column-width="3.7cm"/>
	<fo:table-column column-width="2.8cm"/>
	<fo:table-column column-width="2.8cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Start Value:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Increment:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value Mode:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Start Value Reset:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-header>

	<fo:table-body >

	  <xsl:for-each select=".">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterStartValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterIncrement" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterStartValueReset" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	  </xsl:for-each >
	</fo:table-body>
    </fo:table>
</xsl:template>




<!-- subCounterColumn -->

<xsl:template match ="subCounterColumn">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="15pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Subcounter Column
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
		line-height="14pt"
		font-family="sans-serif">
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="2.5cm"/>
	<fo:table-column column-width="7.7cm"/>
	<fo:table-column column-width="4.7cm"/>
	<fo:table-column column-width="4.2cm"/>
	<fo:table-column column-width="3.1cm"/>
	<fo:table-header>
		<fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Start Value:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Counter Increment:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Target Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Value Mode:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	</fo:table-header>

	<fo:table-body >

	  <xsl:for-each select=".">

	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterStartValue" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@counterIncrement" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetTableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@targetColumnName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@valueMode" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	  </xsl:for-each >
	</fo:table-body>
    </fo:table>

    <xsl:apply-templates select="subCounterKeyColumn"/>
</xsl:template>



<!-- subCounterKeyColumn -->

<xsl:template match="subCounterKeyColumn">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="15pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt">
	Subcounter Key Column:
    </fo:block>

    <fo:table
	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="22.2cm"/>
	<fo:table-body>

	      <fo:table-row>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid" border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
	               Key Column Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-top-width="0.2mm" border-top-style="solid" border-bottom-width="0.2mm" border-bottom-style="solid">
	            <fo:block text-align="start">
	               <xsl:value-of select="@keyColumnName"/>
	            </fo:block>
	         </fo:table-cell>
	       </fo:table-row>

	</fo:table-body>

    </fo:table>
</xsl:template>



<!-- tables -->

<xsl:template match ="tables">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="18pt"
	space-before.optimum="20pt"
	space-after.optimum="2pt"
	font-weight="bold"
	start-indent="15pt"
	keep-with-next.within-page="always">
	Target Table
    </fo:block>

    <fo:table
    	border-style="solid"
    	table-omit-header-at-break="false"
    	font-size="10pt"
	line-height="14pt"
	font-family="sans-serif">
	<fo:table-column column-width="10.2cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="3cm"/>

	<fo:table-header>
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
		       Name:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Table ID:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Insert:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Table Mode:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Default mode:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Oid logic:
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" font-weight="bold">
	               Auto map:
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>
	</fo:table-header>

	<fo:table-body>
	    <xsl:for-each select="table">
	      <fo:table-row>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@tableName" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@tableID" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@insert" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@tableMode" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@defaultMode" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@oidLogic" />
	            </fo:block>
	         </fo:table-cell>
	         <fo:table-cell border-width="0.0009cm" border-style="solid">
	            <fo:block text-align="center" >
	               <xsl:value-of select="@autoMapColumns" />
	            </fo:block>
	         </fo:table-cell>
	      </fo:table-row>

	    </xsl:for-each >

	</fo:table-body>

    </fo:table>

</xsl:template>


</xsl:stylesheet>