<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!--Sortie html, par défaut la sortie est xml -->
	<xsl:output method="html"/>
	<!-- Règle racine -->
	<xsl:template match="/">
		<html>
			<head> 
				<title> titre du document resultat </title>
			</head>
			<body>
				
				
				 
			 

				<ul>
					<xsl:for-each select="personnel_dauphine/personne">
					 	
					 	<li>
					 		<div>
					 			<p><xsl:value-of select="nom" /></p>
					 			<p><xsl:value-of select="prenom" /></p>
					 		</div>
					 	</li>
				<!-- traitement du noeud livre courant -->
					</xsl:for-each>
				</ul>

				
				
								


			</body>
		</html>
	</xsl:template>
	<xsl:template name="ligne">
					<td> <i> <xsl:value-of select="concat(@id, ' :')" /> </i> </td>
					<td> <xsl:copy-of select="./titre" /></td> 
				</xsl:template>
</xsl:stylesheet>



