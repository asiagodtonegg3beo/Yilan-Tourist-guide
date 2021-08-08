.class public Lorg/locationtech/jts/algorithm/InteriorPointPoint;
.super Ljava/lang/Object;
.source "InteriorPointPoint.java"


# instance fields
.field private centroid:Lorg/locationtech/jts/geom/Coordinate;

.field private interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private minDistance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->minDistance:D

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 36
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->centroid:Lorg/locationtech/jts/geom/Coordinate;

    .line 37
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 38
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "point"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->centroid:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 60
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->minDistance:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 61
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 62
    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->minDistance:D

    .line 64
    :cond_0
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    instance-of v2, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 56
    :cond_0
    return-void

    .line 50
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 52
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointPoint;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
