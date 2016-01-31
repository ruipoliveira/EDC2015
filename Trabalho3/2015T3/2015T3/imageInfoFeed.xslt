<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
      <rss>
        <xsl:apply-templates select="//channel"/>
      </rss>
    </xsl:template>
  
    <xsl:template match="channel">
      <channel>
        <xsl:attribute name="image">
          <xsl:value-of select="image/url"/>
        </xsl:attribute>
      </channel>
    </xsl:template>
  
  
  
</xsl:stylesheet>
