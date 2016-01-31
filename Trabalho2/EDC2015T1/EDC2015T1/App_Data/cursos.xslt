<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="xml" indent="yes"/>
  <xsl:template match="cursos">
    <cursos>
      <xsl:for-each select="curso">
        <xsl:sort select="nome"/>
        <xsl:sort select="local"/>
        <curso>
          <xsl:attribute name="Guid">
            <xsl:value-of select="guid"/>
          </xsl:attribute>          
            <xsl:attribute name="Nome">
            <xsl:value-of select="nome"/>
          </xsl:attribute>
          <xsl:attribute name="Grau">
            <xsl:value-of select="grau"/>
          </xsl:attribute>
          <xsl:attribute name="Local">
            <xsl:value-of select="local"/>
          </xsl:attribute>
        
        </curso>
      </xsl:for-each>
    </cursos>
  </xsl:template>
</xsl:stylesheet>
