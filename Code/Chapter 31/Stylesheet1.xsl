<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="productlist" match="PRODUCT" use="PRODUCTNAME" />
<xsl:template match="/">
<html>
<body>
<h3>Accessing Current node using current() function</h3>
<xsl:for-each select="PRODUCTDATA/PRODUCT/PRODUCTNAME">
<xsl:value-of select="current()" /><br/> 
</xsl:for-each>
<h3>Accessing emp.xml using document() function</h3>
<xsl:value-of select="document('emp.xml')"/>
<h3>Using element-available() function</h3>
<xsl:choose>
<xsl:when test="element-available('xsl:element')">
<p>xsl:element is supported.</p>
</xsl:when>
<xsl:otherwise>
<p>xsl:element is not supported.</p>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="element-available('xsl:update')">
<p>xsl:update is supported.</p>
</xsl:when>
<xsl:otherwise>
<p>xsl:update is not supported.</p>
</xsl:otherwise>
</xsl:choose>
<h3>Using format-number() function</h3>
<xsl:value-of select='format-number(123456, "###,###.00")' /><br/>
<xsl:value-of select='format-number(0.456789, "##%")' />
<h3>Using function-available() function</h3>
<xsl:choose>
<xsl:when test="function-available('update')">
<p>update() is supported.</p>
</xsl:when>
<xsl:otherwise>
<p>update() is not supported.</p>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="function-available('document')">
<p>document() is supported.</p>
</xsl:when>
<xsl:otherwise>
<p>document() is not supported.</p>
</xsl:otherwise>
</xsl:choose>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
