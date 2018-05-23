<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/cartelera">
        <html>
            <head>
                <title>XML</title>
                <link rel="stylesheet" type="text/css" href="Peliculas.css"/>
            </head>
            <body>
                <xsl:element name="header">
                    <xsl:attribute name="class">logo</xsl:attribute>
                    <a href="../index.html"><img src="../img/logo.png"/></a>
                </xsl:element>

                <xsl:element name="nav">
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li class="active"><a href="#">XML</a></li>
                        <li><a href="../pages/map.html">Map</a></li>
                        <li><a href="../pages/about.html">About Us</a></li>
                        <li><a href="../pages/contact.html">Contact</a></li>
                        <li class="searchbar">
                            <div>
                                <form action="http://www.google.es/search">
                                    <input type="text" placeholder="Search on Google..." name="q"/>
                                </form>
                            </div>
                        </li>
                    </ul>
                </xsl:element>

                <h1>CARTELERA</h1>
                <div class="cartelera">
                    <xsl:for-each select="pelicula">
                        <div class="pelicula">
                            <h3><xsl:value-of select="titulo"/><br/>(<xsl:value-of select="año"/>)</h3>
                            <h5><xsl:value-of select="tituloOriginal"/></h5>
                            <div class="imagen">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">Poster</xsl:attribute>
                                </xsl:element>
                                <xsl:element name="a">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="trailer"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="target">_blank</xsl:attribute>
                                    <xsl:attribute name="class">imghover</xsl:attribute>
                                    <div class="text">Ver Trailer</div>
                                </xsl:element>
                            </div>

                            <table>
                                <tr>
                                    <th>Pais:</th>
                                    <td><xsl:value-of select="pais"/></td>
                                </tr>
                                <tr>
                                    <th>Duración:</th>
                                    <td><xsl:value-of select="duracion"/> min</td>
                                </tr>
                                <tr>
                                    <th>Director:</th>
                                    <td><xsl:value-of select="director"/></td>
                                </tr>
                                <tr>
                                    <th>Reparto:</th>
                                    <td>
                                        <xsl:for-each select="reparto/actor">
                                            <xsl:value-of select="."/><br/>
                                        </xsl:for-each>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Clasificación:</th>
                                    <td><xsl:value-of select="clasificacion"/></td>
                                </tr>
                            </table>

                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="web"/>
                                </xsl:attribute>
                                <xsl:attribute name="class">web</xsl:attribute>
                                Web Oficial
                            </xsl:element>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>