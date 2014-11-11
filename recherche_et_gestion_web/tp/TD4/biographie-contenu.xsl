<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
     <xsl:template match="biographie/sujet">       
         
             <xsl:value-of select="."/> 
           
    </xsl:template>
    
    <xsl:template match="biographie/node()[not(text())]">
     <i>   <xsl:value-of select="."/></i>
    </xsl:template>
    
    <xsl:template match="livre/titre">
         <xsl:copy-of select="."/> 
    </xsl:template>


     <xsl:template match="biographie/livre/parution">
        <xsl:value-of select="concat(' paru en ',.)"/>
    </xsl:template>

    <xsl:template match="biographie/acteur">
        <xsl:value-of select="concat( ' comme ',' acteur ',.)"/>
    </xsl:template>

     <xsl:template match="biographie/realisateur">
     <i> <b>  <xsl:value-of select="."/> </b></i>
    </xsl:template>
</xsl:stylesheet>
