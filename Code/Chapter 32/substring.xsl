<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the substring() function</TITLE>
</HEAD>
<BODY>
<H3>Using the substring() function.</H3>
<xsl:apply-templates select="Poem/Phrase"/>
</BODY>
</HTML>
</xsl:template>
<xsl:template match="Phrase">
<P>The substring of <xsl:value-of select="."/>" beginning at character
4 and of length 8 is 
<xsl:value-of select="substring(., 4, 8)"/>".</P>
</xsl:template>
</xsl:stylesheet>
