.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$1;
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
    .line 69
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
    .line 75
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 76
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Cannot create a point without exactly one coordinate"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getSRID()I

    move-result v4

    invoke-static {v3, v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->getSrid(Lorg/xml/sax/Attributes;I)I

    move-result v2

    .line 80
    .local v2, "srid":I
    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 82
    .local v1, "p":Lorg/locationtech/jts/geom/Point;
    instance-of v3, v0, Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v3, :cond_2

    .line 83
    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .end local v0    # "c":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    .line 87
    :goto_0
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Point;->getSRID()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 88
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Point;->setSRID(I)V

    .line 90
    :cond_1
    return-object v1

    .line 85
    .restart local v0    # "c":Ljava/lang/Object;
    :cond_2
    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    .end local v0    # "c":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    goto :goto_0
.end method
