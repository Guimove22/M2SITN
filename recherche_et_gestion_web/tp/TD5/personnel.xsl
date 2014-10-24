<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!--Sortie html, par défaut la sortie est xml -->
	<xsl:output method="html"/>
	<!-- Règle racine -->
	<xsl:template match="/">
		<html>
			<head> 
				<title> Personnel Dauphine </title>
			</head>
			<body>
				
				
				 <table>
				 	<thead>
				 		<tr>
				 			<th>
				 				
				 			</th>
				 		</tr>
				 	</thead>
				 	<tbody>
				 		<tr>
				 			<td>
				 				
				 			</td>
				 		</tr>
				 	</tbody>
				 </table>
			 

				<ul>
					<xsl:for-each select="personnel_dauphine/personne">
					 	
					 	<xsl:call-template name="affichage"/>
				<!-- traitement du noeud livre courant -->
					</xsl:for-each>
				</ul>

				
				
								


			</body>
		</html>
	</xsl:template>
	<xsl:template name="affichage">
					<li> 
						<xsl:copy-of select="./nom"/> 
					</li> 
					
				</xsl:template>
</xsl:stylesheet>



