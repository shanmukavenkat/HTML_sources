<? xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> <xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the XPath last() function.</TITLE>
</HEAD>
<BODY>
<P>The XPath last () function returns an integer equal to the context size. </P>
<P>Here is the content of the last node in the context : </P>
<xsl:apply-templates select="PRODUCTDATA/PRODUCT[last()]"/>
</BODY>
</HTML>
</xsl:template>
<xsl:template match="PRODUCT">
<P><xsl:value-of select="PRODUCTNAME"/></P>
<P><xsl:value-of select="DESCRIPTION"/></P>
<P><xsl:value-of select="PRICE"/></P>
<P><xsl:value-of select="QUANTITY"/></P>
</xsl:template>
</xsl:stylesheet>
