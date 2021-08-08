.class public Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;
.super Ljava/lang/Object;
.source "DistanceToPointFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 4
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 32
    instance-of v3, p0, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_1

    .line 33
    check-cast p0, Lorg/locationtech/jts/geom/LineString;

    .end local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v3, p0, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_2

    .line 36
    check-cast p0, Lorg/locationtech/jts/geom/Polygon;

    .end local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    goto :goto_0

    .line 38
    .restart local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 39
    check-cast v1, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 40
    .local v1, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 41
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 42
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 1
    .param p0, "segment"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 64
    .local v0, "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v0, p1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 65
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 6
    .param p0, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 52
    .local v1, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v3, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v3}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 53
    .local v3, "tempSegment":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 54
    aget-object v4, v1, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 56
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 57
    .local v0, "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v0, p1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 2
    .param p0, "poly"    # Lorg/locationtech/jts/geom/Polygon;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/DistanceToPointFinder;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
