.class public Lorg/locationtech/jts/io/gml2/GMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GMLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    }
.end annotation


# instance fields
.field private delegate:Lorg/xml/sax/ErrorHandler;

.field private gf:Lorg/locationtech/jts/geom/GeometryFactory;

.field private locator:Lorg/xml/sax/Locator;

.field private stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;Lorg/xml/sax/ErrorHandler;)V
    .locals 3
    .param p1, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .param p2, "delegate"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 111
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    .line 113
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    .line 115
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->gf:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 235
    iput-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->locator:Lorg/xml/sax/Locator;

    .line 132
    iput-object p2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    .line 133
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->gf:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    invoke-direct {v1, v2, v2}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;-><init>(Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->addText(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    .line 203
    .local v0, "thisAction":Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->gf:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->create(Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->keep(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/DefaultHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/DefaultHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method

.method protected getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    .line 167
    .local v0, "h":Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    iget-object v1, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 168
    iget-object v1, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    .line 169
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->gf:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v1, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    iget-object v3, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    .line 170
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    new-array v3, v3, [Lorg/locationtech/jts/geom/Geometry;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Geometry;

    check-cast v1, [Lorg/locationtech/jts/geom/Geometry;

    .line 169
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    goto :goto_0

    .line 172
    .end local v0    # "h":Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse did not complete as expected, there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    .line 173
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elements on the Stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->addText(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public isGeometryComplete()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    iget-object v3, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    .line 151
    .local v0, "h":Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    iget-object v3, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_0

    move v1, v2

    .line 153
    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->locator:Lorg/xml/sax/Locator;

    .line 230
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    instance-of v0, v0, Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 233
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1, p2}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->findStrategy(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

    move-result-object v1

    .line 213
    .local v1, "ps":Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    if-nez v1, :cond_0

    .line 214
    const/16 v3, 0x3a

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "qn":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->findStrategy(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

    move-result-object v1

    .line 217
    .end local v2    # "qn":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;

    invoke-direct {v0, v1, p4}, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;-><init>(Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;Lorg/xml/sax/Attributes;)V

    .line 219
    .local v0, "h":Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    iget-object v3, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/locationtech/jts/io/gml2/GMLHandler;->delegate:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/DefaultHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0
.end method
