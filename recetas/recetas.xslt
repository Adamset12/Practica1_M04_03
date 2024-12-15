<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes"><![CDATA[<!DOCTYPE html>]]></xsl:text>
        <html>
        <head>
            <meta charset="UTF-8"/>
            <title>DELICIAS KITCHEN</title>
            <link rel="stylesheet" href="../styles/style_receta.css"/>
        </head>
        <body>
            <header class="menu">
                <div class="title">
                    <img src="../images/logo.png"/>
                </div>
                <hr/>
                <div class="buttons">
                    <a href="../index.html"><button>INICIO</button></a>
                    <a href="../sobremi.html"><button>SOBRE MÍ</button></a>
                    <a href="../recetas.html"><button>RECETAS</button></a>
                    <a href="../contacto.html"><button>CONTACTO</button></a>
                    <a href="../otras-cosas.html"><button>OTRAS COSAS</button></a>
                    <a>Alex y Adam</a>
                </div>
                <hr/>
            </header>
            <div class="main-container">
                <xsl:for-each select="//receta">
                    <div class="receta-contenido">
                        <div class="receta-texto">
                            <h1><xsl:value-of select="titulo"/></h1>
                            <h2>Ingredientes</h2>
                            <p>
                                <xsl:for-each select="ingredientes/ingrediente">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                            </p>
                            <h2>Preparación</h2>
                            <xsl:for-each select="preparacion/paso">
                                <p>
                                    <xsl:number value="position()" format="1."/> <xsl:value-of select="." />
                                </p>
                            </xsl:for-each>
                            <div class="receta-detalles">
                                <p><strong>Dificultad:</strong> <xsl:value-of select="detalles/dificultad"/></p>
                                <p><strong>Cocina:</strong> <xsl:value-of select="detalles/cocina"/></p>
                                <p><strong>Vegetariana:</strong> <xsl:value-of select="detalles/vegetariana"/></p>
                                <p><strong>Anticáncer:</strong> <xsl:value-of select="detalles/anticancer"/></p>
                                <p><strong>Celiacos:</strong> <xsl:value-of select="detalles/celiacos"/></p>
                            </div>
                        </div>
                        <div class="receta-imagen">
                            <img src="{imagen}" alt="{titulo}"/>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
            <div class="links">
                <button>FACEBOOK</button>
                <button>TWITTER</button>
                <button>INSTAGRAM</button>
                <button>PINTEREST</button>
                <button>EMAIL</button>
                <button>RSS</button>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
