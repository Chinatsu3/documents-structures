<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" office:version="1.2"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
    version="2.0">
    
    
    <xsl:template match="/">
        <TEI>
            <text>
            <body>
                <xsl:apply-templates select="//office:text/text:p[@text:style-name='Title']"/>
                <div n="1">
                    <xsl:if test="//office:text/text:h[@text:style-name='Heading_20_1'][1]">
                        <xsl:apply-templates select="//office:text/text:h[@text:style-name='Heading_20_1'][1]"/>
                    </xsl:if>
                    <div n="2">
                        <xsl:if test="//office:text/text:h[@text:style-name='Heading_20_2'][1]">
                            <xsl:apply-templates select="//office:text/text:h[@text:style-name='Heading_20_2'][1]"/>
                            <xsl:apply-templates select="//office:text/text:p[@text:style-name='Text_20_body'][1]"/>
                            <xsl:apply-templates select="//office:text/text:p[@text:style-name='Text_20_body']/following-sibling::node()"/>
                            </xsl:if>
                    </div>
                </div>
                
            </body>
            </text>
        </TEI>
     </xsl:template>
    
    <xsl:template match="office:text/text:p[@text:style-name='Title']">
        <head><xsl:value-of select='.'/></head>
    </xsl:template>
    
    <xsl:template match="office:text/text:h[@text:style-name='Heading_20_1']">
        <head><xsl:value-of select='.'/></head>
    </xsl:template>
    
    <xsl:template match="office:text/text:h[@text:style-name='Heading_20_2'][position()]">
        <head><xsl:apply-templates/></head>
    </xsl:template>
    
    <xsl:template match="office:text/text:p[@text:style-name='Text_20_body']">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="office:text/text:p[@text:style-name='Text_20_body']/text:span[@text:style-name='italique']">
        <hi rend='italique'><xsl:apply-templates/></hi>
    </xsl:template>
    
    <xsl:template match="office:text/text:p[@text:style-name='Text_20_body']/text:span[@text:style-name='gras']">
        <hi rend='bold'><xsl:apply-templates/></hi>
    </xsl:template>
    
    <xsl:template match="office:text/text:p[@text:style-name='Text_20_body']/text:span[@text:style-name='citation']">
        <hi rend='quote'><xsl:apply-templates/></hi>
    </xsl:template>
    
</xsl:stylesheet> 