<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" office:version="1.2"
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <TEI>
        <teiHeader>
            <!--<fileDesc>-->
            <fileDesc>
                <titleStmt>
                    <xsl:if test="//office:meta">
                        <title><xsl:apply-templates select="//meta:user-defined[@meta:name='Titre']"/></title>
                    </xsl:if>
                </titleStmt>
                
                <publicationStmt>
                    <publisher>
                    <xsl:if test="//office:meta">
                        <date><xsl:apply-templates select="//meta:user-defined[@meta:name='Date de publication']"/></date>
                    </xsl:if>
                     </publisher>
                    <availability>
                        <licence><xsl:apply-templates select="//meta:user-defined[@meta:name='Licence']"/></licence>
                    </availability>
                </publicationStmt>
               
                <sourceDesc>
                    <bibl>
                    <xsl:if test="//office:meta">
                        <bibl><xsl:apply-templates select="//meta:user-defined[@meta:name='Source']"/></bibl>
                        <author><xsl:apply-templates select="//meta:user-defined[@meta:name='Auteur']"/></author>
                    </xsl:if>
                    </bibl>
                </sourceDesc>      
            </fileDesc>
            
            <!--<encodingDesc>-->
            <encodingDesc>
                <projectDesc>
                    <xsl:if test="//office:meta">
                        <p><xsl:apply-templates select="//meta:user-defined[@meta:name='Description']"/></p>
                    </xsl:if>
                </projectDesc>
            </encodingDesc>
            
           <!-- <profileDesc>-->
            <profileDesc>
                <creation>
                <xsl:if test="//office:meta">
                    <date><xsl:apply-templates select="//meta:user-defined[@meta:name='Date de la source']"/></date>
                </xsl:if>
                </creation>
            </profileDesc>
            
        </teiHeader>
       </TEI>
    </xsl:template>
        
    
    
</xsl:stylesheet>