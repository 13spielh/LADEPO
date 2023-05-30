<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" exclude-result-prefixes="xs"
    version="2.0">

    <xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>

    <xsl:template name="content" match="/">
        <rdf:RDF xml:lang="en" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
            xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
            xmlns:gndo="https://d-nb.info/standards/elementset/gnd#"
            xmlns:viaf="http://viaf.org/viaf/terms#" xmlns:fabio="http://purl.org/spar/fabio#"
            xmlns:frbr="http://purl.org/vocab/frbr/core#">
            <rdf:Description>
                <xsl:attribute name="rdf:about">
                    <xsl:text>#</xsl:text>
                    <xsl:value-of select="//t:div/@xml:id"/>
                </xsl:attribute>
                <gndo:language>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="//t:language/@ana"/>
                    </xsl:attribute>
                </gndo:language>
                <rdf:type>
                    <xsl:attribute name="rdf:resource">
                        <xsl:text>http://purl.org/spar/fabio/Poem</xsl:text>
                    </xsl:attribute>
                </rdf:type>
                <gndo:author>
                    <xsl:variable name="author">
                        <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"
                        />
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of
                            select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"
                        />
                    </xsl:attribute>
                </gndo:author>
                <gndo:broaderTermPartitive>
                    <xsl:attribute name="rdf:resource">
                        <xsl:text>#</xsl:text>
                        <xsl:value-of select="//t:bibl/substring(@corresp, 11, 9)"/>
                    </xsl:attribute>
                </gndo:broaderTermPartitive>
            </rdf:Description>

            <rdf:Description>
                <xsl:attribute name="rdf:about">
                    <xsl:text>#</xsl:text>
                    <xsl:value-of select="//t:bibl/substring(@corresp, 11, 9)"/>
                </xsl:attribute>
                <gndo:language>
                    <xsl:variable name="lang">
                        <xsl:value-of select="//t:ab/t:bibl/@xml:lang"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="//t:language[@ident = $lang]/@ana"/>
                    </xsl:attribute>
                </gndo:language>
                <rdf:type>
                    <xsl:attribute name="rdf:resource">
                        <xsl:text>http://purl.org/spar/fabio/PrintObject</xsl:text>
                    </xsl:attribute>
                </rdf:type>
                <gndo:author>
                    <xsl:variable name="author_cont">
                        <xsl:value-of select="//t:ab/t:bibl/substring(@corresp, 11, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of
                            select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"
                        />
                    </xsl:attribute>
                </gndo:author>
                <gndo:contributingPerson>
                    <xsl:variable name="author">
                        <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"
                        />
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of
                            select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"
                        />
                    </xsl:attribute>
                </gndo:contributingPerson>
            </rdf:Description>

            <rdf:Description>
                <xsl:variable name="author_cont">
                    <xsl:value-of select="//t:ab/t:bibl/substring(@corresp, 11, 4)"/>
                </xsl:variable>
                <xsl:attribute name="rdf:about">
                    <xsl:value-of
                        select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"
                    />
                </xsl:attribute>
                <gndo:acquaintanceshipOrFriendship>
                    <xsl:variable name="author">
                        <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"
                        />
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of
                            select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"
                        />
                    </xsl:attribute>
                </gndo:acquaintanceshipOrFriendship>
                <xsl:variable name="author_xml">
                    <xsl:value-of
                        select="concat(document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana, '/viaf.xml')"
                    />
                </xsl:variable>
                <xsl:for-each
                    select="document($author_xml)//viaf:nationalityOfEntity/viaf:data/viaf:text">
                    <viaf:nationalityOfEntity>
                        <xsl:attribute name="rdf:resource">
                            <xsl:text>https://www.iso.org/obp/ui/#iso:code:3166:</xsl:text>
                            <xsl:apply-templates/>
                        </xsl:attribute>
                    </viaf:nationalityOfEntity>
                </xsl:for-each>
                <xsl:variable name="author_xml">
                    <xsl:value-of
                        select="concat(document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana, '/viaf.xml')"
                    />
                </xsl:variable>
                <xsl:for-each
                    select="document($author_xml)//viaf:languageOfEntity/viaf:data/viaf:text">
                    <viaf:languageOfEntity>
                        <xsl:attribute name="rdf:resource">
                            <xsl:text>https://iso639-3.sil.org/code/</xsl:text>
                            <xsl:apply-templates/>
                        </xsl:attribute>
                    </viaf:languageOfEntity>
                </xsl:for-each>
            </rdf:Description>

            <rdf:Description>
                <xsl:variable name="author">
                    <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                </xsl:variable>
                <xsl:attribute name="rdf:about">
                    <xsl:value-of
                        select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"
                    />
                </xsl:attribute>
                <gndo:acquaintanceshipOrFriendship>
                    <xsl:variable name="author_cont">
                        <xsl:value-of select="//t:ab/t:bibl/substring(@corresp, 11, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of
                            select="document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"
                        />
                    </xsl:attribute>
                </gndo:acquaintanceshipOrFriendship>
                <xsl:variable name="author_xml">
                    <xsl:value-of
                        select="concat(document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana, '/viaf.xml')"
                    />
                </xsl:variable>
                <xsl:for-each
                    select="document($author_xml)//viaf:nationalityOfEntity/viaf:data/viaf:text">
                    <viaf:nationalityOfEntity>
                        <xsl:attribute name="rdf:resource">
                            <xsl:text>https://www.iso.org/obp/ui/#iso:code:3166:</xsl:text>
                            <xsl:apply-templates/>
                        </xsl:attribute>
                    </viaf:nationalityOfEntity>
                </xsl:for-each>
                <xsl:variable name="author_xml">
                    <xsl:value-of
                        select="concat(document('../sources/lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana, '/viaf.xml')"
                    />
                </xsl:variable>
                <xsl:for-each
                    select="document($author_xml)//viaf:languageOfEntity/viaf:data/viaf:text">
                    <viaf:languageOfEntity>
                        <xsl:attribute name="rdf:resource">
                            <xsl:text>https://iso639-3.sil.org/code/</xsl:text>
                            <xsl:apply-templates/>
                        </xsl:attribute>
                    </viaf:languageOfEntity>
                </xsl:for-each>
            </rdf:Description>
        </rdf:RDF>
    </xsl:template>
</xsl:stylesheet>
