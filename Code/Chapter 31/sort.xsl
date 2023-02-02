<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
  <xsl:for-each select="Values/Entry/value">
    <xsl:sort order="descending" select="value"/><BR/>
<xsl:apply-templates select="."/><BR/>
</xsl:for-each>
----------------------------------------
 <xsl:for-each select="Values/Entry/char">
    <xsl:sort select="char"/><BR/>
<xsl:apply-templates select="."/><BR/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
