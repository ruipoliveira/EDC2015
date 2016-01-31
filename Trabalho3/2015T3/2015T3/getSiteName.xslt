<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <sites>
      <xsl:apply-templates select="//site"/>
    </sites>
  </xsl:template>

  <xsl:template match="site">
    <site>
      <xsl:attribute name="description">
        <xsl:value-of select="@description"/>
      </xsl:attribute>
      <xsl:attribute name="url">
        <xsl:value-of select="@url"/>
      </xsl:attribute>
    </site>
  </xsl:template>
</xsl:stylesheet>
