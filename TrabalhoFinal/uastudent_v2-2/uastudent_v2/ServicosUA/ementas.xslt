<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/result">
    <itens>
      <xsl:apply-templates select="/result/menus/menu/items" />
    </itens>
  </xsl:template>

  <xsl:template match="items">
    <item>
      <xsl:attribute name="cantina">
        <xsl:value-of select="../@canteen"/>
      </xsl:attribute>
      <xsl:attribute name="sopa">
        <xsl:value-of select="item[@name='Sopa']" />
      </xsl:attribute>
      <xsl:attribute name="pratocarne">
        <xsl:value-of select="item[@name='Prato normal carne']" />
      </xsl:attribute>
      <xsl:attribute name="pratopeixe">
        <xsl:value-of select="item[@name='Prato normal peixe']" />
      </xsl:attribute>
      <xsl:attribute name="pratodieta">
        <xsl:value-of select="item[@name='Prato dieta']" />
      </xsl:attribute>
      <xsl:attribute name="pratovegetariano">
        <xsl:value-of select="item[@name='Prato vegetariano']" />
      </xsl:attribute>
      <xsl:attribute name="pratoopcao">
        <xsl:value-of select="item[@name='Prato opção']" />
      </xsl:attribute>
      <xsl:attribute name="salada">
        <xsl:value-of select="item[@name='Salada']" />
      </xsl:attribute>
      <xsl:attribute name="diversos">
        <xsl:value-of select="item[@name='Diversos']" />
      </xsl:attribute>
      <xsl:attribute name="sobremesa">
        <xsl:value-of select="item[@name='Sobremesa']" />
      </xsl:attribute>
      <xsl:attribute name="bebida">
        <xsl:value-of select="item[@name='Bebida']" />
      </xsl:attribute>
      <xsl:attribute name="dia">
        <xsl:value-of select="../@weekday"/>
      </xsl:attribute>
      <xsl:attribute name="meal">
        <xsl:value-of select="../@meal"/>
      </xsl:attribute>
    </item>

  </xsl:template>
</xsl:stylesheet>