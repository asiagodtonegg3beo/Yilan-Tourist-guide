.class public Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;
.super Ljava/lang/Object;
.source "DistanceToPoint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 4
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 33
    instance-of v3, p0, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_1

    .line 34
    check-cast p0, Lorg/locationtech/jts/geom/LineString;

    .end local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v3, p0, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_2

    .line 37
    check-cast p0, Lorg/locationtech/jts/geom/Polygon;

    .end local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    goto :goto_0

    .line 39
    .restart local p0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v3, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 40
    check-cast v1, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 41
    .local v1, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 42
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 43
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 1
    .param p0, "segment"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 66
    .local v0, "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v0, p1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 67
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 6
    .param p0, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 53
    new-instance v3, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v3}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 54
    .local v3, "tempSegment":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 55
    .local v1, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 56
    aget-object v4, v1, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 58
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 59
    .local v0, "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v0, p1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "closestPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method public static computeDistance(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 2
    .param p0, "poly"    # Lorg/locationtech/jts/geom/Polygon;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/locationtech/jts/algorithm/distance/DistanceToPoint;->computeDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
