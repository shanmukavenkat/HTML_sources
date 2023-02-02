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
Does the first phrase of the nursery rhyme start with Twink"? -
<xsl:value-of select="starts-with(
string(Poem/Phrase[position()=1]),'Twink')"/></P>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
