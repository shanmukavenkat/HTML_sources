<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Using the substring-after() function</TITLE>
</HEAD>
<BODY>
<H3>Using the substring() function.</H3>
<xsl:apply-templates select="Poem/Phrase"/>
</BODY>
</HTML>
</xsl:template>
<xsl:template match="Phrase">
<P>The substring after the first occurrence of 'Twinkle' in <xsl:value-of
 select="."/>" is &gt;
<xsl:value-of select="substring-after(., 'Twinkle')"/></P>
</xsl:template>
</xsl:stylesheet>
