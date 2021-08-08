.class public Lorg/locationtech/jts/io/gml2/GMLReader;
.super Ljava/lang/Object;
.source "GMLReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/Reader;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 106
    .local v0, "fact":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 107
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 109
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 111
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    if-nez p2, :cond_0

    .line 112
    new-instance p2, Lorg/locationtech/jts/geom/GeometryFactory;

    .end local p2    # "geometryFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-direct {p2}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 114
    .restart local p2    # "geometryFactory":Lorg/locationtech/jts/geom/GeometryFactory;
    :cond_0
    new-instance v1, Lorg/locationtech/jts/io/gml2/GMLHandler;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Lorg/locationtech/jts/io/gml2/GMLHandler;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/xml/sax/ErrorHandler;)V

    .line 115
    .local v1, "gh":Lorg/locationtech/jts/io/gml2/GMLHandler;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v3, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 117
    invoke-virtual {v1}, Lorg/locationtech/jts/io/gml2/GMLHandler;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method

.method public read(Ljava/lang/String;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "gml"    # Ljava/lang/String;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/locationtech/jts/io/gml2/GMLReader;->read(Ljava/io/Reader;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method
