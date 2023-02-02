<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Product Details</h2>
	<table border="1">
	<tr bgcolor="#CCCFFF">
	<th align="left">Product Name</th>
	<th align="left">Quantity</th>
	<th align="left">Price</th>
	</tr>
	<xsl:for-each select="PRODUCTDATA/PRODUCT">
	<tr>
	<td><xsl:value-of select="PRODUCTNAME"/></td>
	<td><xsl:value-of select="QUANTITY"/></td>
	<td><xsl:value-of select="PRICE"/></td>
	</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
