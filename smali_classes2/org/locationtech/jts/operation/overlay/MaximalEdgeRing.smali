.class public Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
.super Lorg/locationtech/jts/geomgraph/EdgeRing;
.source "MaximalEdgeRing.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "start"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/EdgeRing;-><init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 49
    return-void
.end method


# virtual methods
.method public buildMinimalRings()Ljava/util/List;
    .locals 4

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "minEdgeRings":Ljava/util/List;
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 79
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getMinEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v3

    if-nez v3, :cond_1

    .line 80
    new-instance v2, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;

    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v2, v0, v3}, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;-><init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 81
    .local v2, "minEr":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "minEr":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 84
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    if-ne v0, v3, :cond_0

    .line 85
    return-object v1
.end method

.method public getNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    return-object v0
.end method

.method public linkDirectedEdgesForMinimalEdgeRings()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 68
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v1

    .line 69
    .local v1, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v2, p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->linkMinimalDirectedEdges(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    .line 70
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    if-ne v0, v2, :cond_0

    .line 72
    return-void
.end method

.method public setEdgeRing(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 0
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "er"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setEdgeRing(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    .line 58
    return-void
.end method
