.class public Lorg/locationtech/jts/operation/distance/DistanceOp;
.super Ljava/lang/Object;
.source "DistanceOp.java"


# instance fields
.field private geom:[Lorg/locationtech/jts/geom/Geometry;

.field private minDistance:D

.field private minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

.field private ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

.field private terminateDistance:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 3
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "terminateDistance"    # D

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    .line 107
    new-instance v0, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 109
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Geometry;

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    .line 132
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 133
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 134
    iput-wide p3, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    .line 135
    return-void
.end method

.method public static closestPoints(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 99
    new-instance v0, Lorg/locationtech/jts/operation/distance/DistanceOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 100
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance/DistanceOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private computeContainmentDistance()V
    .locals 6

    .prologue
    .line 231
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 233
    .local v0, "locPtPoly":[Lorg/locationtech/jts/operation/distance/GeometryLocation;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeContainmentDistance(I[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 234
    iget-wide v2, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeContainmentDistance(I[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    goto :goto_0
.end method

.method private computeContainmentDistance(I[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 8
    .param p1, "polyGeomIndex"    # I
    .param p2, "locPtPoly"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 240
    rsub-int/lit8 v1, p1, 0x1

    .line 241
    .local v1, "locationsIndex":I
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/locationtech/jts/geom/util/PolygonExtracter;->getPolygons(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "polys":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 243
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;->getLocations(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "insideLocs":Ljava/util/List;
    invoke-direct {p0, v0, v2, p2}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeContainmentDistance(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 245
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 247
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aput-object v4, v3, v1

    .line 248
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    aput-object v4, v3, p1

    .line 252
    .end local v0    # "insideLocs":Ljava/util/List;
    :cond_0
    return-void
.end method

.method private computeContainmentDistance(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 8
    .param p1, "locs"    # Ljava/util/List;
    .param p2, "polys"    # Ljava/util/List;
    .param p3, "locPtPoly"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 258
    .local v2, "loc":Lorg/locationtech/jts/operation/distance/GeometryLocation;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 259
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    invoke-direct {p0, v2, v3, p3}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeContainmentDistance(Lorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/geom/Polygon;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 260
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 263
    .end local v1    # "j":I
    .end local v2    # "loc":Lorg/locationtech/jts/operation/distance/GeometryLocation;
    :cond_0
    return-void

    .line 258
    .restart local v1    # "j":I
    .restart local v2    # "loc":Lorg/locationtech/jts/operation/distance/GeometryLocation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private computeContainmentDistance(Lorg/locationtech/jts/operation/distance/GeometryLocation;Lorg/locationtech/jts/geom/Polygon;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 4
    .param p1, "ptLoc"    # Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .param p2, "poly"    # Lorg/locationtech/jts/geom/Polygon;
    .param p3, "locPtPoly"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 269
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 271
    .local v0, "pt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {v2, v0, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 272
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    .line 273
    const/4 v1, 0x0

    aput-object p1, p3, v1

    .line 274
    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-direct {v2, p2, v0}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, p3, v1

    .line 277
    :cond_0
    return-void
.end method

.method private computeFacetDistance()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 286
    const/4 v5, 0x2

    new-array v2, v5, [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 292
    .local v2, "locGeom":[Lorg/locationtech/jts/operation/distance/GeometryLocation;
    iget-object v5, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v10

    invoke-static {v5}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "lines0":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v11

    invoke-static {v5}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "lines1":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v10

    invoke-static {v5}, Lorg/locationtech/jts/geom/util/PointExtracter;->getPoints(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "pts0":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v5, v5, v11

    invoke-static {v5}, Lorg/locationtech/jts/geom/util/PointExtracter;->getPoints(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, "pts1":Ljava/util/List;
    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistanceLines(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 300
    invoke-direct {p0, v2, v10}, Lorg/locationtech/jts/operation/distance/DistanceOp;->updateMinDistance([Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 301
    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    aput-object v12, v2, v10

    .line 304
    aput-object v12, v2, v11

    .line 305
    invoke-direct {p0, v0, v4, v2}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistanceLinesPoints(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 306
    invoke-direct {p0, v2, v10}, Lorg/locationtech/jts/operation/distance/DistanceOp;->updateMinDistance([Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 307
    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v5, v6, v8

    if-lez v5, :cond_0

    .line 309
    aput-object v12, v2, v10

    .line 310
    aput-object v12, v2, v11

    .line 311
    invoke-direct {p0, v1, v3, v2}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistanceLinesPoints(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 312
    invoke-direct {p0, v2, v11}, Lorg/locationtech/jts/operation/distance/DistanceOp;->updateMinDistance([Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    .line 313
    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v5, v6, v8

    if-lez v5, :cond_0

    .line 315
    aput-object v12, v2, v10

    .line 316
    aput-object v12, v2, v11

    .line 317
    invoke-direct {p0, v3, v4, v2}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistancePoints(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 318
    invoke-direct {p0, v2, v10}, Lorg/locationtech/jts/operation/distance/DistanceOp;->updateMinDistance([Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V

    goto :goto_0
.end method

.method private computeMinDistance()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .line 224
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeContainmentDistance()V

    .line 225
    iget-wide v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v2, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeFacetDistance()V

    goto :goto_0
.end method

.method private computeMinDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 16
    .param p1, "line0"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "line1"    # Lorg/locationtech/jts/geom/LineString;
    .param p3, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 366
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/LineString;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/geom/LineString;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/geom/Envelope;->distance(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    .line 388
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 370
    .local v3, "coord0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 372
    .local v4, "coord1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v3

    add-int/lit8 v11, v11, -0x1

    if-ge v5, v11, :cond_0

    .line 373
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_3

    .line 374
    aget-object v11, v3, v5

    add-int/lit8 v12, v5, 0x1

    aget-object v12, v3, v12

    aget-object v13, v4, v8

    add-int/lit8 v14, v8, 0x1

    aget-object v14, v4, v14

    invoke-static {v11, v12, v13, v14}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distanceLineLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 377
    .local v6, "dist":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    cmpg-double v11, v6, v12

    if-gez v11, :cond_2

    .line 378
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    .line 379
    new-instance v9, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v11, v3, v5

    add-int/lit8 v12, v5, 0x1

    aget-object v12, v3, v12

    invoke-direct {v9, v11, v12}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 380
    .local v9, "seg0":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v10, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v11, v4, v8

    add-int/lit8 v12, v8, 0x1

    aget-object v12, v4, v12

    invoke-direct {v10, v11, v12}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 381
    .local v10, "seg1":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v9, v10}, Lorg/locationtech/jts/geom/LineSegment;->closestPoints(Lorg/locationtech/jts/geom/LineSegment;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 382
    .local v2, "closestPt":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v11, 0x0

    new-instance v12, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v13, 0x0

    aget-object v13, v2, v13

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v5, v13}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v12, p3, v11

    .line 383
    const/4 v11, 0x1

    new-instance v12, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v13, 0x1

    aget-object v13, v2, v13

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v8, v13}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v12, p3, v11

    .line 385
    .end local v2    # "closestPt":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v9    # "seg0":Lorg/locationtech/jts/geom/LineSegment;
    .end local v10    # "seg1":Lorg/locationtech/jts/geom/LineSegment;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v11, v12, v14

    if-lez v11, :cond_0

    .line 373
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 372
    .end local v6    # "dist":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private computeMinDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 12
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Point;
    .param p3, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 393
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v7

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/locationtech/jts/geom/Envelope;->distance(Lorg/locationtech/jts/geom/Envelope;)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_1

    .line 412
    :cond_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 397
    .local v1, "coord0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 399
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_0

    .line 400
    aget-object v7, v1, v4

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    invoke-static {v0, v7, v8}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 402
    .local v2, "dist":D
    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    cmpg-double v7, v2, v8

    if-gez v7, :cond_2

    .line 403
    iput-wide v2, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    .line 404
    new-instance v5, Lorg/locationtech/jts/geom/LineSegment;

    aget-object v7, v1, v4

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    invoke-direct {v5, v7, v8}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 405
    .local v5, "seg":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v5, v0}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 406
    .local v6, "segClosestPoint":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v7, 0x0

    new-instance v8, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-direct {v8, p1, v4, v6}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, p3, v7

    .line 407
    const/4 v7, 0x1

    new-instance v8, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v9, 0x0

    invoke-direct {v8, p2, v9, v0}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, p3, v7

    .line 409
    .end local v5    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    .end local v6    # "segClosestPoint":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v10, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v7, v8, v10

    if-lez v7, :cond_0

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private computeMinDistanceLines(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 8
    .param p1, "lines0"    # Ljava/util/List;
    .param p2, "lines1"    # Ljava/util/List;
    .param p3, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LineString;

    .line 325
    .local v2, "line0":Lorg/locationtech/jts/geom/LineString;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 326
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    .line 327
    .local v3, "line1":Lorg/locationtech/jts/geom/LineString;
    invoke-direct {p0, v2, v3, p3}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/LineString;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 328
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 331
    .end local v1    # "j":I
    .end local v2    # "line0":Lorg/locationtech/jts/geom/LineString;
    .end local v3    # "line1":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-void

    .line 325
    .restart local v1    # "j":I
    .restart local v2    # "line0":Lorg/locationtech/jts/geom/LineString;
    .restart local v3    # "line1":Lorg/locationtech/jts/geom/LineString;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v3    # "line1":Lorg/locationtech/jts/geom/LineString;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private computeMinDistanceLinesPoints(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 8
    .param p1, "lines"    # Ljava/util/List;
    .param p2, "points"    # Ljava/util/List;
    .param p3, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 354
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LineString;

    .line 355
    .local v2, "line":Lorg/locationtech/jts/geom/LineString;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 356
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Point;

    .line 357
    .local v3, "pt":Lorg/locationtech/jts/geom/Point;
    invoke-direct {p0, v2, v3, p3}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistance(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/Point;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V

    .line 358
    iget-wide v4, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 361
    .end local v1    # "j":I
    .end local v2    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v3    # "pt":Lorg/locationtech/jts/geom/Point;
    :cond_0
    return-void

    .line 355
    .restart local v1    # "j":I
    .restart local v2    # "line":Lorg/locationtech/jts/geom/LineString;
    .restart local v3    # "pt":Lorg/locationtech/jts/geom/Point;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    .end local v3    # "pt":Lorg/locationtech/jts/geom/Point;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private computeMinDistancePoints(Ljava/util/List;Ljava/util/List;[Lorg/locationtech/jts/operation/distance/GeometryLocation;)V
    .locals 11
    .param p1, "points0"    # Ljava/util/List;
    .param p2, "points1"    # Ljava/util/List;
    .param p3, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;

    .prologue
    const/4 v10, 0x0

    .line 335
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 336
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/Point;

    .line 337
    .local v4, "pt0":Lorg/locationtech/jts/geom/Point;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 338
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/Point;

    .line 339
    .local v5, "pt1":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 340
    .local v0, "dist":D
    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 341
    iput-wide v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    .line 342
    new-instance v6, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-direct {v6, v4, v10, v7}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v6, p3, v10

    .line 343
    const/4 v6, 0x1

    new-instance v7, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-direct {v7, v5, v10, v8}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    aput-object v7, p3, v6

    .line 345
    :cond_0
    iget-wide v6, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->terminateDistance:D

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 348
    .end local v0    # "dist":D
    .end local v3    # "j":I
    .end local v4    # "pt0":Lorg/locationtech/jts/geom/Point;
    .end local v5    # "pt1":Lorg/locationtech/jts/geom/Point;
    :cond_1
    return-void

    .line 337
    .restart local v0    # "dist":D
    .restart local v3    # "j":I
    .restart local v4    # "pt0":Lorg/locationtech/jts/geom/Point;
    .restart local v5    # "pt1":Lorg/locationtech/jts/geom/Point;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "dist":D
    .end local v5    # "pt1":Lorg/locationtech/jts/geom/Point;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/operation/distance/DistanceOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 58
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance/DistanceOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->distance()D

    move-result-wide v2

    return-wide v2
.end method

.method public static isWithinDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D

    .prologue
    .line 70
    new-instance v0, Lorg/locationtech/jts/operation/distance/DistanceOp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 71
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance/DistanceOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->distance()D

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

.method public static nearestPoints(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 84
    new-instance v0, Lorg/locationtech/jts/operation/distance/DistanceOp;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 85
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance/DistanceOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private updateMinDistance([Lorg/locationtech/jts/operation/distance/GeometryLocation;Z)V
    .locals 4
    .param p1, "locGeom"    # [Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .param p2, "flip"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    .line 209
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, p1, v3

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, p1, v2

    aput-object v1, v0, v3

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    .line 214
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, p1, v3

    aput-object v1, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public closestLocations()[Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestLocations()[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    move-result-object v0

    return-object v0
.end method

.method public closestPoints()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public distance()D
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null geometries are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->geom:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :cond_2
    const-wide/16 v0, 0x0

    .line 152
    :goto_0
    return-wide v0

    .line 151
    :cond_3
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistance()V

    .line 152
    iget-wide v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistance:D

    goto :goto_0
.end method

.method public nearestLocations()[Lorg/locationtech/jts/operation/distance/GeometryLocation;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistance()V

    .line 190
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    return-object v0
.end method

.method public nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->computeMinDistance()V

    .line 164
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, v1, v2

    .line 166
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/distance/DistanceOp;->minDistanceLocation:[Lorg/locationtech/jts/operation/distance/GeometryLocation;

    aget-object v1, v1, v3

    .line 167
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/distance/GeometryLocation;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v3

    .line 168
    .local v0, "nearestPts":[Lorg/locationtech/jts/geom/Coordinate;
    return-object v0
.end method
