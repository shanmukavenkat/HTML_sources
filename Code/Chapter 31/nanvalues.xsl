<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html>
<body>
<table border="1" cellpadding="2" cellspacing="0" width="50%">
<xsl:apply-templates/>
</table>
</body>
</html>
</xsl:template>
<xsl:template match="items">
 <xsl:for-each select="item">
  <xsl:call-template name="IsNaN"/>
 </xsl:for-each>
</xsl:template>
<xsl:template name="IsNaN">
 <!-- Parameter defined here -->
 <xsl:param name="var" select="."/>
 <xsl:value-of select="$var"/>
  <tr>
    <xsl:if test="string(number($var)) != 'NaN'"><xsl:attribute name="bgcolor">lightblue</xsl:attribute>:is a number
    </xsl:if>
    <xsl:if test="string(number($var)) = 'NaN'">
       <xsl:attribute name="bgcolor">yellow</xsl:attribute>:is a string
    </xsl:if>
      </tr>
</xsl:template>
</xsl:stylesheet>