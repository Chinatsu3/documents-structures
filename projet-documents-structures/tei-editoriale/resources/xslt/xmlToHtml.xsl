<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
     <xsl:template match="/">
        <html>
            <div class="page-header">
                <h1 align="center">
                    <xsl:for-each select="//tei:fileDesc/tei:titleStmt/tei:title">
                        <xsl:value-of select="."/>
                        <br/>
                    </xsl:for-each>
                </h1>
            </div>
            <div>
              <h1 align="center">Infomation</h1>
              <h3>Date de la publication : <xsl:value-of select="//tei:fileDesc/tei:publicationStmt/tei:publisher/tei:date"/>
                </h3>
                <h3>author : <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/>
                </h3>
            </div>
            <div>
                <h1 align="center">Contenu</h1>
                <h2>
                    <xsl:value-of select="//tei:text/tei:body/tei:head"/>
                </h2>
                <xsl:for-each select="//tei:text/tei:body/tei:div">
                    <h3>
                        <xsl:value-of select="."/>
                    </h3>
                </xsl:for-each>
            </div> 
        </html>
    </xsl:template>
</xsl:stylesheet>