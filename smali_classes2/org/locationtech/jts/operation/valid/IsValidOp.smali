.class public Lorg/locationtech/jts/operation/valid/IsValidOp;
.super Ljava/lang/Object;
.source "IsValidOp.java"


# instance fields
.field private isSelfTouchingRingFormingHoleValid:Z

.field private parentGeometry:Lorg/locationtech/jts/geom/Geometry;

.field private validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "parentGeometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->isSelfTouchingRingFormingHoleValid:Z

    .line 110
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->parentGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 111
    return-void
.end method

.method private checkClosedRing(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 3
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 338
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getNumPoints()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 341
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 342
    :cond_0
    new-instance v1, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 346
    .end local v0    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-void
.end method

.method private checkClosedRings(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 328
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkClosedRing(Lorg/locationtech/jts/geom/LinearRing;)V

    .line 329
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 331
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkClosedRing(Lorg/locationtech/jts/geom/LinearRing;)V

    .line 332
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkConnectedInteriors(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 4
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 609
    new-instance v0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;-><init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 610
    .local v0, "cit":Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->isInteriorsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    new-instance v1, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/4 v2, 0x4

    .line 613
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 614
    :cond_0
    return-void
.end method

.method private checkConsistentArea(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 5
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 368
    new-instance v0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;-><init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 369
    .local v0, "cat":Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->isNodeConsistentArea()Z

    move-result v1

    .line 370
    .local v1, "isValidArea":Z
    if-nez v1, :cond_1

    .line 371
    new-instance v2, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/4 v3, 0x5

    .line 373
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->getInvalidPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->hasDuplicateRings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    new-instance v2, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/16 v3, 0x8

    .line 379
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->getInvalidPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    goto :goto_0
.end method

.method private checkHolesInShell(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 441
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/LinearRing;

    .line 445
    .local v5, "shell":Lorg/locationtech/jts/geom/LinearRing;
    new-instance v4, Lorg/locationtech/jts/algorithm/MCPointInRing;

    invoke-direct {v4, v5}, Lorg/locationtech/jts/algorithm/MCPointInRing;-><init>(Lorg/locationtech/jts/geom/LinearRing;)V

    .line 447
    .local v4, "pir":Lorg/locationtech/jts/algorithm/PointInRing;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 449
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 450
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-static {v6, v5, p2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 456
    .local v1, "holePt":Lorg/locationtech/jts/geom/Coordinate;
    if-nez v1, :cond_1

    .line 466
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    .end local v1    # "holePt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    :goto_1
    return-void

    .line 458
    .restart local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    .restart local v1    # "holePt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-interface {v4, v1}, Lorg/locationtech/jts/algorithm/PointInRing;->isInside(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 459
    .local v3, "outside":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 460
    new-instance v6, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v6, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    goto :goto_1

    .line 458
    .end local v3    # "outside":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 447
    .restart local v3    # "outside":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkHolesNotNested(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 7
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 482
    new-instance v3, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;

    invoke-direct {v3, p2}, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;-><init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 486
    .local v3, "nestedTester":Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 487
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 488
    .local v1, "innerHole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v3, v1}, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->add(Lorg/locationtech/jts/geom/LinearRing;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "innerHole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_0
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->isNonNested()Z

    move-result v2

    .line 491
    .local v2, "isNonNested":Z
    if-nez v2, :cond_1

    .line 492
    new-instance v4, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/4 v5, 0x3

    .line 494
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/valid/IndexedNestedRingTester;->getNestedPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v4, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 496
    :cond_1
    return-void
.end method

.method private checkInvalidCoordinates(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 318
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 319
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 322
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 307
    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->isValid(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    new-instance v1, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/16 v2, 0xa

    aget-object v3, p1, v0

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 314
    :cond_0
    return-void

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkNoSelfIntersectingRing(Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;)V
    .locals 7
    .param p1, "eiList"    # Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    .prologue
    .line 407
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 408
    .local v3, "nodeSet":Ljava/util/Set;
    const/4 v2, 0x1

    .line 409
    .local v2, "isFirst":Z
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 411
    .local v0, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    if-eqz v2, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 413
    goto :goto_0

    .line 415
    :cond_0
    iget-object v4, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    new-instance v4, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/4 v5, 0x6

    iget-object v6, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v4, v5, v6}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v4, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 425
    .end local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_1
    return-void

    .line 422
    .restart local v0    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_2
    iget-object v4, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkNoSelfIntersectingRings(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 3
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 392
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 394
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkNoSelfIntersectingRing(Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;)V

    .line 395
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v2, :cond_0

    .line 398
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_1
    return-void
.end method

.method private checkShellInsideHole(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "hole"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p3, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    const/4 v6, 0x0

    .line 583
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 584
    .local v5, "shellPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 586
    .local v1, "holePts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v5, p2, p3}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 588
    .local v4, "shellPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v4, :cond_0

    .line 589
    invoke-static {v4, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 590
    .local v2, "insideHole":Z
    if-nez v2, :cond_0

    .line 604
    .end local v2    # "insideHole":Z
    .end local v4    # "shellPt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v4

    .line 594
    .restart local v4    # "shellPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-static {v1, p1, p3}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 596
    .local v0, "holePt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v0, :cond_2

    .line 597
    invoke-static {v0, v5}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    .line 598
    .local v3, "insideShell":Z
    if-eqz v3, :cond_1

    move-object v4, v0

    .line 599
    goto :goto_0

    :cond_1
    move-object v4, v6

    .line 601
    goto :goto_0

    .line 603
    .end local v3    # "insideShell":Z
    :cond_2
    const-string v7, "points in shell and hole appear to be equal"

    invoke-static {v7}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    move-object v4, v6

    .line 604
    goto :goto_0
.end method

.method private checkShellNotNested(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 10
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "p"    # Lorg/locationtech/jts/geom/Polygon;
    .param p3, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    const/4 v9, 0x7

    .line 535
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 537
    .local v7, "shellPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/LinearRing;

    .line 538
    .local v5, "polyShell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 539
    .local v4, "polyPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v7, v5, p3}, Lorg/locationtech/jts/operation/valid/IsValidOp;->findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 541
    .local v6, "shellPt":Lorg/locationtech/jts/geom/Coordinate;
    if-nez v6, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-static {v6, v4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    .line 544
    .local v3, "insidePolyShell":Z
    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v8

    if-gtz v8, :cond_2

    .line 548
    new-instance v8, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    invoke-direct {v8, v9, v6}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v8, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    .line 561
    .local v0, "badNestedPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 562
    invoke-virtual {p2, v2}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 563
    .local v1, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0, p1, v1, p3}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkShellInsideHole(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_0

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    .end local v1    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_3
    new-instance v8, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    invoke-direct {v8, v9, v0}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v8, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    goto :goto_0
.end method

.method private checkShellsNotNested(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 6
    .param p1, "mp"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 513
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 514
    .local v2, "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/LinearRing;

    .line 515
    .local v4, "shell":Lorg/locationtech/jts/geom/LinearRing;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 516
    if-ne v0, v1, :cond_1

    .line 515
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    .line 518
    .local v3, "p2":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, v4, v3, p2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkShellNotNested(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 519
    iget-object v5, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v5, :cond_0

    .line 522
    .end local v1    # "j":I
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    .end local v3    # "p2":Lorg/locationtech/jts/geom/Polygon;
    .end local v4    # "shell":Lorg/locationtech/jts/geom/LinearRing;
    :cond_2
    return-void

    .line 512
    .restart local v1    # "j":I
    .restart local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    .restart local v4    # "shell":Lorg/locationtech/jts/geom/LinearRing;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkTooFewPoints(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 3
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 350
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->hasTooFewPoints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    const/16 v1, 0x9

    .line 353
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getInvalidPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/operation/valid/TopologyValidationError;-><init>(ILorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 356
    :cond_0
    return-void
.end method

.method private checkValid(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    .line 173
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-void

    .line 175
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/Point;)V

    goto :goto_0

    .line 176
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/MultiPoint;)V

    goto :goto_0

    .line 178
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/LinearRing;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/LinearRing;)V

    goto :goto_0

    .line 179
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/LineString;)V

    goto :goto_0

    .line 180
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/Polygon;)V

    goto :goto_0

    .line 181
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/MultiPolygon;)V

    goto :goto_0

    .line 182
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 183
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkValid(Lorg/locationtech/jts/geom/GeometryCollection;)V
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 299
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/Geometry;)V

    .line 300
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v2, :cond_1

    .line 302
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void

    .line 297
    .restart local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkValid(Lorg/locationtech/jts/geom/LineString;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 206
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 207
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    .line 209
    .local v0, "graph":Lorg/locationtech/jts/geomgraph/GeometryGraph;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkTooFewPoints(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_0
.end method

.method private checkValid(Lorg/locationtech/jts/geom/LinearRing;)V
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    const/4 v3, 0x1

    .line 216
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 217
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkClosedRing(Lorg/locationtech/jts/geom/LinearRing;)V

    .line 219
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v2, :cond_0

    .line 221
    new-instance v0, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    .line 222
    .local v0, "graph":Lorg/locationtech/jts/geomgraph/GeometryGraph;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkTooFewPoints(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 223
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v2, :cond_0

    .line 225
    new-instance v1, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v1}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    .line 226
    .local v1, "li":Lorg/locationtech/jts/algorithm/LineIntersector;
    invoke-virtual {v0, v1, v3, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 227
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkNoSelfIntersectingRings(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_0
.end method

.method private checkValid(Lorg/locationtech/jts/geom/MultiPoint;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/MultiPoint;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 199
    return-void
.end method

.method private checkValid(Lorg/locationtech/jts/geom/MultiPolygon;)V
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/MultiPolygon;

    .prologue
    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 263
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 264
    .local v2, "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates(Lorg/locationtech/jts/geom/Polygon;)V

    .line 265
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v3, :cond_1

    .line 293
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    :goto_1
    return-void

    .line 266
    .restart local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_1
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkClosedRings(Lorg/locationtech/jts/geom/Polygon;)V

    .line 267
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_2
    new-instance v0, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    .line 272
    .local v0, "graph":Lorg/locationtech/jts/geomgraph/GeometryGraph;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkTooFewPoints(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 273
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 274
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkConsistentArea(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 275
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 276
    iget-boolean v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->isSelfTouchingRingFormingHoleValid:Z

    if-nez v3, :cond_3

    .line 277
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkNoSelfIntersectingRings(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 278
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 280
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 281
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 282
    .restart local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, v2, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkHolesInShell(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 283
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 286
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 287
    .restart local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, v2, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkHolesNotNested(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 288
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 290
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_5
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkShellsNotNested(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 291
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v3, :cond_0

    .line 292
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkConnectedInteriors(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_1
.end method

.method private checkValid(Lorg/locationtech/jts/geom/Point;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 191
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 192
    return-void
.end method

.method private checkValid(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkInvalidCoordinates(Lorg/locationtech/jts/geom/Polygon;)V

    .line 237
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkClosedRings(Lorg/locationtech/jts/geom/Polygon;)V

    .line 239
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 241
    new-instance v0, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    .line 243
    .local v0, "graph":Lorg/locationtech/jts/geomgraph/GeometryGraph;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkTooFewPoints(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 244
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkConsistentArea(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 246
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 248
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->isSelfTouchingRingFormingHoleValid:Z

    if-nez v1, :cond_2

    .line 249
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkNoSelfIntersectingRings(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 250
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 252
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkHolesInShell(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 253
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 255
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkHolesNotNested(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 256
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkConnectedInteriors(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_0
.end method

.method public static findPtNotNode([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geomgraph/GeometryGraph;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p0, "testCoords"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "searchRing"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 88
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->findEdge(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v3

    .line 90
    .local v3, "searchEdge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v0

    .line 92
    .local v0, "eiList":Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 93
    aget-object v2, p0, v1

    .line 94
    .local v2, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->isIntersection(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    .end local v2    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return-object v2

    .line 92
    .restart local v2    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isValid(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p0, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValid(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 56
    new-instance v0, Lorg/locationtech/jts/operation/valid/IsValidOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/valid/IsValidOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 57
    .local v0, "isValidOp":Lorg/locationtech/jts/operation/valid/IsValidOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->isValid()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getValidationError()Lorg/locationtech/jts/operation/valid/TopologyValidationError;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->parentGeometry:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/Geometry;)V

    .line 165
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->parentGeometry:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/IsValidOp;->checkValid(Lorg/locationtech/jts/geom/Geometry;)V

    .line 151
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->validErr:Lorg/locationtech/jts/operation/valid/TopologyValidationError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelfTouchingRingFormingHoleValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/valid/IsValidOp;->isSelfTouchingRingFormingHoleValid:Z

    .line 140
    return-void
.end method
