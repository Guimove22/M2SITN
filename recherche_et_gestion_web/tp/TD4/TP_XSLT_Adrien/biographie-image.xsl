<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="biographie/image" priority="1">
        <p>  
            <xsl:choose>
                <xsl:when test="unparsed-entity-uri(@source)">
                    <img src="{unparsed-entity-uri(@source)}" height="100" width="100"/>
                </xsl:when>
                <xsl:otherwise>
                    <img src="{@source}" height="100" width="100"/>
                </xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>
</xsl:stylesheet>
