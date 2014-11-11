<xsl:stylesheet type="text/css" href="biographie.css" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    

    <xsl:template match="biographie/livre/parution">
        <xsl:value-of select="concat(' paru en ',.)"/>
    </xsl:template>
    

     <xsl:template match="biographie/sujet">       
        <span class="sujet">

            <xsl:value-of select="."/>       

        </span> 
    </xsl:template>
   	 
   	 <xsl:template match="biographie/nom">       
        <span class="nom">

            <xsl:value-of select="."/>       

        </span> 
    </xsl:template>

    <xsl:template match="biographie/livre">       
        <span class="livre">

            <xsl:value-of select="."/>       

        </span> 
    </xsl:template>
    	
    <xsl:template match="biographie/titre">
         <span class="titre">
         	<xsl:copy-of select="."/> 
        </span>
    </xsl:template>
    
    <xsl:template match="biographie/node()[not(text())]">
     <i>   <xsl:value-of select="."/></i>
    </xsl:template>
    
    <xsl:template match="livre/titre">
         <span class="titre">
         	<xsl:copy-of select="."/> 
        </span>
    </xsl:template>

     

    <xsl:template match="biographie/acteur">
        <span class='acteur'> <xsl:value-of select="concat( ' comme ',' acteur ',.)"/> </span> 
    </xsl:template>

     <xsl:template match="biographie/realisateur">
		<span class="realisateur">   
		    
		    		<xsl:value-of select="."/>
		    
		</span>
    </xsl:template>
</xsl:stylesheet>
