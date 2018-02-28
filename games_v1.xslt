<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>
  
    <xsl:template match="/">
      
      <html>
        <body>
          
          <h1>Basketball Scores, Fall 2017</h1>
          
         <xsl:for-each select ="teamscores/season/game">
         
            Date: <xsl:value-of select ="date"/> <br/>
            <xsl:value-of select ="team1"/> (<xsl:value-of select="team1/@score"/>) <br/>
            <xsl:value-of select ="team2"/> (<xsl:value-of select="team2/@score"/>) <br/>
           <br/>
         </xsl:for-each>
          
        </body>
      </html>
      
      
            
    </xsl:template> 
  
  
  
</xsl:stylesheet>
