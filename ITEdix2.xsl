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
                </main>

            </body>


        </html>
    </xsl:template>
</xsl:stylesheet>
