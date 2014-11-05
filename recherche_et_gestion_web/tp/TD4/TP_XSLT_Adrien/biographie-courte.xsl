<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="biographie-image.xsl"/>
    <xsl:template match="/">
        <html>
            <head>
                <link href="biographie.css" type="text/css" rel="stylesheet"/>
                <title>  
                    <xsl:value-of select="biographie/sujet"/>  
                </title>
            </head>
            <body>
                <table width="400"> 
                    <td align="justify">
                        <xsl:apply-templates/> 
                    </td> 
                </table>
            </body>
        </html>
    </xsl:template>  
    
    <xsl:template match="sujet">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="livre" priority="0">
        <livre>
            <xsl:copy-of select="titre"/>
            <parution> 
                <xsl:value-of select="concat(' paru en ',parution)"/>
            </parution>
        </livre>
    </xsl:template>
    
    <xsl:template match="livre" priority="1">
        <livre>
            <xsl:apply-templates select="titre[parent::livre]"/>
            <xsl:apply-templates select="parution"/>
        </livre>
    </xsl:template>
    
     <xsl:template match="titre[parent::livre]" priority="1">
       <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="parution" priority="1">
        <parution>
            <xsl:value-of select="concat(' paru en ',.)"/>
        </parution>
    </xsl:template>

    <xsl:template match="biographie/acteur">
        comme acteur <acteur>
            <xsl:value-of select='.'/>
        </acteur>
    </xsl:template>

    <xsl:template match="titre">
        <film>
            <xsl:value-of select="."/>
        </film>
    </xsl:template>
    
    <xsl:template match="biographie/realisateur">
        <xsl:copy-of select="."/>
    </xsl:template>   
    
    <xsl:template match="nom">
        <xsl:copy-of select="."/>
    </xsl:template>      
</xsl:stylesheet>