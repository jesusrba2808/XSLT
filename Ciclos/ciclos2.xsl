<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="no"/>
    <xsl:template match="/">
        <xsl:for-each select="centro/ciclos/ciclo">
          <xsl:value-of select="concat(/nombre, '&#xA;')"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>