<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<title>XSLT ELEMENTS</title>
<body>
<h2>Product Details</h2> 
<xsl:apply-templates/> 
</body>
</html>
</xsl:template>
<xsl:template match="PRODUCT">
<p>
	<xsl:apply-templates select="PRODUCTNAME"/>  
	<xsl:apply-templates select="PRICE"/>
	<xsl:apply-templates select="QUANTITY"/>
</p>
</xsl:template>
<xsl:template match="PRODUCTNAME">
PRODUCT NAME: <span style="color:#ff0000">
<xsl:value-of select="."/></span>
<br />
</xsl:template>
<xsl:template match="PRICE">
PRICE: <span style="color:#0000FF">
<xsl:value-of select="."/></span>
<br />
</xsl:template>
<xsl:template match="QUANTITY">
QUANTITY: <span style="color:#006600">
<xsl:value-of select="."/></span>
<br />
</xsl:template>
</xsl:stylesheet>
