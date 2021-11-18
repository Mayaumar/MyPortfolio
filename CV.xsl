<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <div style="border: 1px solid black; background-color: #A0142E; text-align:center;">
        <h1 style="font-size:40px">My Curriculum Vitae</h1></div><br/>
        <div style="font-size:32px; text-align: left; font-family: Times New Roman;">
        <xsl:for-each select="myCV/title">
          <xsl:value-of select="name"/>
        </xsl:for-each>
      </div><br/>
      <div style="font-size:20px; text-align: left;">
        <xsl:for-each select="myCV/myDetails">
    <b>    <xsl:text>Date of Birth:</xsl:text></b>
        <xsl:value-of select="dateOfBirth"/><br/>
    <b>    <xsl:text>Address: </xsl:text> </b>
        <xsl:value-of select="address"/><br/>
    <b>    <xsl:text>Email: </xsl:text></b>
        <xsl:value-of select="email"/><br/>
    <b>    <xsl:text>Phone No: </xsl:text></b>
        <xsl:value-of select="phoneNumber"/>

        </xsl:for-each>
      </div>
      <hr />
      <h2>Work Experience</h2>
      <xsl:for-each select="myCV/workExperience/experience">
      <b>  <xsl:text>Time Period: </xsl:text></b>
        <xsl:value-of select="timePeriod"/><br/>
      <b>  <xsl:text>Job Title: </xsl:text></b>
        <xsl:value-of select="JobTitle"/><br/>
      <b>  <xsl:text>Description: </xsl:text></b>
        <xsl:value-of select="briefDescription"/><br/>
      <b>  <xsl:text>Responsibilities: </xsl:text></b>
        <xsl:value-of select="jobDescription"/><br/>
      </xsl:for-each>
      <hr />
      <h2>Education Level</h2>
      <xsl:for-each select="myCV/educationLevels/Level"><br/>
        <b>  <xsl:text>Time Frame: </xsl:text></b>
          <xsl:value-of select="timeframe"/><br/>
        <b>  <xsl:text>Institution's Name </xsl:text></b>
          <xsl:value-of select="institutionName"/><br/>
        <b>  <xsl:text>Education Level </xsl:text></b>
          <xsl:value-of select="educationLevel"/><br/>
        </xsl:for-each>
        <hr />
        <xsl:for-each select="myCV/skills">
            <h2>Skills</h2>
            <xsl:value-of select="skillName"/><br/>
        </xsl:for-each>
        <hr />
        <xsl:for-each select="myCV/Hobbies">
            <h2>Hobbies</h2>
            <ul>
        <li> <xsl:value-of select="hobbieName"/><br/></li>
        <li> <xsl:value-of select="hobbieName1"/><br/></li>
      </ul>

          </xsl:for-each>
          <hr />
          <xsl:for-each select="myCV/Languages">
              <h2>Languages</h2>
              <ul>
          <li> <xsl:value-of select="LanguageName"/><br/></li>
          <li> <xsl:value-of select="LanguageName1"/><br/></li>
          <li> <xsl:value-of select="LanguageName2"/><br/></li>
              </ul>

          </xsl:for-each>










      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
