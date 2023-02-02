<?xml version='1.0'?>
<?xml-stylesheet type="text/xsl" href="parameters.xsl"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="ol/li">
   <br/>
   <xsl:call-template name="numbered-block"/>
</xsl:template>
<xsl:template match="ol//ol/li">
   <br/>&#xA0;&#xA0;&#xA0;
   <xsl:call-template name="numbered-block">
      <xsl:with-param name="format">a. </xsl:with-param>
   </xsl:call-template>
</xsl:template>
<xsl:template name="numbered-block">
   <xsl:param name="format">1. </xsl:param>
   <fo:block>
      <xsl:number format="{$format}"/>
      <xsl:apply-templates/>
   </fo:block>
</xsl:template>

</xsl:stylesheet>
