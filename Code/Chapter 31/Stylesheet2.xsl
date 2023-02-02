<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name="productlist" match="PRODUCT" use="PRODUCTNAME" />
<xsl:template match="/">
<html>
<body>
<h3>Creating Product's Hyperlink using generate-id() function</h3>
<b>PRODUCTS:</b>
<ul>
<xsl:for-each select="PRODUCTDATA/PRODUCT">
<li>
<a href="#{generate-id(PRODUCTNAME)}">
<xsl:value-of select="PRODUCTNAME" /></a>
</li>
</xsl:for-each>
</ul>
<hr />
<b>Hyperlink Created By generate-id() function</b><br/>
<xsl:for-each select="PRODUCTDATA/PRODUCT">
PRODUCT: <a name="{generate-id(PRODUCTNAME)}">
<xsl:value-of select="PRODUCTNAME" /></a>
<br />
Price: <xsl:value-of select="PRICE" />
<br />
Quantity: <xsl:value-of select="QUANTITY" />
<hr />
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
