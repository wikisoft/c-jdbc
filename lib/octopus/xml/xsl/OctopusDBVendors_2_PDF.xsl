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
					page-height="29.7cm"
					page-width="21cm"
					margin-top="2.5cm"
					margin-bottom="1cm"
					margin-left="3cm"
					margin-right="1cm"
					orphans="5" >
				<fo:region-body margin-top="0.7cm"/>
				<fo:region-before extent="0.7cm"/>

			</fo:simple-page-master>
		</fo:layout-master-set>

		<fo:page-sequence master-reference="simple">
			<fo:static-content flow-name="xsl-region-before">
				<fo:block text-align="end"
							font-size="9pt"
							font-family="sans-serif"
							line-height="12pt" >
					Database configure file p. <fo:page-number/>
				</fo:block>
			</fo:static-content>

			<fo:flow flow-name="xsl-region-body">
				<fo:block/>

				<xsl:apply-templates select="LoaderConf"/>

			</fo:flow>
		</fo:page-sequence>
	</fo:root>
</xsl:template>



<!-- OctopusDbVendors

<xsl:template match="OctopusDbVendors">
    <fo:block font-size="20pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="30pt"
	space-after.optimum="5pt"
	color="blue"
	text-align="center">
	OctopusDbVendors
    </fo:block>

    <fo:block font-size="14pt"
	font-family="sans-serif"
	line-height="21pt"
	space-after.optimum="2pt"
	text-align="center">
	Drivers setings that OctopusDBVendors.xml contains.
    </fo:block>
	<fo:block
	space-before.optimum="30pt"
	/>

    <xsl:apply-templates/>

</xsl:template>
-->

<!-- OidDbType -->

<xsl:template match="OidDbType">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               OidDbType:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!-- VersionDbType -->

<xsl:template match="VersionDbType ">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               VersionDbType :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!-- OidDbColumnName-->

<xsl:template match="OidDbColumnName">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               OidDbColumnName:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!-- VersionDbColumnName-->

<xsl:template match="VersionDbColumnName">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               VersionDbColumnName:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!-- ExcludeTables-->

<xsl:template match="ExcludeTables">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               ExcludeTables:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!--DateFormat-->

<xsl:template match="DateFormat">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
		<xsl:value-of select="name()"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               DateFormat:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		  </fo:table-body>
	    </fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>
</xsl:template>

<!-- Driver -->

<xsl:template match="Driver">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
	Driver: <xsl:value-of select="@name"/>
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">


		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               ClassName:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <xsl:for-each select="ClassName">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               Connection:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <xsl:for-each select="Connection">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               RequiredUser:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <xsl:for-each select="RequiredUser">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               FirstColumnResult:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="FirstColumnResult">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               EnableJumpInResult:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="EnableJumpInResult">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               EnablePreviousRecord:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="EnablePreviousRecord">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               BeforeFirstRow:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="BeforeFirstRow">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               AfterLastRow:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="AfterLastRow">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               EnableOrderBy:
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="EnableOrderBy">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               AlterTablePrimaryKey :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="AlterTablePrimaryKey">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               MetaData :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="MetaData">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               RowCountEnabled :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="RowCountEnabled">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               SetFetchSizeEnabled :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="SetFetchSizeEnabled">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               SetCursorNameEnabled :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="SetCursorNameEnabled">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               SetEmptyStringAsNull :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="SetEmptyStringAsNull">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		       <fo:table-row>
		         <fo:table-cell>
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               ReadingOrderRelevant :
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell>
		            <xsl:for-each select="ReadingOrderRelevant">
		              <fo:block text-align="start">
		                <xsl:value-of select="@value"/>
		              </fo:block>
		            </xsl:for-each>
		         </fo:table-cell>
		       </fo:table-row>

		</fo:table-body>

	</fo:table>
	<fo:block
	space-before.optimum="40pt"
	/>

</xsl:template>

<!-- SQLType -->

<xsl:template match="SQLType">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
	DBType to JDBCType mapping
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

			<!-- header -->
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               DB data type
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start" font-weight="bold">
					JDBC data type
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <!-- data -->
		      <xsl:for-each select="/LoaderConf/SQLType/*">
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" start-indent="15pt">
		               <xsl:value-of select="name()"/>
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
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

	<!-- JDBCType -->

<xsl:template match="JDBCType ">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
	JDBCType to DBType mapping
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

			<!-- header -->
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               JDBC data type
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start" font-weight="bold">
					DB data type
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <!-- data -->
		      <xsl:for-each select="/LoaderConf/JDBCType /*">
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" start-indent="15pt">
		               <xsl:value-of select="name()"/>
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
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

<!-- JAVAType-->

<xsl:template match="JAVAType">
    <fo:block font-size="14pt"
	font-family="sans-serif"
	font-weight="bold"
	line-height="19pt"
	space-after.optimum="1pt"
	color="blue"
	text-align="end">
	JAVAType to JDBCType mapping
    </fo:block>

    <fo:table>
	<fo:table-column column-width="7cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body font-size="12pt"
		line-height="16pt"
		font-family="sans-serif">

			<!-- header -->
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" font-weight="bold" start-indent="15pt">
		               JDBC data type
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start" font-weight="bold">
					Java data type
		              </fo:block>
		         </fo:table-cell>
		       </fo:table-row>

		       <!-- data -->
		      <xsl:for-each select="/LoaderConf/JAVAType/*">
		       <fo:table-row>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		            <fo:block text-align="start" start-indent="15pt">
		               <xsl:value-of select="name()"/>
		            </fo:block>
		         </fo:table-cell>
		         <fo:table-cell border-top-width="0.2mm" border-top-style="solid">
		              <fo:block text-align="start">
		                <xsl:value-of select="."/>
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

</xsl:stylesheet>