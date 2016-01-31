<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <timetable>
      <xsl:apply-templates select="//day"/>
    </timetable>
  </xsl:template>
  <xsl:template match="day">
    <day>
      <xsl:attribute name="ID">
        <xsl:value-of select="@ID"/>
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="task/name"/>
      </xsl:attribute>
      <xsl:attribute name="tp">
        <xsl:value-of select="task/tp"/>
      </xsl:attribute>
      <xsl:attribute name="numday">
        <xsl:value-of select="numday"/>
      </xsl:attribute>
      <xsl:attribute name="time-sta">
        <xsl:value-of select="task/time-sta"/>
      </xsl:attribute>
      <xsl:attribute name="time-end">
        <xsl:value-of select="task/time-end"/>
      </xsl:attribute>
    </day>
    
  </xsl:template>
</xsl:stylesheet>
