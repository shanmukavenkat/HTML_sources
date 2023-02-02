<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="productlist" match="PRODUCT" use="PRODUCTNAME" />
<xsl:template match="/">
<html>
<body>
<h3>Using key() function</h3>
<xsl:for-each select="key('productlist', 'Mini Bus')">
<p>

Product Name: <xsl:value-of select="PRODUCTNAME" />
<br />
Price: <xsl:value-of select="PRICE" />
<br />
Quantity: <xsl:value-of select="QUANTITY" />
</p>

</xsl:for-each>
<h3>Using system-property() function</h3>
<p>

Version:
<xsl:value-of select="system-property('xsl:version')" />
<br />
Vendor:
<xsl:value-of select="system-property('xsl:vendor')" />
<br />
Vendor URL:
<xsl:value-of select="system-property('xsl:vendor-url')" />
</p>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
