<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : dauphine.xsl
    Created on : 24 octobre 2014, 14:37
    Author     : yanndalmat
    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Employe Universitaire</title>
            </head>
            <body>
                <center>
                <h2>Employe Universitaire</h2>
                    <table border="1">
                      <tr bgcolor="#9acd32">
                        <th>nom</th>
                        <th>prénom</th>
                        <th>Bureau</th>
                      </tr>
                      <xsl:for-each select="personnel_dauphine/employe">
                      <tr>
                        <td><xsl:value-of select="nom" /></td>
                        <td><xsl:value-of select="prenom" /></td>
                        <td>
                            <xsl:variable name="var" select="bureau/@service"/>
                            <xsl:apply-templates select="parent::node()/service[@id=$var]"/>
                        </td>
                      </tr>
                      </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
