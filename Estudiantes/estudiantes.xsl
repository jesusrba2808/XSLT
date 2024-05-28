<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <aula>
      <xsl:for-each select="aula/estudiante">
        <xsl:if test="nota_media &gt; 5">
          <estudiante>
            <dni><xsl:value-of select="dni"/></dni>
            <nombre><xsl:value-of select="nombre"/></nombre>
            <apellidos><xsl:value-of select="apellidos"/></apellidos>
            <xsl:choose>
              <xsl:when test="sexo = 'Masculino'">
                <sexo>Masculino</sexo>
              </xsl:when>
              <xsl:when test="sexo = 'Femenino'">
                <sexo>Femenino</sexo>
              </xsl:when>
              <xsl:otherwise>
                <sexo>Desconocido</sexo>
              </xsl:otherwise>
            </xsl:choose>
            <fecha_nacimiento>
              <dia><xsl:value-of select="fecha_nacimiento/dia"/></dia>
              <mes><xsl:value-of select="fecha_nacimiento/mes"/></mes>
              <anio><xsl:value-of select="fecha_nacimiento/año"/></anio>
            </fecha_nacimiento>
            <localidad><xsl:value-of select="direccion/localidad"/>(<xsl:value-of select="direccion/provincia"/>)</localidad>
            <telefono><xsl:attribute name="móvil"/><xsl:value-of select="telefono"/></telefono>
            <nota_media><xsl:value-of select="nota_media"/></nota_media>
          </estudiante>
        </xsl:if>
      </xsl:for-each>
    </aula>
  </xsl:template>
</xsl:stylesheet>