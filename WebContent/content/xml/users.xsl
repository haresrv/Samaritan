<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

        <body>
            <center>
                <h2>Users</h2>
            </center>
            <center>
                <table border="2" style="padding: 20px; border: none">
                    <tr>
                        <th style="padding: 20px;">Username</th>
                        <th style="padding: 20px;">Email</th>
                        <th style="padding: 20px;">Join Date</th>
                        <th style="padding: 20px;">Role</th>
                        <th style="padding: 20px;">Status</th>
                        <th style="padding: 20px;">Donations</th>
                        <th style="padding: 20px;">Payment Details</th>
                    </tr>
                    <xsl:for-each select="users/user">
                        <tr>
                            <td style="padding: 20px;">
                                <xsl:value-of select="username" />
                            </td>
                            <td style="padding: 20px;">
                                <xsl:value-of select="email" />
                            </td>
                            <td style="padding: 20px;">
                                <xsl:value-of select="joined" />
                            </td>
                            <td style="padding: 20px;">
                                <xsl:value-of select="role" />
                            </td>
                            <td style="padding: 20px;">
                                <xsl:value-of select="status" />
                            </td>
                            <td style="padding: 20px;">
                                <xsl:value-of select="donations" />
                            </td>
                            <td style="padding: 20px;">
                                <table>
                                    <tr>
                                        <th>Amount</th>
                                        <th>Date</th>
                                    </tr>
                                    <xsl:for-each select="payments/payment">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="amount" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="date" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </center>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>