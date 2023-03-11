<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    exclude-result-prefixes="xs"
    version="2.0">
    
<xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
  
<xsl:template name="content" match="/">
    <rdf:RDF xml:lang="en" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
        xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
        xmlns:gndo="https://d-nb.info/standards/elementset/gnd#" xmlns:ns1="http://viaf.org/viaf/terms#">
        <rdf:Description> 
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:div[@xml:id]/@xml:id"/>
            </xsl:attribute>
            <gndo:language>
                <rdf:Description>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="//t:language/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:language>
        </rdf:Description>
        
        <rdf:Description> 
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:div[@xml:id]/@xml:id"/>
            </xsl:attribute>
            <gndo:author>
                <rdf:Description>
                    <xsl:variable name="author">
                        <xsl:value-of
                            select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:author>
        </rdf:Description>
        
        <rdf:Description> 
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:div[@xml:id]/@xml:id"/>
            </xsl:attribute>
            <gndo:broaderTermPartitive>
                <rdf:Description>
                    <xsl:attribute name="rdf:about">
                        <xsl:text>#</xsl:text>
                        <xsl:value-of select="//t:bibl/@xml:id"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:broaderTermPartitive>
        </rdf:Description>
        
        <rdf:Description> 
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:bibl/@xml:id"/>
            </xsl:attribute>
            <gndo:language>
                <rdf:Description>
                    <xsl:variable name="lang">
                        <xsl:value-of select="//t:ab/t:bibl/@xml:lang"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="//t:language[@ident = $lang]/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:language>
        </rdf:Description>
        
        <rdf:Description>
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:bibl/@xml:id"/>
            </xsl:attribute>
            <gndo:author>
                <rdf:Description>
                    <xsl:variable name="author_cont">
                        <xsl:value-of select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:author>
        </rdf:Description>
        
        <rdf:Description>
            <xsl:attribute name="rdf:about">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="//t:bibl/@xml:id"/>
            </xsl:attribute>
            <gndo:contributingPerson>
                <rdf:Description>
                    <xsl:variable name="author">
                        <xsl:value-of
                            select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:contributingPerson>
        </rdf:Description>
        
        <rdf:Description>
            <xsl:variable name="author_cont">
                <xsl:value-of select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
            </xsl:variable>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"/>
            </xsl:attribute>
            <gndo:acquaintanceshipOrFriendship>
                <rdf:Description>
                    <xsl:variable name="author">
                        <xsl:value-of
                            select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"/>
                    </xsl:attribute>
                </rdf:Description>
            </gndo:acquaintanceshipOrFriendship>
        </rdf:Description>
   
        <rdf:Description>
            <xsl:variable name="author_cont">
                <xsl:value-of select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
            </xsl:variable>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"/>
            </xsl:attribute>
            <ns1:nationalityOfEntity>
                <rdf:Description>
                <xsl:variable name="author_cont">
                        <xsl:value-of
                            select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
                    </xsl:variable>
                <xsl:variable name="author_xml">
                        <xsl:value-of select="concat(document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana, '/viaf.xml')"/>
                </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document($author_xml)//ns1:nationalityOfEntity/ns1:data/ns1:text"/>
                    </xsl:attribute>
                </rdf:Description>
            </ns1:nationalityOfEntity>
        </rdf:Description>

        <rdf:Description>
            <xsl:variable name="author">
                <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
            </xsl:variable>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"/>
            </xsl:attribute>
            <ns1:nationalityOfEntity>
                <rdf:Description>
                    <xsl:variable name="author">
                        <xsl:value-of
                            select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                    </xsl:variable>
                    <xsl:variable name="author_xml">
                        <xsl:value-of select="concat(document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana, '/viaf.xml')"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document($author_xml)//ns1:nationalityOfEntity/ns1:data/ns1:text"/>
                    </xsl:attribute>
                </rdf:Description>
            </ns1:nationalityOfEntity>
        </rdf:Description>
        
        <rdf:Description>
            <xsl:variable name="author_cont">
                <xsl:value-of select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
            </xsl:variable>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana"/>
            </xsl:attribute>
            <ns1:languageOfEntity>
                <rdf:Description>
                    <xsl:variable name="author_cont">
                        <xsl:value-of
                            select="//t:ab/t:bibl/substring(@xml:id, 1, 4)"/>
                    </xsl:variable>
                    <xsl:variable name="author_xml">
                        <xsl:value-of select="concat(document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author_cont]/@ana, '/viaf.xml')"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document($author_xml)//ns1:languageOfEntity/ns1:data/ns1:text"/>
                    </xsl:attribute>
                </rdf:Description>
            </ns1:languageOfEntity>
        </rdf:Description>
        
        <rdf:Description>
            <xsl:variable name="author">
                <xsl:value-of select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
            </xsl:variable>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana"/>
            </xsl:attribute>
            <ns1:languageOfEntity>
                <rdf:Description>
                    <xsl:variable name="author">
                        <xsl:value-of
                            select="//t:persName[@type = 'author']/substring(@ref, 2, 4)"/>
                    </xsl:variable>
                    <xsl:variable name="author_xml">
                        <xsl:value-of select="concat(document('lists.xml')/t:TEI/t:standOff/t:listPerson/t:person[@xml:id = $author]/@ana, '/viaf.xml')"/>
                    </xsl:variable>
                    <xsl:attribute name="rdf:about">
                        <xsl:value-of select="document($author_xml)//ns1:languageOfEntity/ns1:data/ns1:text"/>
                    </xsl:attribute>
                </rdf:Description>
            </ns1:languageOfEntity>
        </rdf:Description>

    </rdf:RDF>
</xsl:template>
</xsl:stylesheet>