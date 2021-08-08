.class Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;
.super Ljava/lang/Object;
.source "SubgraphDepthLocater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
    }
.end annotation


# instance fields
.field private cga:Lorg/locationtech/jts/algorithm/CGAlgorithms;

.field private seg:Lorg/locationtech/jts/geom/LineSegment;

.field private subgraphs:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "subgraphs"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 41
    new-instance v0, Lorg/locationtech/jts/algorithm/CGAlgorithms;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->cga:Lorg/locationtech/jts/algorithm/CGAlgorithms;

    .line 45
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->subgraphs:Ljava/util/Collection;

    .line 46
    return-void
.end method

.method private findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;)Ljava/util/List;
    .locals 8
    .param p1, "stabbingRayLeftPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "stabbedSegments":Ljava/util/List;
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->subgraphs:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;

    .line 72
    .local v0, "bsg":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    .line 73
    .local v1, "env":Lorg/locationtech/jts/geom/Envelope;
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 74
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->getDirectedEdges()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 79
    .end local v0    # "bsg":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    .end local v1    # "env":Lorg/locationtech/jts/geom/Envelope;
    :cond_1
    return-object v3
.end method

.method private findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "stabbingRayLeftPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dirEdges"    # Ljava/util/List;
    .param p3, "stabbedSegments"    # Ljava/util/List;

    .prologue
    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 100
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-direct {p0, p1, v0, p3}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/DirectedEdge;Ljava/util/List;)V

    goto :goto_0

    .line 104
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return-void
.end method

.method private findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/DirectedEdge;Ljava/util/List;)V
    .locals 10
    .param p1, "stabbingRayLeftPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dirEdge"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p3, "stabbedSegments"    # Ljava/util/List;

    .prologue
    .line 118
    invoke-virtual {p2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 119
    .local v3, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 120
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    aget-object v7, v3, v2

    iput-object v7, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 121
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v3, v7

    iput-object v7, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 123
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v8, v8, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 124
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LineSegment;->reverse()V

    .line 127
    :cond_0
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v8, v8, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 128
    .local v4, "maxx":D
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_2
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LineSegment;->isHorizontal()Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v8, v8, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v8, v8, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 140
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v7, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v7, v7, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v6, v7, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 145
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v0

    .line 147
    .local v0, "depth":I
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v0

    .line 149
    :cond_3
    new-instance v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v1, v6, v0}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;I)V

    .line 150
    .local v1, "ds":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v0    # "depth":I
    .end local v1    # "ds":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
    .end local v4    # "maxx":D
    :cond_4
    return-void
.end method


# virtual methods
.method public getDepth(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->findStabbedSegments(Lorg/locationtech/jts/geom/Coordinate;)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "stabbedSegments":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 55
    :goto_0
    return v2

    .line 54
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;

    .line 55
    .local v0, "ds":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;
    invoke-static {v0}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;->access$000(Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater$DepthSegment;)I

    move-result v2

    goto :goto_0
.end method
