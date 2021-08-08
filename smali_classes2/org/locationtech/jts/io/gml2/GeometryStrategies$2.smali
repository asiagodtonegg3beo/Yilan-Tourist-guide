.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$2;
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
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 9
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 101
    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 102
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Cannot create a linestring without atleast two coordinates or one coordinate sequence"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_0
    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v7

    invoke-static {v6, v7}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->getSrid(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 106
    .local v5, "srid":I
    const/4 v4, 0x0

    .line 107
    .local v4, "ls":Lorg/locationtech/jts/geom/LineString;
    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 110
    :try_start_0
    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 111
    .local v2, "cs":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-virtual {p2, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    .end local v2    # "cs":Lorg/locationtech/jts/geom/CoordinateSequence;
    :goto_0
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineString;->getSRID()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 125
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/LineString;->setSRID(I)V

    .line 127
    :cond_1
    return-object v4

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Cannot create a linestring without atleast two coordinates or one coordinate sequence"

    invoke-direct {v6, v7, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 117
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_2
    :try_start_1
    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    iget-object v7, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v0, v6

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v1, v0

    .line 118
    .local v1, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 119
    .end local v1    # "coords":[Lorg/locationtech/jts/geom/Coordinate;
    :catch_1
    move-exception v3

    .line 120
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Cannot create a linestring without atleast two coordinates or one coordinate sequence"

    invoke-direct {v6, v7, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method
