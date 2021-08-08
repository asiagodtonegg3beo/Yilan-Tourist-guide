.class public Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;
.super Ljava/lang/Object;
.source "SimplePointInAreaLocator.java"

# interfaces
.implements Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;


# instance fields
.field private geom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->geom:Lorg/locationtech/jts/geom/Geometry;

    .line 110
    return-void
.end method

.method private static containsPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 62
    instance-of v2, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_0

    .line 63
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->containsPointInPolygon(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)Z

    move-result v2

    .line 74
    :goto_0
    return v2

    .line 65
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_2

    .line 66
    new-instance v1, Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    move-object v2, p1

    check-cast v2, Lorg/locationtech/jts/geom/GeometryCollection;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 67
    .local v1, "geomi":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 69
    .local v0, "g2":Lorg/locationtech/jts/geom/Geometry;
    if-eq v0, p1, :cond_1

    .line 70
    invoke-static {p0, v0}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->containsPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "g2":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "geomi":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static containsPointInPolygon(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)Z
    .locals 5
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    .line 81
    .local v2, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-static {p0, v2}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 85
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-static {p0, v0}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isPointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)Z
    .locals 1
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 101
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method

.method public static locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I
    .locals 2
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x2

    .line 53
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-static {p0, p1}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->containsPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public locate(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->geom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    return v0
.end method
