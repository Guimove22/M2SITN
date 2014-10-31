<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="image" priority="1">
            <xsl:message> traitement de l'élément image</xsl:message>
            <xsl:call-template name="imageObject">
                    <xsl:with-param name="att1" select="./@*[position()=1]" />
            </xsl:call-template>
    </xsl:template>

    <xsl:template name="imageObject">
            <xsl:param name="att1"/>
                    <xsl:choose >
                    <xsl:when test="unparsed-entity-uri($att1)">
                            <xsl:message> traitement d'entite </xsl:message>
                            <xsl:call-template name="imageFile">
                                    <xsl:with-param name="file" select="unparsed-entity-uri($att1)"/>
                            </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                            <xsl:message> traitement de fichier direct</xsl:message>
                            <xsl:call-template name="imageFile">
                                    <xsl:with-param name="file" select="$att1"/>
                            </xsl:call-template>
                    </xsl:otherwise>
            </xsl:choose>
    </xsl:template>

    <xsl:template name="imageFile">
            <xsl:param name="file"/>
            <xsl:message> 
                    nom fichier : <xsl:value-of select="$file"/>
            </xsl:message>
            <div>
                    <img src="{$file}" height="100" width="100"/>
            </div>
    </xsl:template>

</xsl:stylesheet>