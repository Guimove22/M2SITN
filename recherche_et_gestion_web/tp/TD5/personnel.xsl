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
			<body >
				
				
				 <xsl:apply-templates select="personnel_dauphine/personne/nom" />
				


			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>



