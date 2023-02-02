<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE>Delhi's Temperatures - rounded up using the ceiling() function</TITLE>
</HEAD>
<BODY>
<H3>Delhi's Temperatures - rounded up, using ceiling() function</H3>
<xsl:apply-templates select="DelhiTemperature/*"/>
</BODY>
</HTML>
</xsl:template>
<xsl:template match="Monday | Tuesday | Wednesday | Thursday | Friday">
<p><xsl:value-of select="ceiling(.)"/> - <xsl:value-of select="name()"/></p>
</xsl:template>
</xsl:stylesheet>
