.class public Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;
.super Ljava/lang/Object;
.source "ConsistentAreaTester.java"


# instance fields
.field private geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private final li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private nodeGraph:Lorg/locationtech/jts/operation/relate/RelateNodeGraph;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 54
    new-instance v0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->nodeGraph:Lorg/locationtech/jts/operation/relate/RelateNodeGraph;

    .line 66
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 67
    return-void
.end method

.method private isNodeEdgeAreaLabelsConsistent()Z
    .locals 4

    .prologue
    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->nodeGraph:Lorg/locationtech/jts/operation/relate/RelateNodeGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeIt":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 109
    .local v0, "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/relate/RelateNode;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->isAreaLabelsConsistent(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/relate/RelateNode;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    iput-object v2, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 111
    const/4 v2, 0x0

    .line 114
    .end local v0    # "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInvalidPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasDuplicateRings()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    iget-object v6, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->nodeGraph:Lorg/locationtech/jts/operation/relate/RelateNodeGraph;

    invoke-virtual {v6}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "nodeIt":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 136
    .local v2, "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/relate/RelateNode;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;

    .line 138
    .local v0, "eeb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->getEdgeEnds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 139
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 144
    .end local v0    # "eeb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    :goto_0
    return v4

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public isNodeConsistentArea()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 85
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v1, v2, v3, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    move-result-object v0

    .line 89
    .local v0, "intersector":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperIntersection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->getProperIntersectionPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iput-object v1, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 91
    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->nodeGraph:Lorg/locationtech/jts/operation/relate/RelateNodeGraph;

    iget-object v2, p0, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->build(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 96
    invoke-direct {p0}, Lorg/locationtech/jts/operation/valid/ConsistentAreaTester;->isNodeEdgeAreaLabelsConsistent()Z

    move-result v1

    goto :goto_0
.end method
