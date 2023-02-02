<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Using the contains() function</title>
</head>
<body>
<h3>Using the XPath contains() function</h3>
<xsl:apply-templates select="Poem/Phrase"/>
</body>
</html>
</xsl:template>
<xsl:template match="Phrase">
<xsl:if test="contains(.,'Twinkle')">
<p>The Poem rhyme <xsl:value-of select="."/>" contains the word Twinkle"</p>
</xsl:if>
</xsl:template>
</xsl:stylesheet>
