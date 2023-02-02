<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:emp="http://kogentindia.com/emp">
<xsl:template match="/">
<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY>
<H4>Using local-name()</H4>
<P>The local part of the &lt;emp:first&gt; element is <xsl:value-of select="local-name(emp:employees/emp:name/emp:first)"/></P>
<H4>Using name()</H4>
<P>The name() function applied to the &lt;emp:first&gt; element returns:
<xsl:value-of select="name(emp:employees/emp:name/emp:first)"/></P>
<H4>Using namespace-uri()</H4>
<P>The namespace-uri() function applied to the &lt;emp:first&gt; element returns:
<xsl:value-of select="namespace-uri(emp:employees/emp:name/emp:first)"/></P>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
