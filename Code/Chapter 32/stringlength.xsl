<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Using the string-length() function</title>
</head>
<body>
<h3>Using the string-length() function</h3>
<xsl:apply-templates select="Poem/Phrase"/>
</body>
</html>
</xsl:template>
<xsl:template match="Phrase">
<p>The string " <xsl:value-of select="."/>" in position <xsl:value-of
select="position()"/> is
<xsl:value-of select="string-length(.)"/> characters long.</p>
</xsl:template>
</xsl:stylesheet>
