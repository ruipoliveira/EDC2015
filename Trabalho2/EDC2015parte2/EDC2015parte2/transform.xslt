<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <properties>
      <xsl:apply-templates select="//property"/>
    </properties>
  </xsl:template>

  <xsl:template match="property">
    <property>
      <xsl:attribute name="landRegister">
        <xsl:value-of select="@landRegister"/>
      </xsl:attribute>
      <xsl:attribute name="value">
        <xsl:value-of select="@value"/>
      </xsl:attribute>
      <xsl:attribute name="city">
        <xsl:value-of select="address/@city"/>
      </xsl:attribute>
      <xsl:attribute name="street">
        <xsl:value-of select="address/@street"/>
      </xsl:attribute>
      <xsl:attribute name="portNumber">
        <xsl:value-of select="address/@portNumber"/>
      </xsl:attribute>
    </property>
  </xsl:template>

</xsl:stylesheet>
