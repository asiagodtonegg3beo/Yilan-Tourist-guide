.class public Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;
.super Ljava/lang/Object;
.source "ConformingDelaunayTriangulator.java"


# static fields
.field private static final MAX_SPLIT_ITER:I = 0x63


# instance fields
.field private computeAreaEnv:Lorg/locationtech/jts/geom/Envelope;

.field private convexHull:Lorg/locationtech/jts/geom/Geometry;

.field private incDel:Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

.field private initialVertices:Ljava/util/List;

.field private kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

.field private segVertices:Ljava/util/List;

.field private segments:Ljava/util/List;

.field private splitFinder:Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;

.field private splitPt:Lorg/locationtech/jts/geom/Coordinate;

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

.field private tolerance:D

.field private vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;


# direct methods
.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 2
    .param p1, "initialVertices"    # Ljava/util/Collection;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segments:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 88
    new-instance v0, Lorg/locationtech/jts/triangulate/NonEncroachingSplitPointFinder;

    invoke-direct {v0}, Lorg/locationtech/jts/triangulate/NonEncroachingSplitPointFinder;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitFinder:Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;

    .line 89
    iput-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

    .line 90
    iput-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    .line 95
    iput-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    .line 112
    iput-wide p2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->tolerance:D

    .line 113
    new-instance v0, Lorg/locationtech/jts/index/kdtree/KdTree;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/index/kdtree/KdTree;-><init>(D)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

    .line 114
    return-void
.end method

.method private addConstraintVertices()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeConvexHull()V

    .line 410
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segVertices:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->insertSites(Ljava/util/Collection;)V

    .line 411
    return-void
.end method

.method private computeBoundingBox()V
    .locals 14

    .prologue
    const-wide v12, 0x3fc999999999999aL    # 0.2

    .line 224
    iget-object v9, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    invoke-static {v9}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeVertexEnvelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v8

    .line 225
    .local v8, "vertexEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v9, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segVertices:Ljava/util/List;

    invoke-static {v9}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeVertexEnvelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    .line 227
    .local v1, "segEnv":Lorg/locationtech/jts/geom/Envelope;
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, v8}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 228
    .local v0, "allPointsEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Envelope;)V

    .line 230
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v10

    mul-double v4, v10, v12

    .line 231
    .local v4, "deltaX":D
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v10

    mul-double v6, v10, v12

    .line 233
    .local v6, "deltaY":D
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 235
    .local v2, "delta":D
    new-instance v9, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v9, v0}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    iput-object v9, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeAreaEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 236
    iget-object v9, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeAreaEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v9, v2, v3}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 237
    return-void
.end method

.method private computeConvexHull()V
    .locals 4

    .prologue
    .line 240
    new-instance v1, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 241
    .local v1, "fact":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->getPointArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 242
    .local v0, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/algorithm/ConvexHull;

    invoke-direct {v2, v0, v1}, Lorg/locationtech/jts/algorithm/ConvexHull;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 243
    .local v2, "hull":Lorg/locationtech/jts/algorithm/ConvexHull;
    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/ConvexHull;->getConvexHull()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->convexHull:Lorg/locationtech/jts/geom/Geometry;

    .line 244
    return-void
.end method

.method private static computeVertexEnvelope(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Envelope;
    .locals 4
    .param p0, "vertices"    # Ljava/util/Collection;

    .prologue
    .line 71
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 72
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 74
    .local v2, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 76
    .end local v2    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_0
    return-object v0
.end method

.method private createVertex(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/triangulate/ConstraintVertex;
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;->createVertex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v0, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .end local v0    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/triangulate/ConstraintVertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .restart local v0    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    goto :goto_0
.end method

.method private createVertex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/triangulate/ConstraintVertex;
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "seg"    # Lorg/locationtech/jts/triangulate/Segment;

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    invoke-interface {v1, p1, p2}, Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;->createVertex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    move-result-object v0

    .line 317
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->setOnConstraint(Z)V

    .line 318
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .end local v0    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/triangulate/ConstraintVertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .restart local v0    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    goto :goto_0
.end method

.method private enforceGabriel(Ljava/util/Collection;)I
    .locals 26
    .param p1, "segsToInsert"    # Ljava/util/Collection;

    .prologue
    .line 421
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v21, "newSegments":Ljava/util/List;
    const/16 v25, 0x0

    .line 423
    .local v25, "splits":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v23, "segsToRemove":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/locationtech/jts/triangulate/Segment;

    .line 435
    .local v22, "seg":Lorg/locationtech/jts/triangulate/Segment;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->findNonGabrielPoint(Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 437
    .local v2, "encroachPt":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v2, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitFinder:Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;

    move-object/from16 v0, v22

    invoke-interface {v4, v0, v2}, Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;->findSplitPoint(Lorg/locationtech/jts/triangulate/Segment;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->createVertex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    move-result-object v24

    .line 462
    .local v24, "splitVertex":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->insertSite(Lorg/locationtech/jts/triangulate/ConstraintVertex;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    move-result-object v20

    .line 463
    .local v20, "insertedVertex":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    invoke-virtual/range {v20 .. v20}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v4, v6}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split pt snapped to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/locationtech/jts/util/Debug;->println(Ljava/lang/Object;)V

    .line 472
    :cond_1
    new-instance v3, Lorg/locationtech/jts/triangulate/Segment;

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getStartX()D

    move-result-wide v4

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getStartY()D

    move-result-wide v6

    .line 473
    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getStartZ()D

    move-result-wide v8

    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getX()D

    move-result-wide v10

    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getY()D

    move-result-wide v12

    .line 474
    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getZ()D

    move-result-wide v14

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getData()Ljava/lang/Object;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lorg/locationtech/jts/triangulate/Segment;-><init>(DDDDDDLjava/lang/Object;)V

    .line 475
    .local v3, "s1":Lorg/locationtech/jts/triangulate/Segment;
    new-instance v5, Lorg/locationtech/jts/triangulate/Segment;

    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getX()D

    move-result-wide v6

    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getY()D

    move-result-wide v8

    .line 476
    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getZ()D

    move-result-wide v10

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getEndX()D

    move-result-wide v12

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getEndY()D

    move-result-wide v14

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getEndZ()D

    move-result-wide v16

    .line 477
    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/triangulate/Segment;->getData()Ljava/lang/Object;

    move-result-object v18

    invoke-direct/range {v5 .. v18}, Lorg/locationtech/jts/triangulate/Segment;-><init>(DDDDDDLjava/lang/Object;)V

    .line 478
    .local v5, "s2":Lorg/locationtech/jts/triangulate/Segment;
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v25, v25, 0x1

    .line 483
    goto/16 :goto_0

    .line 484
    .end local v2    # "encroachPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "s1":Lorg/locationtech/jts/triangulate/Segment;
    .end local v5    # "s2":Lorg/locationtech/jts/triangulate/Segment;
    .end local v20    # "insertedVertex":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    .end local v22    # "seg":Lorg/locationtech/jts/triangulate/Segment;
    .end local v24    # "splitVertex":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 485
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 487
    return v25
.end method

.method private findNonGabrielPoint(Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 28
    .param p1, "seg"    # Lorg/locationtech/jts/triangulate/Segment;

    .prologue
    .line 508
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/Segment;->getStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    .line 509
    .local v11, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/Segment;->getEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v12

    .line 511
    .local v12, "q":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v11, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    iget-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    iget-wide v0, v11, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    iget-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 512
    .local v7, "midPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v11, v7}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v14

    .line 515
    .local v14, "segRadius":D
    new-instance v5, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v5, v7}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 516
    .local v5, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v5, v14, v15}, Lorg/locationtech/jts/geom/Envelope;->expandBy(D)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/index/kdtree/KdTree;->query(Lorg/locationtech/jts/geom/Envelope;)Ljava/util/List;

    move-result-object v13

    .line 522
    .local v13, "result":Ljava/util/List;
    const/4 v4, 0x0

    .line 523
    .local v4, "closestNonGabriel":Lorg/locationtech/jts/geom/Coordinate;
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 524
    .local v8, "minDist":D
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 525
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 526
    .local v10, "nextNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    invoke-virtual {v10}, Lorg/locationtech/jts/index/kdtree/KdNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v18

    .line 528
    .local v18, "testPt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 531
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v20

    .line 532
    .local v20, "testRadius":D
    cmpg-double v19, v20, v14

    if-gez v19, :cond_0

    .line 534
    move-wide/from16 v16, v20

    .line 535
    .local v16, "testDist":D
    if-eqz v4, :cond_1

    cmpg-double v19, v16, v8

    if-gez v19, :cond_0

    .line 536
    :cond_1
    move-object/from16 v4, v18

    .line 537
    move-wide/from16 v8, v16

    goto :goto_0

    .line 541
    .end local v10    # "nextNode":Lorg/locationtech/jts/index/kdtree/KdNode;
    .end local v16    # "testDist":D
    .end local v18    # "testPt":Lorg/locationtech/jts/geom/Coordinate;
    .end local v20    # "testRadius":D
    :cond_2
    return-object v4
.end method

.method private getPointArray()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    .line 281
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segVertices:Ljava/util/List;

    .line 282
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v4, v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 283
    .local v4, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .line 284
    .local v2, "index":I
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 286
    .local v5, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v3

    .line 287
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 288
    .end local v5    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_0
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segVertices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i2":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 290
    .restart local v5    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v3

    .line 291
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 292
    .end local v5    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_1
    return-object v4
.end method

.method private insertSite(Lorg/locationtech/jts/triangulate/ConstraintVertex;)Lorg/locationtech/jts/triangulate/ConstraintVertex;
    .locals 4
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .prologue
    .line 335
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/locationtech/jts/index/kdtree/KdTree;->insert(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)Lorg/locationtech/jts/index/kdtree/KdNode;

    move-result-object v0

    .line 336
    .local v0, "kdnode":Lorg/locationtech/jts/index/kdtree/KdNode;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->incDel:Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->insertSite(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 347
    .end local p1    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    :goto_0
    return-object p1

    .line 339
    .restart local p1    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/index/kdtree/KdNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .line 340
    .local v1, "snappedV":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/triangulate/ConstraintVertex;->merge(Lorg/locationtech/jts/triangulate/ConstraintVertex;)V

    move-object p1, v1

    .line 341
    goto :goto_0
.end method

.method private insertSites(Ljava/util/Collection;)V
    .locals 4
    .param p1, "vertices"    # Ljava/util/Collection;

    .prologue
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding sites: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/util/Debug;->println(Ljava/lang/Object;)V

    .line 328
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .line 330
    .local v1, "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->insertSite(Lorg/locationtech/jts/triangulate/ConstraintVertex;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    goto :goto_0

    .line 332
    .end local v1    # "v":Lorg/locationtech/jts/triangulate/ConstraintVertex;
    :cond_0
    return-void
.end method


# virtual methods
.method public enforceConstraints()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    .line 386
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->addConstraintVertices()V

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "count":I
    const/4 v1, 0x0

    .line 392
    .local v1, "splits":I
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segments:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->enforceGabriel(Ljava/util/Collection;)I

    move-result v1

    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   Splits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   Current # segments = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segments:Ljava/util/List;

    .line 396
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v2}, Lorg/locationtech/jts/util/Debug;->println(Ljava/lang/Object;)V

    .line 397
    if-lez v1, :cond_1

    if-lt v0, v4, :cond_0

    .line 398
    :cond_1
    if-ne v0, v4, :cond_2

    .line 399
    const-string v2, "ABORTED! Too many iterations while enforcing constraints"

    invoke-static {v2}, Lorg/locationtech/jts/util/Debug;->println(Ljava/lang/Object;)V

    .line 400
    invoke-static {}, Lorg/locationtech/jts/util/Debug;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_2

    .line 401
    new-instance v2, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;

    const-string v3, "Too many splitting iterations while enforcing constraints.  Last split point was at: "

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, v3, v4}, Lorg/locationtech/jts/triangulate/ConstraintEnforcementException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v2

    .line 405
    :cond_2
    return-void
.end method

.method public formInitialDelaunay()V
    .locals 4

    .prologue
    .line 368
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeBoundingBox()V

    .line 369
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->computeAreaEnv:Lorg/locationtech/jts/geom/Envelope;

    iget-wide v2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->tolerance:D

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;-><init>(Lorg/locationtech/jts/geom/Envelope;D)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 370
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    new-instance v1, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->setLocator(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;)V

    .line 371
    new-instance v0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->incDel:Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;

    .line 372
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->insertSites(Ljava/util/Collection;)V

    .line 373
    return-void
.end method

.method public getConstraintSegments()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segments:Ljava/util/List;

    return-object v0
.end method

.method public getConvexHull()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->convexHull:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getInitialVertices()Ljava/util/List;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->initialVertices:Ljava/util/List;

    return-object v0
.end method

.method public getKDT()Lorg/locationtech/jts/index/kdtree/KdTree;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->kdt:Lorg/locationtech/jts/index/kdtree/KdTree;

    return-object v0
.end method

.method public getSubdivision()Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->tolerance:D

    return-wide v0
.end method

.method public getVertexFactory()Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    return-object v0
.end method

.method public insertSite(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->createVertex(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->insertSite(Lorg/locationtech/jts/triangulate/ConstraintVertex;)Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .line 360
    return-void
.end method

.method public setConstraints(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "segments"    # Ljava/util/List;
    .param p2, "segVertices"    # Ljava/util/List;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segments:Ljava/util/List;

    .line 130
    iput-object p2, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->segVertices:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setSplitPointFinder(Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;)V
    .locals 0
    .param p1, "splitFinder"    # Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->splitFinder:Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;

    .line 143
    return-void
.end method

.method public setVertexFactory(Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;)V
    .locals 0
    .param p1, "vertexFactory"    # Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/ConformingDelaunayTriangulator;->vertexFactory:Lorg/locationtech/jts/triangulate/ConstraintVertexFactory;

    .line 172
    return-void
.end method
