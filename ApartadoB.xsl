﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
 <museos>
 <xsl:apply-templates select="museos/museo"/>
 </museos>
 </xsl:template>
 <xsl:template match="museos/museo">
 <museo>
 <xsl:attribute name="ubicacion">
 <xsl:value-of select="@cidade"/>
 <xsl:text> (</xsl:text>
 <xsl:value-of select="@pais"/>
 <xsl:text>)</xsl:text>
 </xsl:attribute>
 <xsl:value-of select="."/>
 </museo>
 </xsl:template>
</xsl:stylesheet>