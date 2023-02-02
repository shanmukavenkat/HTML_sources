<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the number() function</TITLE>
</HEAD>
<BODY>
<H4>Accessing Text</H4>
<P><xsl:value-of select="number(DelhiTemperature/Monday)"/></P>
<H4>Accessing Number</H4>
<P><xsl:value-of select="number(DelhiTemperature/Tuesday)"/></P>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
