.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$4;
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
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 8
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 175
    iget-object v5, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v7, :cond_0

    .line 176
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v6, "Cannot create a polygon without atleast one linear ring"

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_0
    iget-object v5, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v6

    invoke-static {v5, v6}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->getSrid(Lorg/xml/sax/Attributes;I)I

    move-result v3

    .line 180
    .local v3, "srid":I
    iget-object v5, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 181
    .local v1, "outer":Lorg/locationtech/jts/geom/LinearRing;
    iget-object v5, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_2

    iget-object v5, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    iget-object v6, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 182
    .local v4, "t":Ljava/util/List;
    :goto_0
    if-nez v4, :cond_3

    .line 184
    .local v0, "inner":[Lorg/locationtech/jts/geom/LinearRing;
    :goto_1
    invoke-virtual {p2, v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 186
    .local v2, "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getSRID()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 187
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Polygon;->setSRID(I)V

    .line 189
    :cond_1
    return-object v2

    .end local v0    # "inner":[Lorg/locationtech/jts/geom/LinearRing;
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    .end local v4    # "t":Ljava/util/List;
    :cond_2
    move-object v4, v0

    .line 181
    goto :goto_0

    .line 182
    .restart local v4    # "t":Ljava/util/List;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/locationtech/jts/geom/LinearRing;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    move-object v0, v5

    goto :goto_1
.end method
