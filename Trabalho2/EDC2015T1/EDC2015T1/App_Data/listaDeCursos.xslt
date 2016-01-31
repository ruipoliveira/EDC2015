<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="cursos">
      <listadecursos>
        <xsl:for-each select="curso">
          <xsl:sort select="grau"/>
          <xsl:sort select="local"/>
          <grau>
            <xsl:attribute name="nome">
              <xsl:value-of select="grau"/>
            </xsl:attribute>
          </grau>
          <local>
            <xsl:attribute name="nomelocal">
              <xsl:value-of select="local"/>
            </xsl:attribute>
          </local>
          <tabela>
            <xsl:attribute name="nome">
              <xsl:value-of select="grau"/>
            </xsl:attribute>
            <xsl:attribute name="nomelocal">
              <xsl:value-of select="local"/>
            </xsl:attribute>
          </tabela>
        </xsl:for-each>
      </listadecursos>
    </xsl:template>
</xsl:stylesheet>
