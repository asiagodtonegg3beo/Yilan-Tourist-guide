.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$5;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"

# interfaces
.implements Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/io/gml2/GeometryStrategies;->loadStrategies()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 6
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 201
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Cannot create a box without either two coords or one coordinate sequence"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_1
    const/4 v0, 0x0

    .line 206
    .local v0, "box":Lorg/locationtech/jts/geom/Envelope;
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 207
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 208
    .local v1, "cs":Lorg/locationtech/jts/geom/CoordinateSequence;
    new-instance v2, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    invoke-interface {v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 213
    .end local v1    # "cs":Lorg/locationtech/jts/geom/CoordinateSequence;
    :goto_0
    return-object v0

    .line 210
    :cond_2
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    .end local v0    # "box":Lorg/locationtech/jts/geom/Envelope;
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v2, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .restart local v0    # "box":Lorg/locationtech/jts/geom/Envelope;
    goto :goto_0
.end method
