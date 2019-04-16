<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="xml" indent="yes"/> -->
    <xsl:template match="/">
      <html>
       <head>
    <title>Hi there</title>
    </head>
        <body>
          <h2>My BD</h2>
          <table border="1">
            <tr bgcolor="#9acd32">
              <td>Username</td>
              <td>Second name</td>
              <td>UserID</td>
            </tr>
            <xsl:for-each select="USERS-DOCUMENTS-CHANGE_HISTORY-OFFLINE_PRESENTATION/USERS/USER">
              <tr>
                <th>
                  <xsl:value-of select="NAME/FIRST_NAME"/>
                </th>
                <th>
                  <xsl:value-of select="NAME/SURNAME"/>
                </th>
                <th>
                  <xsl:value-of select="UID"/>
                </th>
              </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
