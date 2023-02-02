<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY>
<P>
The start of the Poem rhyme is: <BR/>
<xsl:value-of select="concat(string(Poem/Phrase[position()=1]),',', string(Poem/Phrase[position()=2]))"/></P>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
