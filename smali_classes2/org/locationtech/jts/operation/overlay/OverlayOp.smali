.class public Lorg/locationtech/jts/operation/overlay/OverlayOp;
.super Lorg/locationtech/jts/operation/GeometryGraphOperation;
.source "OverlayOp.java"


# static fields
.field public static final DIFFERENCE:I = 0x3

.field public static final INTERSECTION:I = 0x1

.field public static final SYMDIFFERENCE:I = 0x4

.field public static final UNION:I = 0x2


# instance fields
.field private edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

.field private final ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

.field private resultGeom:Lorg/locationtech/jts/geom/Geometry;

.field private resultLineList:Ljava/util/List;

.field private resultPointList:Ljava/util/List;

.field private resultPolyList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/GeometryGraphOperation;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 143
    new-instance v0, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 148
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-direct {v0}, Lorg/locationtech/jts/geomgraph/EdgeList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPolyList:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultLineList:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPointList:Ljava/util/List;

    .line 163
    new-instance v0, Lorg/locationtech/jts/geomgraph/PlanarGraph;

    new-instance v1, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;-><init>()V

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .line 169
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 170
    return-void
.end method

.method private cancelDuplicateResultEdges()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 552
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 554
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    .line 555
    .local v2, "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setInResult(Z)V

    .line 557
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setInResult(Z)V

    goto :goto_0

    .line 561
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return-void
.end method

.method private computeGeometry(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "resultPointList"    # Ljava/util/List;
    .param p2, "resultLineList"    # Ljava/util/List;
    .param p3, "resultPolyList"    # Ljava/util/List;
    .param p4, "opcode"    # I

    .prologue
    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v0, "geomList":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p4, v1, v2, v3}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    goto :goto_0
.end method

.method private computeLabelling()V
    .locals 4

    .prologue
    .line 431
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 434
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->computeLabelling([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_0

    .line 436
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->mergeSymLabels()V

    .line 437
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->updateNodeLabelling()V

    .line 438
    return-void
.end method

.method private computeLabelsFromDepths()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 348
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/EdgeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 349
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Edge;

    .line 350
    .local v1, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    .line 351
    .local v4, "lbl":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getDepth()Lorg/locationtech/jts/geomgraph/Depth;

    move-result-object v0

    .line 357
    .local v0, "depth":Lorg/locationtech/jts/geomgraph/Depth;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Depth;->isNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Depth;->normalize()V

    .line 359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 360
    invoke-virtual {v4, v2}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/Depth;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/Depth;->getDelta(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 368
    invoke-virtual {v4, v2}, Lorg/locationtech/jts/geomgraph/Label;->toLine(I)V

    .line 359
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v0, v2, v6}, Lorg/locationtech/jts/geomgraph/Depth;->isNull(II)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_2
    const-string v8, "depth of LEFT side has not been initialized"

    invoke-static {v5, v8}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 378
    invoke-virtual {v0, v2, v6}, Lorg/locationtech/jts/geomgraph/Depth;->getLocation(II)I

    move-result v5

    invoke-virtual {v4, v2, v6, v5}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    .line 379
    invoke-virtual {v0, v2, v9}, Lorg/locationtech/jts/geomgraph/Depth;->isNull(II)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_3
    const-string v8, "depth of RIGHT side has not been initialized"

    invoke-static {v5, v8}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 380
    invoke-virtual {v0, v2, v9}, Lorg/locationtech/jts/geomgraph/Depth;->getLocation(II)I

    move-result v5

    invoke-virtual {v4, v2, v9, v5}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(III)V

    goto :goto_1

    :cond_3
    move v5, v7

    .line 377
    goto :goto_2

    :cond_4
    move v5, v7

    .line 379
    goto :goto_3

    .line 386
    .end local v0    # "depth":Lorg/locationtech/jts/geomgraph/Depth;
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v2    # "i":I
    .end local v4    # "lbl":Lorg/locationtech/jts/geomgraph/Label;
    :cond_5
    return-void
.end method

.method private computeOverlay(I)V
    .locals 10
    .param p1, "opCode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    invoke-direct {p0, v8}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->copyPoints(I)V

    .line 200
    invoke-direct {p0, v9}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->copyPoints(I)V

    .line 203
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v8}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 204
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v8}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 207
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v6, v6, v9

    iget-object v7, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v7, v9}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeEdgeIntersections(Lorg/locationtech/jts/geomgraph/GeometryGraph;Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "baseSplitEdges":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    invoke-virtual {v5, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSplitEdges(Ljava/util/List;)V

    .line 211
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v9

    invoke-virtual {v5, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSplitEdges(Ljava/util/List;)V

    .line 212
    move-object v4, v0

    .line 214
    .local v4, "splitEdges":Ljava/util/List;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->insertUniqueEdges(Ljava/util/List;)V

    .line 216
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->computeLabelsFromDepths()V

    .line 217
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->replaceCollapsedEdges()V

    .line 231
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/EdgeList;->getEdges()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lorg/locationtech/jts/geomgraph/EdgeNodingValidator;->checkValid(Ljava/util/Collection;)V

    .line 233
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/EdgeList;->getEdges()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->addEdges(Ljava/util/List;)V

    .line 234
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->computeLabelling()V

    .line 236
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->labelIncompleteNodes()V

    .line 246
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->findResultAreaEdges(I)V

    .line 247
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->cancelDuplicateResultEdges()V

    .line 249
    new-instance v3, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;

    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v3, v5}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 250
    .local v3, "polyBuilder":Lorg/locationtech/jts/operation/overlay/PolygonBuilder;
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v3, v5}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->add(Lorg/locationtech/jts/geomgraph/PlanarGraph;)V

    .line 251
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->getPolygons()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPolyList:Ljava/util/List;

    .line 253
    new-instance v1, Lorg/locationtech/jts/operation/overlay/LineBuilder;

    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v1, p0, v5, v6}, Lorg/locationtech/jts/operation/overlay/LineBuilder;-><init>(Lorg/locationtech/jts/operation/overlay/OverlayOp;Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/algorithm/PointLocator;)V

    .line 254
    .local v1, "lineBuilder":Lorg/locationtech/jts/operation/overlay/LineBuilder;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->build(I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultLineList:Ljava/util/List;

    .line 256
    new-instance v2, Lorg/locationtech/jts/operation/overlay/PointBuilder;

    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v2, p0, v5, v6}, Lorg/locationtech/jts/operation/overlay/PointBuilder;-><init>(Lorg/locationtech/jts/operation/overlay/OverlayOp;Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/algorithm/PointLocator;)V

    .line 257
    .local v2, "pointBuilder":Lorg/locationtech/jts/operation/overlay/PointBuilder;
    invoke-virtual {v2, p1}, Lorg/locationtech/jts/operation/overlay/PointBuilder;->build(I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPointList:Ljava/util/List;

    .line 260
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPointList:Ljava/util/List;

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultLineList:Ljava/util/List;

    iget-object v7, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPolyList:Ljava/util/List;

    invoke-direct {p0, v5, v6, v7, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->computeGeometry(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 261
    return-void
.end method

.method private copyPoints(I)V
    .locals 5
    .param p1, "argIndex"    # I

    .prologue
    .line 415
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 417
    .local v0, "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v2

    .line 418
    .local v2, "newNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/locationtech/jts/geomgraph/Node;->setLabel(II)V

    goto :goto_0

    .line 420
    .end local v0    # "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    .end local v2    # "newNode":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public static createEmptyResult(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "overlayOpCode"    # I
    .param p1, "a"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "b"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v1, 0x0

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "result":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultDimension(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 657
    :goto_0
    return-object v0

    .line 645
    :pswitch_0
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v0

    .line 646
    goto :goto_0

    .line 648
    :pswitch_1
    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    .line 649
    goto :goto_0

    .line 651
    :pswitch_2
    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p3, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 652
    goto :goto_0

    .line 654
    :pswitch_3
    invoke-virtual {p3, v1, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findResultAreaEdges(I)V
    .locals 7
    .param p1, "opCode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 529
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 532
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 533
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInteriorAreaEdge()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 536
    invoke-virtual {v2, v3, v6}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v3

    .line 537
    invoke-virtual {v2, v5, v6}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v4

    .line 535
    invoke-static {v3, v4, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setInResult(Z)V

    goto :goto_0

    .line 543
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_1
    return-void
.end method

.method private insertUniqueEdges(Ljava/util/List;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/List;

    .prologue
    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 267
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->insertUniqueEdge(Lorg/locationtech/jts/geomgraph/Edge;)V

    goto :goto_0

    .line 269
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method private isCovered(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;)Z
    .locals 4
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geomList"    # Ljava/util/List;

    .prologue
    .line 591
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 593
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {v3, p1, v0}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v2

    .line 594
    .local v2, "loc":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    .line 596
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v2    # "loc":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isResultOfOp(III)Z
    .locals 2
    .param p0, "loc0"    # I
    .param p1, "loc1"    # I
    .param p2, "overlayOpCode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 124
    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 125
    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 126
    :cond_1
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 140
    :cond_2
    :goto_0
    return v0

    .line 128
    :pswitch_0
    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    :cond_3
    move v0, v1

    goto :goto_0

    .line 131
    :pswitch_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 134
    :pswitch_2
    if-nez p0, :cond_6

    if-nez p1, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0

    .line 137
    :pswitch_3
    if-nez p0, :cond_7

    if-nez p1, :cond_2

    :cond_7
    if-eqz p0, :cond_8

    if-eqz p1, :cond_2

    :cond_8
    move v0, v1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isResultOfOp(Lorg/locationtech/jts/geomgraph/Label;I)Z
    .locals 3
    .param p0, "label"    # Lorg/locationtech/jts/geomgraph/Label;
    .param p1, "opCode"    # I

    .prologue
    .line 104
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v0

    .line 105
    .local v0, "loc0":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 106
    .local v1, "loc1":I
    invoke-static {v0, v1, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(III)Z

    move-result v2

    return v2
.end method

.method private labelIncompleteNode(Lorg/locationtech/jts/geomgraph/Node;I)V
    .locals 4
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;
    .param p2, "targetIndex"    # I

    .prologue
    .line 512
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    .line 516
    .local v0, "loc":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 517
    return-void
.end method

.method private labelIncompleteNodes()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 483
    const/4 v3, 0x0

    .line 484
    .local v3, "nodeCount":I
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ni":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 486
    .local v1, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 487
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->isIsolated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 489
    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    invoke-direct {p0, v1, v5}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->labelIncompleteNode(Lorg/locationtech/jts/geomgraph/Node;I)V

    .line 495
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v4, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->updateLabelling(Lorg/locationtech/jts/geomgraph/Label;)V

    goto :goto_0

    .line 492
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->labelIncompleteNode(Lorg/locationtech/jts/geomgraph/Node;I)V

    goto :goto_1

    .line 505
    .end local v0    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :cond_2
    return-void
.end method

.method private mergeSymLabels()V
    .locals 3

    .prologue
    .line 447
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 449
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->mergeSymLabels()V

    goto :goto_0

    .line 452
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public static overlayOp(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;I)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "geom1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "opCode"    # I

    .prologue
    .line 85
    new-instance v1, Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-direct {v1, p0, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 86
    .local v1, "gov":Lorg/locationtech/jts/operation/overlay/OverlayOp;
    invoke-virtual {v1, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 87
    .local v0, "geomOv":Lorg/locationtech/jts/geom/Geometry;
    return-object v0
.end method

.method private replaceCollapsedEdges()V
    .locals 4

    .prologue
    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "newEdges":Ljava/util/List;
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/EdgeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 396
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 399
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCollapsedEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geomgraph/EdgeList;->addAll(Ljava/util/Collection;)V

    .line 403
    return-void
.end method

.method private static resultDimension(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)I
    .locals 3
    .param p0, "opCode"    # I
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 662
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v0

    .line 663
    .local v0, "dim0":I
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    .line 665
    .local v1, "dim1":I
    const/4 v2, -0x1

    .line 666
    .local v2, "resultDimension":I
    packed-switch p0, :pswitch_data_0

    .line 687
    :goto_0
    return v2

    .line 668
    :pswitch_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 669
    goto :goto_0

    .line 671
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 672
    goto :goto_0

    .line 674
    :pswitch_2
    move v2, v0

    .line 675
    goto :goto_0

    .line 684
    :pswitch_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateNodeLabelling()V
    .locals 4

    .prologue
    .line 459
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 461
    .local v1, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 462
    .local v0, "lbl":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geomgraph/Label;->merge(Lorg/locationtech/jts/geomgraph/Label;)V

    goto :goto_0

    .line 464
    .end local v0    # "lbl":Lorg/locationtech/jts/geomgraph/Label;
    .end local v1    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method


# virtual methods
.method public getGraph()Lorg/locationtech/jts/geomgraph/PlanarGraph;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    return-object v0
.end method

.method public getResultGeometry(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "overlayOpCode"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->computeOverlay(I)V

    .line 184
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultGeom:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method protected insertUniqueEdge(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 5
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 281
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geomgraph/EdgeList;->findEqualEdge(Lorg/locationtech/jts/geomgraph/Edge;)Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    .line 284
    .local v1, "existingEdge":Lorg/locationtech/jts/geomgraph/Edge;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 287
    .local v2, "existingLabel":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    .line 290
    .local v3, "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/Edge;->isPointwiseEqual(Lorg/locationtech/jts/geomgraph/Edge;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    new-instance v3, Lorg/locationtech/jts/geomgraph/Label;

    .end local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 292
    .restart local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Label;->flip()V

    .line 294
    :cond_0
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getDepth()Lorg/locationtech/jts/geomgraph/Depth;

    move-result-object v0

    .line 297
    .local v0, "depth":Lorg/locationtech/jts/geomgraph/Depth;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Depth;->isNull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/Depth;->add(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 301
    :cond_1
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/Depth;->add(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 302
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/Label;->merge(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 313
    .end local v0    # "depth":Lorg/locationtech/jts/geomgraph/Depth;
    .end local v2    # "existingLabel":Lorg/locationtech/jts/geomgraph/Label;
    .end local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geomgraph/EdgeList;->add(Lorg/locationtech/jts/geomgraph/Edge;)V

    goto :goto_0
.end method

.method public isCoveredByA(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 582
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPolyList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isCovered(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoveredByLA(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x1

    .line 570
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultLineList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isCovered(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 571
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/OverlayOp;->resultPolyList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isCovered(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    const/4 v0, 0x0

    goto :goto_0
.end method
