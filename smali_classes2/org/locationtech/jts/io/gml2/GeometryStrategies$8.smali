.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$8;
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
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 5
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 271
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Cannot create a multi-polygon without atleast one polygon"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_0
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v4

    invoke-static {v3, v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->getSrid(Lorg/xml/sax/Attributes;I)I

    move-result v2

    .line 275
    .local v2, "srid":I
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    iget-object v4, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/locationtech/jts/geom/Polygon;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/locationtech/jts/geom/Polygon;

    move-object v1, v3

    check-cast v1, [Lorg/locationtech/jts/geom/Polygon;

    .line 277
    .local v1, "plys":[Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v0

    .line 279
    .local v0, "mp":Lorg/locationtech/jts/geom/MultiPolygon;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/MultiPolygon;->getSRID()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 280
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/MultiPolygon;->setSRID(I)V

    .line 282
    :cond_1
    return-object v0
.end method
