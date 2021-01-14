<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:template match="/">
        <html>
            <body>
                    <div>
                        <div>
                            <h1 id="site-title" align="center">
                            <xsl:value-of select="accueil/entete/information/cours"/>
                        </h1>
                            <h4 align="center"> <xsl:value-of select="//auteur"/> - <xsl:value-of select="//formation"/> - <xsl:value-of select="//annee"/>
                        </h4>
                            <br/>
                        </div>
                        <!-- partie principale de la page -->
                        <div>
                            <text>
                                <h1>
                                <center>
                                    <xsl:value-of select="accueil/contenu/titre"/>
                                </center>
                            </h1>
                            </text>
                            <xsl:apply-templates select="accueil/contenu/presentation"/>
                        </div>
                            <hr size="6" width="100%" color="navy"/>				    
                      </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="accueil/contenu/presentation/t1">
        <h1>
            <p>
                <xsl:value-of select="."/>
            </p>
        </h1>
    </xsl:template>
    <xsl:template match="accueil/contenu/presentation/texte">
        <h3>
            <p>
                <xsl:value-of select="."/>
            </p>
        </h3>
    </xsl:template>

</xsl:stylesheet>