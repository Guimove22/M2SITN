<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:include href="biographie-courte.xsl"/>
  <xsl:include href="biographie-image.xsl"/>
  <xsl:include href="biographie-contenu.xsl"/>
  <xsl:include href="traiteImage.xsl"/>
  
  <xsl:template match="/">
     <html>
       <head>
           <link href="biographie.css" type="text/css" rel="stylesheet  "/>
           <title>  <xsl:value-of select="biographie/sujet"/>  </title>
       </head>
       <body>
         <table width="400"> <td align="justify"><xsl:apply-templates/> </td> </table>
        </body>
      </html>
  </xsl:template >           
</xsl:stylesheet>