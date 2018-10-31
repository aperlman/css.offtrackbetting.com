<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/rss">
    <html>
    <head>
     <link href="https://css.offtrackbetting.com/css/base.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
     <h1>
      <xsl:element name="a">
       <xsl:attribute name="href">
        <xsl:value-of select="channel/link" />
       </xsl:attribute>
       <xsl:value-of select="channel/title" />
      </xsl:element>
     </h1>
     <div id="container">
      <div class="gradient-container-border">
       <div align="center">
	<a href="/horse_betting_news/archive.html" title="Horse Racing News"><img 
		src="https://img2.offtrackbetting.com/images/otb-headlines.jpg" alt="Horse Racing Betting News"
		width="660" height="250" border="0"/></a></div> 
       <div class="spacerhalf"></div>
       <div class="gradient-container">
        <h2><xsl:value-of select="channel/description" /></h2>
        <dl style="padding-right:5em;padding-left:2em">
         <xsl:for-each select="channel/item">
          <h3 class="plain-header archive">
           <xsl:element name="a">
            <xsl:attribute name="href">
             <xsl:value-of select="link"/>
            </xsl:attribute>
            <b><xsl:value-of select="title"/></b>
           </xsl:element>
          </h3>
	  <p style="font-size: 1em;padding:0 1em 0 1em">
           <xsl:value-of select="description" />
	  </p>
	  <hr style="height:2px;border-width:0;background-color:gray" />
         </xsl:for-each>
        </dl>
       </div>
      </div>
     </div>
     <div id="footer">
      <xsl:value-of select="channel/copyright" />
     </div>
    </body>
   </html>
</xsl:template>
</xsl:stylesheet>
