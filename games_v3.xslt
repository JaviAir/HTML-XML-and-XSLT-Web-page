﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      <html>
        <body>

          <table border="1" cellspacing="0" cellpadding="5" style="width:90%">

            <tr>
              <th colspan="3" style="height:50;font-size:30;color:#F9A01B;background-color:#98002E;text-shadow: -2px 0 black, 0 2px black, 2px 0 black, 0 -2px black;">
                Basketball Scores, Fall 2017
              </th>              
            </tr>
            <tr>
              <th>Date</th>
              <th>Home</th>
              <th>Visitor</th>
            </tr>
            <xsl:apply-templates select="teamscores/season/game">

            </xsl:apply-templates>
          </table>
        </body>
      </html>
    </xsl:template>

  <xsl:template match="game">
    <tr>
      <td style="text-align:center;">
        <xsl:value-of select ="date"/>
      </td>
      <td>
        <xsl:value-of select ="team1"/> (<xsl:value-of select="team1/@score"/>) <xsl:if test="team1/@score > team2/@score">*</xsl:if>
      </td>
      <td>
        <xsl:value-of select ="team2"/> (<xsl:value-of select="team2/@score"/>) <xsl:if test="team2/@score > team1/@score">*</xsl:if>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
