.class public Lorg/locationtech/jts/algorithm/CentroidLine;
.super Ljava/lang/Object;
.source "CentroidLine.java"


# instance fields
.field private centSum:Lorg/locationtech/jts/geom/Coordinate;

.field private totalLength:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->totalLength:D

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 47
    instance-of v3, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidLine;->add([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 64
    :cond_0
    return-void

    .line 50
    :cond_1
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 51
    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 53
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidLine;->add([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 55
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidLine;->add([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    .end local v2    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_2
    instance-of v3, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 59
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 60
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidLine;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public add([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 14
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 81
    aget-object v1, p1, v0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v1, v8}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 82
    .local v6, "segmentLen":D
    iget-wide v8, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->totalLength:D

    add-double/2addr v8, v6

    iput-wide v8, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->totalLength:D

    .line 84
    aget-object v1, p1, v0

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v8, v10

    div-double v2, v8, v12

    .line 85
    .local v2, "midx":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v10, v6, v2

    add-double/2addr v8, v10

    iput-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 86
    aget-object v1, p1, v0

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v8, v10

    div-double v4, v8, v12

    .line 87
    .local v4, "midy":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double v10, v6, v4

    add-double/2addr v8, v10

    iput-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "midx":D
    .end local v4    # "midy":D
    .end local v6    # "segmentLen":D
    :cond_0
    return-void
.end method

.method public getCentroid()Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 69
    .local v0, "cent":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 70
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidLine;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 71
    return-object v0
.end method
