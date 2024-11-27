<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Órarend</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 5px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Órarend</h1>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Típus</th>
                            <th>Tárgy</th>
                            <th>Nap</th>
                            <th>Időpont</th>
                            <th>Helyszín</th>
                            <th>Oktató</th>
                            <th>Szak</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="DA_orarend/ora">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="@tipus"/></td>
                                <td><xsl:value-of select="targy"/></td>
                                <td><xsl:value-of select="idopont/nap"/></td>
                                <td>
                                    <xsl:value-of select="idopont/tol"/>:00 -
                                    <xsl:value-of select="idopont/ig"/>:00
                                </td>
                                <td><xsl:value-of select="helyszin"/></td>
                                <td><xsl:value-of select="oktato"/></td>
                                <td><xsl:value-of select="szak"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
