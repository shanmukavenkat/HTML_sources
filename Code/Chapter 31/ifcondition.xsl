<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html>
<body>
<table border="1" cellpadding="2" cellspacing="0" width="50%">
<xsl:apply-templates/>
</table>
</body>
</html>
</xsl:template>
<xsl:template match="name">
  <tr>
    <xsl:if test="position() mod 2 = 0">
       <xsl:attribute name="bgcolor">lightblue</xsl:attribute>
    </xsl:if>
    <xsl:apply-templates/>
  </tr>
</xsl:template>
</xsl:stylesheet>