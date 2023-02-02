<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the normalize-space() function</TITLE>
</HEAD>
<BODY>
<H3>Using normalize-space() - the before" and after"</H3>
<xsl:apply-templates select="Whitespace/Text"/>
</BODY>
</HTML>
</xsl:template>
<xsl:template match="Text">
<P>Before:<xsl:value-of select="."/></P>
<P> After:<xsl:value-of select="normalize-space(.)"/></P>
</xsl:template>
</xsl:stylesheet>
