<xsl:stylesheet version="1.0">
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <ite>

        <infoPrincipal>
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="ite/@web"/>
            </web>
        </infoPrincipal>

            <empleados>
                <direccion>
                    <dire>
                        <nombre>
                            <xsl:value-of select="ite/director/nombre"/>
                        </nombre>
                        <despacho>
                            <xsl:value-of select="ite/director/despacho"/>
                        </despacho>
                    </dire>
                    <jefe_estudios>
                        <nombre>
                            <xsl:value-of sedirectoralect="ite/jefe_estudios/nombre"/>
                        </nombre>
                        <despacho>
                            <xsl:value-of select="ite/jefe_estudios/despacho"/>
                        </despacho>
                    </jefe_estudios>
                </direccion>

                <claustro>
                    <xsl:for-each select="ite/profesores/profesor">
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <nombre>
                                <xsl:value-of select="nombre"/>
                            </nombre>
                        </profesor>
                    </xsl:for-each>
                </claustro>
            </empleados>

            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                          <xsl:attribute name="año">
                           <xsl:value-of select="ite/decretoTitulo/@año"/>
                        </xsl:attribute>
                        <xsl:attribute name="grado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre> 
                    </ciclo>
                </xsl:for-each>
            </ciclos>

        </ite>
    </xsl:template>
</xsl:stylesheet>