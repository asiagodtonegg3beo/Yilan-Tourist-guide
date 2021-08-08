.class public Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;
.super Ljava/lang/Object;
.source "EdgeSetNoder.java"


# instance fields
.field private inputEdges:Ljava/util/List;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 1
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->inputEdges:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 40
    return-void
.end method


# virtual methods
.method public addEdges(Ljava/util/List;)V
    .locals 1
    .param p1, "edges"    # Ljava/util/List;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->inputEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    return-void
.end method

.method public getNodedEdges()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 49
    new-instance v1, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;

    invoke-direct {v1}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;-><init>()V

    .line 50
    .local v1, "esi":Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
    new-instance v3, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v7, v6}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)V

    .line 51
    .local v3, "si":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->inputEdges:Ljava/util/List;

    invoke-virtual {v1, v5, v3, v7}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;->computeIntersections(Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Z)V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v4, "splitEdges":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/overlay/EdgeSetNoder;->inputEdges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 57
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->addSplitEdges(Ljava/util/List;)V

    goto :goto_0

    .line 59
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-object v4
.end method
