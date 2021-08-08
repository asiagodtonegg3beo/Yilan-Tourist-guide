.class public Lorg/locationtech/jts/algorithm/InteriorPointLine;
.super Ljava/lang/Object;
.source "InteriorPointLine.java"


# instance fields
.field private centroid:Lorg/locationtech/jts/geom/Coordinate;

.field private interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private minDistance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->minDistance:D

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 41
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->centroid:Lorg/locationtech/jts/geom/Coordinate;

    .line 42
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addInterior(Lorg/locationtech/jts/geom/Geometry;)V

    .line 43
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addEndpoints(Lorg/locationtech/jts/geom/Geometry;)V

    .line 45
    :cond_0
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "point"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 102
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->centroid:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 103
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->minDistance:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 104
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v2, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 105
    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->minDistance:D

    .line 107
    :cond_0
    return-void
.end method

.method private addEndpoints(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 84
    instance-of v2, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addEndpoints([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 93
    :cond_0
    return-void

    .line 87
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 89
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addEndpoints(Lorg/locationtech/jts/geom/Geometry;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addEndpoints([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 96
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 97
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 98
    return-void
.end method

.method private addInterior(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 60
    instance-of v2, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addInterior([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 69
    :cond_0
    return-void

    .line 63
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 64
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 65
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->addInterior(Lorg/locationtech/jts/geom/Geometry;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addInterior([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 72
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 73
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/InteriorPointLine;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public getInteriorPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/InteriorPointLine;->interiorPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
