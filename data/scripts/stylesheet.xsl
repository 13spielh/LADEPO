<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.w3.org/2001/sw/DataAccess/rf1/result" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:t="http://www.tei-c.org/ns/1.0" xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:dc="http://purl.org/dc/elements/1.1/">

    <xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>

    <xsl:template name="content" match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <meta name="keywords"
                    content="template, GAMS, repository, digital, archive, edition"/>
                <meta name="description"
                    content="Template for projects in GAMS - Geisteswissenschaftliches Asset Management System"/>
                <meta name="publisher"
                    content="Zentrum für Informationsmodellierung - Austrian Centre for Digital Humanities"/>
                <meta name="content-language" content="de"/>
                <title>GAMS - Project Title</title>
                <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
                    rel="stylesheet"/>
                <link rel="stylesheet" type="text/css" href="../css/ladepo.css"/>
                <link href="../css/navbar.css" rel="stylesheet" type="text/css"/>
                <!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="http://gams.uni-graz.at/templates/css/core/iehacks.css" media="screen"/><![endif]-->
                <!--[if lt IE 9]><script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js">//</script><script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js">//</script><![endif]-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
                    //
                </script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js">
                    //
                </script>
                <script src="http://gams.uni-graz.at/templates/js/matchHeight/jquery.matchHeight.js">
                    //
                </script>
                <script>
                    $ (document).ready(function() {
                    $('[data-toggle="tooltip"]').tooltip();
                    });
                </script>
            </head>
            <body>
                <header>
                    <div class="container">
                        <div class="row flex">
                            <div class="col-xs-8">
                                <h1>Lateinische Buchwidmungen der frühen Neuzeit</h1>
                                <h2>Die Widmungsgedichte des Collegium Poetarum und der Sodalitas
                                    Danubiana Vindobonensis.</h2>
                            </div>
                            <div class="col-xs-4">
                                <div class="unilogo">
                                    <div class="language">
                                        <a href="#">DE</a> | <a href="#">EN</a>
                                    </div>
                                    <a href="http://www.uni-graz.at" class="unilogo">
                                        <img class="logoUni"
                                            src="http://gams.uni-graz.at/templates/img/logo_uni_graz_4c.jpg"
                                            height="62" title="Universität Graz"
                                            alt="Universität Graz"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <nav class="navbar navbar-default navbar-static-top" role="navigation" id="nav">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed"
                                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar" xml:space="preserve"/>
                                <span class="icon-bar" xml:space="preserve"/>
                                <span class="icon-bar" xml:space="preserve"/>
                            </button>
                            <a class="navbar-brand hidden-lg hidden-md hidden-sm" href="#"
                                >Navigation</a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="http://glossa.uni-graz.at/context:templates"> Home </a>
                                </li>
                                <li>
                                    <a href="/context:templates.features">Über</a>
                                </li>
                                <li>
                                    <a href="http://glossa.uni-graz.at/context:templates.car">
                                        Autoren</a>
                                </li>
                                <li>
                                    <a
                                        href="http://glossa.uni-graz.at/archive/objects/context:templates/methods/sdef:Context/get?mode=search"
                                        >Analyse</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        Widmungen <span class="caret" xml:space="preserve"/>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="/o:templates.1111">Alle Widmungen</a>
                                        </li>
                                        <li>
                                            <a href="#">Nach Autoren</a>
                                        </li>
                                        <li>
                                            <a href="#">Nach Drucken</a>
                                        </li>
                                        <li role="separator" class="divider" xml:space="preserve"/>
                                        <li>
                                            <a href="#">eigener link</a>
                                        </li>
                                        <li role="separator" class="divider" xml:space="preserve"/>
                                        <li>
                                            <a href="#">noch einer</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <form class="navbar-form navbar-right" role="search" method="get"
                                action="http://glossa.uni-graz.at/search/gsearch">
                                <div class="input-group stylish-input-group">
                                    <input id="query" name="query" type="text"
                                        placeholder="Volltextsuche" onclick="this.select()"
                                        class="form-control"/>
                                    <span class="input-group-addon">
                                        <button type="submit">
                                            <span class="glyphicon glyphicon-search"/>
                                        </button>
                                    </span>
                                    <input type="hidden" name="hitPageSize" value="10"/>
                                    <input type="hidden" name="hitPageStart" value="1"/>
                                    <input type="hidden" name="pid" value="epsg"/>
                                    <input type="hidden" name="search" value="simple"/>
                                    <input type="hidden" name="x2"
                                        value="http://glossa.uni-graz.at/gamsdev/steineel/templates/project/project-search.xsl"
                                    />
                                </div>
                            </form>
                        </div>
                    </div>
                </nav>
                <script type="text/javascript">
                    $('#nav').affix({
                    offset: {
                    top: $('header').height() - $('#nav').height()
                    }
                    });
                </script>
                <main class="container">
                    <section class="row equalheight">
                        <article class="col-md-12" style="margin-bottom:30px;">
                            <div class="panel" style="margin-bottom:0px;">
                                <h2 class="panel-heading"
                                    style="font-weight: bold; font-style: normal;">
                                    <xsl:value-of select="//t:titleStmt/t:title"/>
                                    <span style="float:right;">
                                        <!-- TEI (P5) -->
                                        <a target="blank"
                                            style="padding-right:20px; text-decoration:none;border-bottom:none;">
                                            <xsl:attribute name="href">
                                                <!--       <xsl:value-of select="concat($server, '/archive/objects/')"/> -->
                                                <xsl:value-of select="//t:idno"/>
                                                <xsl:text>/datastreams/TEI_SOURCE/content</xsl:text>
                                            </xsl:attribute>
                                            <img src="../facs/tei.jpg" width="30" height="30"
                                                alt="XML (TEI P5)"/>
                                        </a>
                                        <!-- Druckversion, LaTeX-PDF -->
                                        <a target="blank"
                                            style="padding-right:20px; text-decoration:none;border-bottom:none;">
                                            <xsl:attribute name="href">
                                                <!--          <xsl:value-of select="concat($server, '/archive/objects/')"/> -->

                                                <xsl:value-of select="//t:idno"/>
                                                <xsl:text>/methods/sdef:TEI/getLaTeXPDF</xsl:text>
                                                <!-- <xsl:if test="$mode='interpretation'">
                                    <xsl:text>?mode=interpretation</xsl:text>
                                </xsl:if> -->
                                            </xsl:attribute>
                                            <img src="../facs/pdf_icon.png" width="30" height="30"
                                                alt="Druckversion"/>
                                        </a>
                                    </span>
                                </h2>
                                <!--                 <hr/>
                                    <p class="panel">
                                        <b>Zitiervorschlag: </b>
                                        <xsl:if test="//t:teiHeader//t:titleStmt/t:author">
                                            <xsl:value-of
                                                select="//t:teiHeader//t:titleStmt/t:author"/>
                                            <xsl:text>, </xsl:text>
                                        </xsl:if>

                                        <xsl:choose>
                                            <xsl:when test="contains(//t:titleStmt/t:title, '==')">
                                                <xsl:value-of
                                                  select="substring-before(//t:titleStmt/t:title, '==')"
                                                />
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="//t:titleStmt/t:title"/>
                                            </xsl:otherwise>
                                        </xsl:choose>

                                        <xsl:text>###</xsl:text> -->
                                <!--               <br/>
                                        <xsl:text>Permalink: </xsl:text>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>http:</xsl:text>
                                         <xsl:value-of select="$server"/>
                                                <xsl:text>/</xsl:text>
                                                <xsl:value-of select="//t:idno"/>
                                            </xsl:attribute>
                                            <xsl:text>http:</xsl:text>
                                  <xsl:value-of select="$server"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="//t:idno"/>
                                        </a>
                                        <xsl:text>.</xsl:text>
                                    </p>  -->
                            </div>
                        </article>

                        <!--          <h2 class="panel-heading" style="font-weight: bold; font-style: normal;">
                            <xsl:value-of select="//t:title"/>
                        </h2> -->
                        <article class="col-md-6 equal">
                            <div class="panel">
                                <div class="panel-heading" style="padding-bottom: 0px;">
                                    <h3 class="objekt"> Faksimile </h3>
                                </div>
                                <div class="panel-body" style="padding-top: 0px;">
                                    <div class="panel-image">
                                        <xsl:for-each select="//t:graphic/@url">
                                            <img class="img-responsive">
                                                <xsl:attribute name="src">
                                                  <xsl:text>../</xsl:text>
                                                  <xsl:value-of select="."/>
                                                </xsl:attribute>
                                            </img>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="col-md-6 equal">
                            <div class="panel">
                                <h3 class="objekt">Transkription</h3>
                                <p class="poem">
                                    <xsl:apply-templates select="//t:div[@type = 'text']"/>
                                </p>
                            </div>
                            <div class="panel">
                                <h3 class="objekt">Übersetzung</h3>
                                <p>
                                    <xsl:apply-templates select="//t:div[@type = 'translation']"/>
                                </p>
                            </div>
                        </article>
                        <article class="col-md-6 equal" style="float: right;">
                            <div class="panel">
                                <h3 class="objekt">Metadaten</h3>
                                <table class="table table-condensed">
                                    <tbody>
                                        <tr>
                                            <td class="color">Titel des Gedichts:</td>
                                            <td>
                                                <xsl:value-of
                                                  select="//t:div[@type = 'text']/t:head"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Autor der Gedichts:</td>
                                            <td>
                                                <xsl:variable name="author">
                                                  <xsl:value-of
                                                  select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"
                                                  />
                                                </xsl:variable>
                                                <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/t:persName[@xml:lang = 'de']"/>
                                                <xsl:text> (</xsl:text>
                                                <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/t:persName[@xml:lang = 'la']"/>
                                                <xsl:text>)</xsl:text>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Containerwerk:</td>
                                            <td>
                                                <a>
                                                  <xsl:attribute name="href">
                                                  <xsl:variable name="container">
                                                  <xsl:value-of
                                                  select="//t:sourceDesc/t:ab/t:bibl/substring(@corresp, 11, 9)"
                                                  />
                                                  </xsl:variable>
                                                  <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listBibl/t:bibl[@xml:id = $container]/@ana"
                                                  />
                                                  </xsl:attribute>
                                                  <xsl:variable name="container">
                                                  <xsl:value-of
                                                  select="//t:sourceDesc/t:ab/t:bibl/substring(@corresp, 11, 9)"
                                                  />
                                                  </xsl:variable>
                                                  <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listBibl/t:bibl[@xml:id = $container]"
                                                  />
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Autor des Containerwerks:</td>
                                            <td>
                                                <xsl:variable name="authorc">
                                                  <xsl:value-of
                                                  select="//t:ab/t:bibl/substring(@corresp, 11, 4)"
                                                  />
                                                </xsl:variable>
                                                <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $authorc]/t:persName[@xml:lang = 'de']"/>
                                                <xsl:text> (</xsl:text>
                                                <xsl:value-of
                                                  select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $authorc]/t:persName[@xml:lang = 'la']"/>
                                                <xsl:text>)</xsl:text>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Gattung des Containerwerks:</td>
                                            <td>
                                                <xsl:for-each
                                                  select="//t:list[@type = 'keywords_genre']/t:item">
                                                  <xsl:value-of select="."/>
                                                  <xsl:if test="position() != last()">
                                                  <xsl:text>, </xsl:text>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Erscheinungsjahr:</td>
                                            <td>
                                                <xsl:value-of
                                                  select="//t:div/substring(@source, 16, 4)"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="color">Verschlagwortung:</td>
                                            <td>
                                                <xsl:for-each
                                                  select="//t:textClass/t:keywords/t:term">
                                                  <xsl:value-of select="."/>
                                                  <xsl:if test="position() != last()">
                                                  <xsl:text>, </xsl:text>
                                                  </xsl:if>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </article>
                    </section>
                </main>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//t:div[@type = 'text']/t:head">
        <h4>
            <xsl:apply-templates/>
        </h4>
    </xsl:template>
    <xsl:template match="//t:div[@type = 'text']/t:lg/t:l">
        <p class="line">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="//t:div[@type = 'text']/t:lg/t:lg/t:l">
        <p class="line">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="//t:div[@type = 'translation']/t:head">
        <h5>
            <xsl:apply-templates/>
        </h5>
    </xsl:template>
    <xsl:template match="//t:div[@type = 'translation']/t:p">
        <p class="translation">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="t:persName">
        <a style="text-decoration: none; color: #336354;" href="#" data-toggle="tooltip">
            <xsl:attribute name="title">
                <xsl:variable name="persName">
                    <xsl:value-of select="./substring(@ref, 2, 4)"/>
                </xsl:variable>
                <xsl:value-of
                    select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $persName]/t:persName[@xml:lang = 'de']"
                />
            </xsl:attribute>
            <xsl:value-of select="."/>
        </a>
    </xsl:template>
    <xsl:template match="t:placeName">
        <a style="text-decoration: none; color: #336354;" href="#" data-toggle="tooltip">
            <xsl:attribute name="title">
                <xsl:variable name="placeName">
                    <xsl:value-of select="./substring(@ref, 2, 4)"/>
                </xsl:variable>
                <xsl:value-of
                    select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPlace/t:place[@xml:id = $placeName]/t:placeName[@xml:lang = 'de']"
                />
            </xsl:attribute>
            <xsl:value-of select="."/>
        </a>
    </xsl:template>
</xsl:stylesheet>
