<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html lang="en">
    <title>건강 정보 시스템 </title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <body>

    <!-- Navbar (sit on top) -->
    <div class="w3-top" >
      <div class="w3-bar w3-wide w3-padding w3-card" style="background-color:'#b3e099';">
        <a href="#home" class="w3-bar-item w3-button"><h1>Health Management System</h1></a>
        <!-- Float links to the right. Hide them on small screens --> 
        <div class="w3-right w3-hide-small">
          <a href="#introduction" class="w3-bar-item w3-button"><h2>소개</h2></a>
          <a href="#part" class="w3-bar-item w3-button"><h2>부위별</h2></a>
          <a href="#department" class="w3-bar-item w3-button"><h2>진료과별</h2></a>
        </div>
      </div>
    </div>

    <!-- Header -->
    <header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
      <div class="w3-display-middle w3-margin-top w3-center">
      </div>
    </header>

    <!-- Page content -->
    <div class="w3-content w3-padding" style="max-width:1564px">
        <br/><br/><br/>
        <p align="center"><iframe width="924" height="520" src="https://www.youtube.com/embed/9fjPLLt2jHE?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"/></p>
      
      <!-- Introductiont Section -->
      <div class="w3-container w3-padding-32" id="introduction">
        <h1 class="w3-border-bottom w3-border-light-grey w3-padding-16"><b>소개</b></h1>
      </div>
      <div class="w3-row-padding">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <div class="w3-display-container">
            <img src="image/logo.jpg" alt="House" style="width:100%"/>
          </div>
        </div>
        <p><h1>Health Management System</h1><h2>health management system은 다양한 질병 정보의 검색 및 파악의 용이성을 증가시켜 현대인의 건강을 개선하기 위한 플랫폼입니다. 요즈음 바쁜 현대인은 자신의 건강 상태 자각하지 못하는 경우가 많고 어떠한 증상이 나타날 때 이것이 어떤 질병을 발병하고 초래하는 지에 대해 정보를 얻는 것에 어려움이 있습니다. 우리의 건강 관리 플랫폼을 통해 다양한 질병 정보를 부위 또는 진료과 별 분류로 탐색 가능하며 더 나아가 자신을 건강 상태를 쉽게 확인할 수 있습니다.
          <br/><br/>김수정(crystar2402@cu.ac.kr) 임찬아(ami159@cu.ac.kr) 조혜원(johyewon29@cu.ac.kr)</h2></p>
      </div>

      <!-- Part Section -->
      <!-- Disease Section -->
      <div class="w3-container w3-padding-32" id="part">
        <h1 class="w3-border-bottom w3-border-light-grey w3-padding-16"><b>부위별</b></h1>
      </div>
      
      <!-- disease category -->
      <!-- Row 1 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id00').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#edffba';"><h2>가슴</h2></button></p>
          <div id="id00" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4" >
              <header class="w3-container" style="background-color:'#a7d18e';">
                <span onclick="document.getElementById('id00').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[가슴]</h2> <!--수정-->
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='가슴'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#edffba';"><h2>골반</h2></button></p>
          <div id="id01" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[골반]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='골반'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
            <p><button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#edffba';"><h2>귀</h2></button></p>
          <div id="id02" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[귀]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='귀'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
            <p><button onclick="document.getElementById('id03').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#edffba';"><h2>눈</h2></button></p>
          <div id="id03" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[눈]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='눈'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 2 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
            <p><button onclick="document.getElementById('id10').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#e2ffba';"><h2>다리</h2></button></p>
          <div id="id10" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id10').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[다리]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='다리'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
            <p><button onclick="document.getElementById('id11').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#e2ffba';"><h2>등/허리</h2></button></p>
          <div id="id11" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id11').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[등/허리]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='등/허리'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id12').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#e2ffba';"><h2>머리</h2></button></p>
          <div id="id12" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id12').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[머리]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='머리'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id13').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#e2ffba';"><h2>목</h2></button></p>
          <div id="id13" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id13').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[목]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='목'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 3 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id20').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#ceffba';"><h2>발</h2></button></p>
          <div id="id20" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id20').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[발]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='발'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id21').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#ceffba';"><h2>배</h2></button></p>
          <div id="id21" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id21').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[배]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='배'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id22').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#ceffba';"><h2>생식기</h2></button></p>
          <div id="id22" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id22').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[생식기]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='생식기'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id23').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#ceffba';"><h2>손</h2></button></p>
          <div id="id23" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id23').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[손]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='손'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 4 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id30').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#bbffba';"><h2>얼굴</h2></button></p>
          <div id="id30" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id30').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[얼굴]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='얼굴'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id31').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#bbffba';"><h2>엉덩이</h2></button></p>
          <div id="id31" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id31').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[엉덩이]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='엉덩이'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id32').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#bbffba';"><h2>유방</h2></button></p>
          <div id="id32" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id32').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[유방]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='유방'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id33').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#bbffba';"><h2>입</h2></button></p>
          <div id="id33" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id33').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[입]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='입'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      
      <!-- Row 5 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id40').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a0dba9';"><h2>전신</h2></button></p>
          <div id="id40" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id40').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[전신]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='전신'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('i41').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a0dba9';"><h2>코</h2></button></p>
          <div id="id41" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id41').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[코]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='코'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id42').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a0dba9';"><h2>팔</h2></button></p>
          <div id="id42" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id42').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[팔]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='팔'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id43').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a0dba9';"><h2>피부</h2></button></p>
          <div id="id43" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#a7d18e';"> 
                <span onclick="document.getElementById('id43').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[피부]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@부위별='피부'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
       </div>

      <!-- Department category -->
      <div class="w3-container w3-padding-32" id="department">
        <h1 class="w3-border-bottom w3-border-light-grey w3-padding-16"><b>진료과별</b></h1>
      </div>

      <!-- Department Section -->
      <!-- Row 1 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id50').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#c3faf4';"><h2>가정의학과</h2></button></p>
          <div id="id50" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id50').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[가정의학과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='가정의학과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id51').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#c3faf4';"><h2>감염내과</h2></button></p>
          <div id="id51" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id51').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[감염내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='감염내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id52').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#c3faf4';"><h2>내분비내과</h2></button></p>
          <div id="id52" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id52').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[내분비내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='내분비내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id53').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#c3faf4';"><h2>노년내과</h2></button></p>
          <div id="id53" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id53').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[노년내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='노년내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 2 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id60').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b6faf3';"><h2>류마티스내과</h2></button></p>
          <div id="id60" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id60').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[류마티스내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='류마티스내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id61').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b6faf3';"><h2>방사선종양학과</h2></button></p>
          <div id="id61" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-containerl" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id61').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[방사선종양학과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='방사선종양학과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id62').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b6faf3';"><h2>비뇨의학과</h2></button></p>
          <div id="id62" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id62').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[비뇨의학과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='비뇨의학과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id63').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b6faf3';"><h2>산부인과</h2></button></p>
          <div id="id63" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id63').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[산부인과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='산부인과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 3 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id70').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b4edf0';"><h2>성형외과</h2></button></p>
          <div id="id70" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id70').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[성형외과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='성형외과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id71').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b4edf0';"><h3>소아내분비대사과</h3></button></p>
          <div id="id71" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id71').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[소아내분비대사과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='소아내분비대사과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id72').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b4edf0';"><h2>소화기내과</h2></button></p>
          <div id="id72" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id72').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[소화기내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='소화기내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id73').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b4edf0';"><h2>신경과</h2></button></p>
          <div id="id73" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id73').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[신경과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='신경과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 4 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id80').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b8e7f2';"><h2>신경외과</h2></button></p>
          <div id="id80" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id80').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[신경외과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='신경외과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id81').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b8e7f2';"><h2>신장내과</h2></button></p>
          <div id="id81" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id81').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[신장내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='신장내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id82').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b8e7f2';"><h2>심장내과</h2></button></p>
          <div id="id82" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id82').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[심장내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='심장내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id83').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#b8e7f2';"><h2>안과</h2></button></p>
          <div id="id83" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id83').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[안과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='안과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      
      <!-- Row 5 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id90').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1c8d4';"><h2>이비인후과</h2></button></p>
          <div id="id90" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id90').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[이비인후과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='이비인후과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id91').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1c8d4';"><h2>재활의학과</h2></button></p>
          <div id="id91" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id91').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[재활의학과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='재활의학과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id92').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1c8d4';"><h2>정신건강의학과</h2></button></p>
          <div id="id92" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id92').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[정신건강의학과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='정신건강의학과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>

        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id93').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1c8d4';"><h2>정형외과</h2></button></p>
          <div id="id93" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id93').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[정형외과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='정형외과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 6 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id100').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1add4';"><h2>종양내과</h2></button></p>
          <div id="id100" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id100').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[종양내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='종양내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id101').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1add4';"><h2>치과</h2></button></p>
          <div id="id101" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id101').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[치과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='치과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id102').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1add4';"><h2>피부과</h2></button></p>
          <div id="id102" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id102').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[피부과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='피부과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id103').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#a1add4';"><h2>혈관외과</h2></button></p>
          <div id="id103" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id103').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[혈관외과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='혈관외과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Row 7 -->
      <div class="w3-row-padding w3-grayscale">
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id110').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#939bbf';"><h2>호흡기내과</h2></button></p>
          <div id="id110" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id110').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[호흡기내과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='호흡기내과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
        
        <div class="w3-col l3 m6 w3-margin-bottom">
          <p><button onclick="document.getElementById('id111').style.display='block'" class="w3-button w3-block" style="width:70%; height:10%; background-color:'#939bbf';"><h2>흉부외과</h2></button></p>
          <div id="id111" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content w3-card-4">
              <header class="w3-container" style="background-color:'#b8e7f2';"> 
                <span onclick="document.getElementById('id111').style.display='none'" class="w3-button w3-large w3-display-topright">X</span>
                <h2 align="center">[흉부외과]</h2>
              </header>
              <div class="w3-container">
                <xsl:for-each select="건강정보시스템/질병/분류">
                  <xsl:if test="@진료과별='흉부외과'">
                    <div class="w3-margin-bottom">
                      <p align="center"><img><xsl:attribute name="src"><xsl:value-of select="../img"/></xsl:attribute><xsl:attribute name="height">350</xsl:attribute><xsl:attribute name="width">500</xsl:attribute></img></p>
                      <h3 align="center"><xsl:value-of select="../질환명[@language='kor']"/> (<xsl:value-of select="../질환명[@language='eng']"/>)</h3>
                      <p class="w3-opacity" align="center">증상 : <xsl:value-of select="../증상"/></p>
                      <p align="center"><xsl:value-of select="../정의"/></p>
                      <hr/>
                    </div>
                  </xsl:if>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <!-- Image of location/map -->

    <!-- End page content -->
    </div>


    <!-- Footer -->
    <footer class="w3-center w3-black w3-padding-16">
      <p>Health Management System<br/>crystar2402@cu.ac.kr   ami159@cu.ac.kr    johyewon29@cu.ac.kr</p>
    </footer>

    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
