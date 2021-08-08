.class public Lorg/locationtech/jts/operation/distance3d/Distance3DOp;
.super Ljava/lang/Object;
.source "Distance3DOp.java"


# instance fields
.field private geom:[Lorg/locationtech/jts/geom/Geometry;

.field private isDone:Z

.field private minDistance:D

.field private minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

.field private terminateDistance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 3
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "terminateDistance"    # D

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->terminateDistance:D

    .line 97
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    .line 98
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    .line 126
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aput-object p1, v0, v2

    .line 127
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 128
    iput-wide p3, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->terminateDistance:D

    .line 129
    return-void
.end method

.method private computeMinDistance()V
    .locals 5

    .prologue
    .line 187
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    iput-object v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 191
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->mostPolygonalIndex()I

    move-result v1

    .line 192
    .local v1, "geomIndex":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 193
    .local v0, "flip":Z
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    rsub-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceMultiMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V

    goto :goto_0

    .line 192
    .end local v0    # "flip":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeMinDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V
    .locals 3
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "flip"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    instance-of v2, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v2, :cond_5

    .line 292
    instance-of v2, p2, Lorg/locationtech/jts/geom/Point;

    if-eqz v2, :cond_1

    .line 293
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    check-cast p2, Lorg/locationtech/jts/geom/Point;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePointPoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/Point;Z)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v2, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_3

    .line 297
    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    if-nez p3, :cond_2

    :goto_1
    invoke-direct {p0, p2, p1, v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLinePoint(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 300
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v2, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_5

    .line 301
    invoke-static {p2}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v2

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    if-nez p3, :cond_4

    :goto_2
    invoke-direct {p0, v2, p1, v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonPoint(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 305
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v2, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_9

    .line 306
    instance-of v2, p2, Lorg/locationtech/jts/geom/Point;

    if-eqz v2, :cond_6

    .line 307
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    check-cast p2, Lorg/locationtech/jts/geom/Point;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLinePoint(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_0

    .line 310
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v2, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_7

    .line 311
    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLineLine(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;Z)V

    goto :goto_0

    .line 314
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    instance-of v2, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_9

    .line 315
    invoke-static {p2}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v2

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    if-nez p3, :cond_8

    :goto_3
    invoke-direct {p0, v2, p1, v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    .line 319
    .restart local p1    # "g0":Lorg/locationtech/jts/geom/Geometry;
    :cond_9
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_0

    .line 320
    instance-of v0, p2, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_a

    .line 321
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v0

    check-cast p2, Lorg/locationtech/jts/geom/Point;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonPoint(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_0

    .line 324
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_a
    instance-of v0, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_b

    .line 325
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v0

    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V

    goto :goto_0

    .line 328
    .restart local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    :cond_b
    instance-of v0, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v0

    check-cast p2, Lorg/locationtech/jts/geom/Polygon;

    .end local p2    # "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonPolygon(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V

    goto :goto_0
.end method

.method private computeMinDistanceLineLine(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;Z)V
    .locals 13
    .param p1, "line0"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "line1"    # Lorg/locationtech/jts/geom/LineString;
    .param p3, "flip"    # Z

    .prologue
    .line 480
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 481
    .local v7, "coord0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 483
    .local v8, "coord1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_1

    .line 484
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v1, v8

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_3

    .line 485
    aget-object v1, v7, v9

    add-int/lit8 v4, v9, 0x1

    aget-object v4, v7, v4

    aget-object v5, v8, v10

    add-int/lit8 v6, v10, 0x1

    aget-object v6, v8, v6

    invoke-static {v1, v4, v5, v6}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distanceSegmentSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 487
    .local v2, "dist":D
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 488
    iput-wide v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    .line 490
    new-instance v11, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v1, v7, v9

    add-int/lit8 v4, v9, 0x1

    aget-object v4, v7, v4

    invoke-direct {v11, v1, v4}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 491
    .local v11, "seg0":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v12, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v1, v8, v10

    add-int/lit8 v4, v10, 0x1

    aget-object v4, v8, v4

    invoke-direct {v12, v1, v4}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 492
    .local v12, "seg1":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v11, v12}, Lorg/locationtech/jts/geom/LineSegment;->closestPoints(Lorg/locationtech/jts/geom/LineSegment;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 493
    .local v0, "closestPt":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {v4, p1, v9, v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    new-instance v5, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-direct {v5, p2, v10, v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    move-object v1, p0

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 499
    .end local v0    # "closestPt":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v11    # "seg0":Lorg/locationtech/jts/geom/LineSegment;
    .end local v12    # "seg1":Lorg/locationtech/jts/geom/LineSegment;
    :cond_0
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v1, :cond_2

    .line 502
    .end local v2    # "dist":D
    .end local v10    # "j":I
    :cond_1
    return-void

    .line 484
    .restart local v2    # "dist":D
    .restart local v10    # "j":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "dist":D
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private computeMinDistanceLinePoint(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;Z)V
    .locals 11
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "point"    # Lorg/locationtech/jts/geom/Point;
    .param p3, "flip"    # Z

    .prologue
    .line 506
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 507
    .local v8, "lineCoord":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 509
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, v8

    add-int/lit8 v1, v1, -0x1

    if-ge v7, v1, :cond_1

    .line 510
    aget-object v1, v8, v7

    add-int/lit8 v4, v7, 0x1

    aget-object v4, v8, v4

    invoke-static {v0, v1, v4}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 512
    .local v2, "dist":D
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 513
    new-instance v9, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v1, v8, v7

    add-int/lit8 v4, v7, 0x1

    aget-object v4, v8, v4

    invoke-direct {v9, v1, v4}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 514
    .local v9, "seg":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v9, v0}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    .line 515
    .local v10, "segClosestPoint":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-direct {v4, p1, v7, v10}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    new-instance v5, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v1, 0x0

    invoke-direct {v5, p2, v1, v0}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 520
    .end local v9    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    .end local v10    # "segClosestPoint":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v1, :cond_2

    .line 522
    .end local v2    # "dist":D
    :cond_1
    return-void

    .line 509
    .restart local v2    # "dist":D
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private computeMinDistanceMultiMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V
    .locals 4
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "flip"    # Z

    .prologue
    .line 219
    instance-of v3, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_2

    .line 220
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    .line 221
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 223
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceMultiMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V

    .line 224
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v3, :cond_1

    .line 239
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    :goto_1
    return-void

    .line 221
    .restart local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_3

    .line 234
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceOneMulti(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Geometry;Z)V

    goto :goto_1

    .line 237
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceOneMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V

    goto :goto_1
.end method

.method private computeMinDistanceOneMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V
    .locals 4
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "flip"    # Z

    .prologue
    .line 242
    instance-of v3, p2, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_2

    .line 243
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    .line 244
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 245
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 246
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceOneMulti(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V

    .line 247
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v3, :cond_1

    .line 253
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    :goto_1
    return-void

    .line 244
    .restart local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Z)V

    goto :goto_1
.end method

.method private computeMinDistanceOneMulti(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Geometry;Z)V
    .locals 4
    .param p1, "poly"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "flip"    # Z

    .prologue
    .line 256
    instance-of v3, p2, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_2

    .line 257
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    .line 258
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 259
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 260
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceOneMulti(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Geometry;Z)V

    .line 261
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v3, :cond_1

    .line 278
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_1
    return-void

    .line 258
    .restart local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    instance-of v3, p2, Lorg/locationtech/jts/geom/Point;

    if-eqz v3, :cond_3

    .line 266
    check-cast p2, Lorg/locationtech/jts/geom/Point;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonPoint(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_1

    .line 269
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v3, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_4

    .line 270
    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V

    goto :goto_1

    .line 273
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v3, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_0

    .line 274
    check-cast p2, Lorg/locationtech/jts/geom/Polygon;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonPolygon(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V

    goto :goto_1
.end method

.method private computeMinDistancePointPoint(Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/Point;Z)V
    .locals 7
    .param p1, "point0"    # Lorg/locationtech/jts/geom/Point;
    .param p2, "point1"    # Lorg/locationtech/jts/geom/Point;
    .param p3, "flip"    # Z

    .prologue
    const/4 v6, 0x0

    .line 525
    .line 526
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 527
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 525
    invoke-static {v0, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 528
    .local v2, "dist":D
    iget-wide v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 529
    new-instance v4, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 530
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {v4, p1, v6, v0}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    new-instance v5, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 531
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {v5, p2, v6, v0}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    move-object v1, p0

    move v6, p3

    .line 529
    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 534
    :cond_0
    return-void
.end method

.method private computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V
    .locals 9
    .param p1, "poly"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p3, "flip"    # Z

    .prologue
    const/4 v6, 0x0

    .line 386
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->intersection(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 387
    .local v7, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v7, :cond_1

    .line 388
    const-wide/16 v2, 0x0

    new-instance v4, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 389
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-direct {v4, v1, v6, v7}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    new-instance v5, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-direct {v5, p2, v6, v7}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    move-object v1, p0

    move v6, p3

    .line 388
    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 404
    :cond_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLineLine(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;Z)V

    .line 398
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v8

    .line 400
    .local v8, "nHole":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLineLine(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;Z)V

    .line 402
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-nez v1, :cond_0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private computeMinDistancePolygonPoint(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Point;Z)V
    .locals 11
    .param p1, "polyPlane"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "point"    # Lorg/locationtech/jts/geom/Point;
    .param p3, "flip"    # Z

    .prologue
    const/4 v6, 0x0

    .line 451
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v9

    .line 453
    .local v9, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v10

    .line 454
    .local v10, "shell":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {p1, v9, v10}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v8

    .line 458
    .local v8, "nHole":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 459
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 460
    .local v0, "hole":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {p1, v9, v0}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLinePoint(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;Z)V

    .line 476
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LineString;
    .end local v7    # "i":I
    .end local v8    # "nHole":I
    :goto_1
    return-void

    .line 458
    .restart local v0    # "hole":Lorg/locationtech/jts/geom/LineString;
    .restart local v7    # "i":I
    .restart local v8    # "nHole":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LineString;
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPlane()Lorg/locationtech/jts/math/Plane3D;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/locationtech/jts/math/Plane3D;->orientedDistance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 468
    .local v2, "dist":D
    new-instance v4, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 469
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-direct {v4, v1, v6, v9}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    new-instance v5, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-direct {v5, p2, v6, v9}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    move-object v1, p0

    move v6, p3

    .line 468
    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 475
    .end local v2    # "dist":D
    .end local v7    # "i":I
    .end local v8    # "nHole":I
    :cond_2
    invoke-direct {p0, v10, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistanceLinePoint(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;Z)V

    goto :goto_1
.end method

.method private computeMinDistancePolygonPolygon(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V
    .locals 2
    .param p1, "poly0"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "poly1"    # Lorg/locationtech/jts/geom/Polygon;
    .param p3, "flip"    # Z

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonRings(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V

    .line 357
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 359
    .local v0, "polyPlane1":Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPolygon()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonRings(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V

    goto :goto_0
.end method

.method private computeMinDistancePolygonRings(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/Polygon;Z)V
    .locals 3
    .param p1, "poly"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "ringPoly"    # Lorg/locationtech/jts/geom/Polygon;
    .param p3, "flip"    # Z

    .prologue
    .line 372
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V

    .line 373
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    .line 376
    .local v1, "nHole":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 377
    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistancePolygonLine(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;Z)V

    .line 378
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    if-nez v2, :cond_0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 56
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 57
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance3d/Distance3DOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->distance()D

    move-result-wide v2

    return-wide v2
.end method

.method private intersection(Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 14
    .param p1, "poly"    # Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .param p2, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 407
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v8

    .line 408
    .local v8, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {v8}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 409
    const/4 v7, 0x0

    .line 446
    :cond_0
    :goto_0
    return-object v7

    .line 412
    :cond_1
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 413
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 414
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPlane()Lorg/locationtech/jts/math/Plane3D;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/locationtech/jts/math/Plane3D;->orientedDistance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 417
    .local v2, "d0":D
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 418
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_3

    .line 419
    invoke-interface {v8, v6, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 420
    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v9, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 421
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->getPlane()Lorg/locationtech/jts/math/Plane3D;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/locationtech/jts/math/Plane3D;->orientedDistance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 427
    .local v4, "d1":D
    mul-double v10, v2, v4

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    .line 418
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 437
    :cond_2
    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->segmentPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 439
    .local v7, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1, v7}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 444
    move-wide v2, v4

    goto :goto_2

    .line 446
    .end local v4    # "d1":D
    .end local v7    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isWithinDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D

    .prologue
    .line 73
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 74
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance3d/Distance3DOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->distance()D

    move-result-wide v2

    cmpg-double v1, v2, p2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mostPolygonalIndex()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    iget-object v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v0

    .line 205
    .local v0, "dim0":I
    iget-object v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    .line 206
    .local v1, "dim1":I
    if-lt v0, v5, :cond_2

    if-lt v1, v5, :cond_2

    .line 207
    iget-object v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getNumPoints()I

    move-result v4

    iget-object v5, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getNumPoints()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    if-ge v0, v5, :cond_0

    .line 213
    if-lt v1, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static nearestPoints(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 88
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 89
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance3d/Distance3DOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private static polyPlane(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
    .locals 1
    .param p0, "poly"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 287
    new-instance v0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;

    check-cast p0, Lorg/locationtech/jts/geom/Polygon;

    .end local p0    # "poly":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    return-object v0
.end method

.method private static segmentPoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 14
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "d0"    # D
    .param p4, "d1"    # D

    .prologue
    .line 553
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 560
    :goto_0
    return-object v1

    .line 554
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_1

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 556
    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    div-double v8, v0, v10

    .line 557
    .local v8, "f":D
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v12, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    add-double v2, v0, v10

    .line 558
    .local v2, "intx":D
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v12, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    add-double v4, v0, v10

    .line 559
    .local v4, "inty":D
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v12, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v8

    add-double v6, v0, v10

    .line 560
    .local v6, "intz":D
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    goto :goto_0
.end method

.method private updateDistance(DLorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V
    .locals 7
    .param p1, "dist"    # D
    .param p3, "loc0"    # Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .param p4, "loc1"    # Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .param p5, "flip"    # Z

    .prologue
    const/4 v1, 0x1

    .line 177
    iput-wide p1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    .line 178
    if-eqz p5, :cond_1

    move v0, v1

    .line 179
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aput-object p3, v2, v0

    .line 180
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    rsub-int/lit8 v3, v0, 0x1

    aput-object p4, v2, v3

    .line 181
    iget-wide v2, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->terminateDistance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 182
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->isDone:Z

    .line 183
    :cond_0
    return-void

    .line 178
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public distance()D
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null geometries are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    :cond_2
    const-wide/16 v0, 0x0

    .line 146
    :goto_0
    return-wide v0

    .line 145
    :cond_3
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistance()V

    .line 146
    iget-wide v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistance:D

    goto :goto_0
.end method

.method public nearestLocations()[Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistance()V

    .line 171
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    return-object v0
.end method

.method public nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->computeMinDistance()V

    .line 157
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, v1, v2

    .line 158
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/distance3d/Distance3DOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, v1, v3

    .line 159
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v3

    .line 160
    .local v0, "nearestPts":[Lorg/locationtech/jts/geom/Coordinate;
    return-object v0
.end method
