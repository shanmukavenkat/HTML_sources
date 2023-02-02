<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the XPath Node Set functions</TITLE>
</HEAD>
<BODY>
<H1>Using count() Function</H1>
<P>In the source document there are <B><xsl:value-of
select="count(PRODUCTDATA/PRODUCT)"/></B> &lt;PRODUCT&gt; elements.</P>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
