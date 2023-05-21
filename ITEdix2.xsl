<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="css/style.css"/>
            </head>

            <body>
                <div class="cabecera">
                    <header class="cont cabecera">
                        <div><a href="{/ite/@web}" target="_blank"><img class="logo" src="img/edix.png"/></a>
                        </div>
                        <nav>
                            <ul class="navbar">
                                <li><a href="#profesores">Docentes</a></li>
                                <li><a href="#ciclos">Ciclos</a></li>                            
                            </ul>
                        </nav>
                    </header>
                </div>
                <main class="contenedor">
                <h1 class="main_header"><xsl:value-of select="/ite/@nombre"/></h1>

                    <article class="profes" id="profesores">
                        <caption>
                            <h3>Profesores</h3>
                        </caption>

                        <table class ="table">
                            <tablebody>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                </tr>
                                <xsl:for-each select="/ite/profesores/profesor">
                                    <tr>
                                        <td>
                                        <xsl:value-of select="id"/>
                                        </td>

                                        <td>
                                            <xsl:value-of select="nombre"/>
                                        </td>
                                    </tr>
                                
                                </xsl:for-each>
                            </tablebody>
                        </table>
                    </article>

                    <article id="ciclos">
                    <caption>
                        <h2>Ciclos formativos</h2>
                    </caption>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Año</th>
                        </tr>
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="@id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="grado" />
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </article>
            </main>

            <div class="footer" id="contacto">
                <footer class="container">
                    <div class="logo-footer"><a href="{/ite/@web}" target="_blank"><img class="logo"
                                src="https://www.edix.com/es/wp-content/themes/edix/images/modules/edx_logo_edix.svg" /></a>
                    </div>
                    <div>
                        <h3>Contacto</h3>
                        <p>Grupo: <xsl:value-of select="/ite/empresa" /></p>
                        <p>Teléfono: <xsl:value-of select="/ite/telefono" /></p>
                    </div>

                    <div>
                        <h3>Direccion</h3>
                        <p>Directora: <xsl:value-of select="/ite/director/nombre" /></p>
                        <p>Despacho: <xsl:value-of select="/ite/director/despacho" /></p>
                        <p>Jefe de estudios: <xsl:value-of select="/ite/jefe_estudios/nombre" /></p>
                        <p>Despacho: <xsl:value-of select="/ite/jefe_estudios/despacho" /></p>
                    </div>

                    <div>
                        <h3>Formulario:</h3>
                        <form action="">
                            <div>
                                <div class="form-element">
                                    <label for="fname">Nombre</label>
                                    <input type="text" name="fname" id="fname" />

                                    <label for="lname">Apellido</label>
                                    <input type="text" name="lname" id="lname" />
                                </div>
                            </div>
                            <div>
                                <div class="form-element">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" id="email" />
                                    <label for="tel:744555888">Teléfono</label>
                                    <input type="tel" name="tel" id="tel" />
                                </div>
                            </div>
                        </form>
                        <button type="button" class="btn">Enviar</button>
                    </div>
                </footer>
            </div>
        </body>

        </html>

    </xsl:template>
</xsl:stylesheet>
