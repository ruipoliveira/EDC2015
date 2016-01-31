<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <rss>
      <xsl:apply-templates select="//item"/>
    </rss>
  </xsl:template>

  <xsl:template match="item">
    <item>
      <xsl:attribute name="title">
        <xsl:value-of select="title"/>
      </xsl:attribute>
      <xsl:attribute name="description">
        <xsl:value-of select="substring(description,0,700)" />
      </xsl:attribute>
      <xsl:attribute name="category">
        <xsl:value-of select="category"/>
      </xsl:attribute>
      <xsl:attribute name="pubDate">
        <xsl:value-of select="pubDate"/>
      </xsl:attribute>
      <xsl:attribute name="guid">
        <xsl:value-of select="link"/>
      </xsl:attribute>
    </item>
  </xsl:template>
</xsl:stylesheet>
