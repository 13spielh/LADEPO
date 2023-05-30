# LADEPO

1. Deutsch

## Ziele:
Die vorliegende Edition (Arbeitstitel: "LADEPO - Latin Dedicatory Poems of the early modern period") verfolgt vor allem das Ziel, lateinische carmina liminaria (sog. "Schwellengedichte", metrische Paratexte, die zunächst in Handschriften, später in Drucken gemeinsam mit dem Hauptwerk veröffentlicht wurden) in gesammelter Form darstell- und für geisteswissenschaftliche Analysen verwendbar zu machen. Der Fokus liegt dabei einerseits auf der Zurverfügungstellung der Texte in digitaler Form und andererseits auf ihrer inhaltlichen Erschließung im Sinne der Aufbereitung und Strukturierung der in ihnen enthaltenen bzw. paratextuell vorliegenden Informationen bezüglich der Beziehungen der einzelnen Gelehrten zueinander. Dies betrifft vor allem die Annotation von Personen, Orten und Schlagworten sowie eine Anreicherung durch offen verfügbare Normdaten (Linked open data).

## Editionsprinzipien:
Aufgrund des Ausgangsmaterials, das ausschließlich aus Drucken des frühen 16. Jh. bestand, wurde die Edition als Faksimile-Edition mit normalisiertem Lesetext und Übersetzung konzipiert. Sie erhebt keinen Anspruch auf textkritische Korrektheit. Bei der Erstellung der Texte war das Ziel eine möglichst hohe Lesbarkeit der edierten Gedichte zur Verwendung für (geistes-) wissenschaftliche Zwecke. Zielgruppe der Edition sind einerseits literaturwissenschaftlich interessierte Personen, darüber hinaus kann sie aber auch als Ressource für Forschende anderer Disziplinen verwendet werden und Quellen u.a. für die frühneuzeitliche Geistes- und Wissenschaftsgeschichte oder Vergleichsmaterial für neusprachliche Philologien zur Verfügung stellen. Aus diesem Grund – und zumal durch das Faksimile in jedem Fall die ursprüngliche Lesart des Drucks eingesehen werden kann – wurden für den normalisierten Lesetext Ligaturen aufgelöst sowie orthographische Abweichungen (z.B. die Schreibung von „u“ und „v“ bzw. Groß- und Kleinschreibung) vereinheitlicht. Bei Personennamen wurde auf eine Vereinheitlichung verzichtet, da dies einen zu großen Eingriff in das Textmaterial nötig gemacht hätte, der meines Erachtens nicht gerechtfertigt war; allerdings konnte in diesem Fall durch Annotation und Verweis auf eindeutige IDs und URIs im erstellten Glossar eine gewisse Standardisierung erreicht werden.

## Dokumentation:
Eine ausführliche Darstellung der Hintergründe, Umsetzung und Potenziale der Edition findet sich in der folgenden Masterarbeit, die in Kürze über das online repository der Universitätsbibliothek Graz verfügbar sein wird: "Spielhofer, Lukas: Lateinische Buchwidmungen. Die carmina liminaria des Collegium Poetarum et Mathematicorum und der Sodalitas litteraria Danubiana. Eine 'assertive' Edition, Graz 2023". Der Ordner "data/sources" enthält die TEI/XML-Kodierungen der Gedichte sowie das Glossar zu Personen, Orten und bibliographischen Angaben ("lists.xml"). In "data/facs" finden sich die Faksimiles zu den edierten Gedichten. "data/scripts" enthält die Stylesheets zur HTML- bzw. RDF-Transformation ("stylesheet.xsl" bzw. "stylesheet_rdf.xsl"). Die aus den XML-Repräsentationen transformierten Dokumente finden sich in "data/generated_data". "data/css" enthält die CSS-Stylesheets für die Anzeige der HTML-Transformationen. In "data/queries" finden sich schließlich die verwendeten SPARQL-Abfragen für die erstellte Graphdatenbank.

## Verwendete Technologien:
Die primäre Kodierung der Gedichte wurde im Format TEI/XML umgesetzt. Aus diesen XML-Kodierungen wurden durch die Einbindung von XSLT-Stylesheets Transformationen in die Formate HTML und RDF durchgeführt. Weitere verwendete Technologien umfassen CSS für das Stylesheet der HTML-Transformationen sowie SPARQL als Abfragesprache der Graphdatenbank.





2. English
## Objectives:
The present edition (working title: "LADEPO - Latin Dedicatory Poems of the early modern period") aims to present Latin carmina liminaria (so-called "threshold poems", metrical paratexts that were first published in manuscripts and later in print together with the main work) in collected form and to make them accessible for humanities research. The focus is on making the texts available in a digital, researchable form, and on preparing and structuring the textual or paratextual information with regard to the relationships of the individual scholars to one another. This concerns above all the annotation of persons, places and keywords as well as an enrichment by openly available norm data (linked open data).

## Editing principles:
In light of the source material, which consists exclusively of prints from the early 16th century, the edition was conceived as a facsimile edition with normalized reading text and translation. It makes no claim to text-critical correctness. The aim was to make the edited poems as readable as possible for use in (humanities) research. The target audience of the edition is, on the one hand, persons interested in literary studies, but, on the other hand, it can also be used as a resource for researchers of other disciplines and provide sources for, among other things, early modern intellectual and scientific history or comparative material for new-language philologies. For this reason - and especially since the original reading of the print can be seen in every case through the facsimile - ligatures were dissolved and orthographic deviations (e.g. the spelling of "u" and "v" or upper and lower case) standardized for the normalized reading text. In the case of personal names, there is no standardization, as this would have required too much intervention in the text material, which was not justified; however, in this case a certain standardization could be achieved by annotation and reference to unique IDs and URIs in the glossary created.

## Documentation:
A detailed account of the background, implementation and potential of the edition can be found in the following master's thesis, which will soon be available via the online repository of the Graz University Library: "Spielhofer, Lukas: Latin Dedicatory Poems in the Works of the Collegium Poetarum et athematicorum and the Sodalitas litteraria Danubiana. An 'Assertive Edition', Graz 2023." The folder "data/sources" contains the TEI/XML encodings of the poems as well as the glossary of persons, places, and bibliographic information ("lists.xml"). "data/facs" contains the facsimiles for the edited poems. "data/scripts" contains the stylesheets for HTML and RDF transformation ("stylesheet.xsl" and "stylesheet_rdf.xsl"). The documents generated by these transformations can be found in "data/generated_data". "data/css" contains the CSS stylesheets for displaying the HTML transformations. Finally, "data/queries" contains the SPARQL queries used for the generated graph database.

## Technologies used:
The primary encoding of the poems was implemented in TEI/XML. From these XML documents, transformations to HTML and RDF formats were performed based on XSLT stylesheets. Other technologies used include CSS for the stylesheet of the HTML transformations and SPARQL as the query language of the graph database.
