<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:key name="task" match="task" use="concat(../numday, '|', time-sta)" />
  <xsl:key name="task-by-day" match="task" use="../numday" />

  <xsl:template match="/">
    <html>
      <body>

    <table class="table table-bordered" style="width: 50%;">
      <tr>
        <th><center>Horas/Dia</center></th>
        <th>Segunda</th>
        <th>Terça</th>
        <th>Quarta</th>
        <th>Quinta</th>
        <th>Sexta</th>
      </tr>
      <xsl:call-template name="rows">
        <xsl:with-param name="start-row" select="8"/>
        <xsl:with-param name="end-row" select="21"/>
      </xsl:call-template>
    </table>

      </body>
    </html>
    
  </xsl:template>

  <xsl:template name="rows">
    <xsl:param name="start-row"/>
    <xsl:param name="end-row"/>

    <tr>
      <th>
        <center><xsl:value-of select="$start-row"/>:00H</center>
      </th>
      <xsl:call-template name="cols">
        <xsl:with-param name="current-row" select="$start-row"/>
        <xsl:with-param name="start-col" select="1"/>
        <xsl:with-param name="end-col" select="5"/>
      </xsl:call-template>
    </tr>
    <!-- recursive call -->
    <xsl:if test="$start-row &lt; $end-row">
      <xsl:call-template name="rows">
        <xsl:with-param name="start-row" select="$start-row + 1"/>
        <xsl:with-param name="end-row" select="$end-row"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="cols">
    <xsl:param name="current-row"/>
    <xsl:param name="start-col"/>
    <xsl:param name="end-col"/>

    <xsl:variable name="task" select="key('task', concat($start-col, '|', $current-row))" />
    <xsl:variable name="overlap-tasks" select="key('task-by-day', $start-col)[time-sta &lt; $current-row and time-end > $current-row]" />

    <xsl:if test="not($overlap-tasks)">
      <td rowspan="{$task/time-end - $task/time-sta}" align="center">
        <xsl:value-of select="$task/name"/> &#09; &#09; <xsl:value-of select="$task/tp"/>
      </td>
    </xsl:if>
    <!-- recursive call -->
    <xsl:if test="$start-col &lt; $end-col">
      <xsl:call-template name="cols">
        <xsl:with-param name="current-row" select="$current-row"/>
        <xsl:with-param name="start-col" select="$start-col + 1"/>
        <xsl:with-param name="end-col" select="$end-col"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
