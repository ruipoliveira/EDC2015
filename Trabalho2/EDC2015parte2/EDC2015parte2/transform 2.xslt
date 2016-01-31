<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <properties>
      <xsl:apply-templates select="//owner"/>
    </properties>
  </xsl:template>

  <xsl:template match="owner">
    <owner>
      <xsl:attribute name="taxID">
        <xsl:value-of select="@taxID"/>
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="@name"/>
      </xsl:attribute>
      <xsl:attribute name="datePurchase">
        <xsl:value-of select="@datePurchase"/>
      </xsl:attribute>
      <xsl:attribute name="propertyID">
        <xsl:value-of select="@propertyID"/>
      </xsl:attribute>
    </owner>
  </xsl:template>
</xsl:stylesheet>
