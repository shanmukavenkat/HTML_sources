<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<HTML>
<HEAD>
<TITLE>Using the translate() function</TITLE>
</HEAD>

<BODY>
<H3>Using the translate() function</H3>
<xsl:apply-templates select="Poem/Phrase"/>
</BODY>

</HTML>
</xsl:template>

<xsl:template match="Phrase">
<P>Applying the translate() function specified to the string
"<xsl:value-of select="."/>" produces the string
"<xsl:value-of select="translate(., 'abcdefghijklmnopqrstuvwxyz',
'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>".</P>
</xsl:template>

</xsl:stylesheet>
