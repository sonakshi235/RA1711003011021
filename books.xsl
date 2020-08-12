<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
<xsl:template match="/">

<html>
 <head>
 <title> books </title></head>
 <body>
 <table border="1" bgcolor="#4D1E04 " >
 <tr style="color:#D9D9D9 "><th>Title</th>
 <th> Author </th>
 <th> Genre </th>
 <th> Copyright </th>
 <th> Edition </th>
 <th> ISBN </th>
 <th>publisher</th>
 <th>price</th>
 </tr>
<xsl:for-each select="/books/book">
<tr>
<td bgcolor="#FFAD18"><xsl:value-of select="title"/></td>
<td bgcolor="#15317E" style="color:#D9D9D9 "> <b> <xsl:value-of select="author"/> </b> </td>
<td bgcolor="#FFAD18" ><xsl:value-of select="genre"/></td>
<td bgcolor="#FFAD18"><xsl:value-of select="copyright"/></td>
<td bgcolor="#FFAD18"><xsl:value-of select="edition" /></td>
<td bgcolor="#FFAD18"><xsl:value-of select="isbn" /></td>
<td bgcolor="#FFAD18"><xsl:value-of select="publisher"/></td>
<td bgcolor="#FFAD18"><xsl:value-of select="price" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 
