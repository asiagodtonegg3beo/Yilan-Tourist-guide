.class public Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
.super Lorg/locationtech/jts/planargraph/DirectedEdge;
.source "LineMergeDirectedEdge.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 0
    .param p1, "from"    # Lorg/locationtech/jts/planargraph/Node;
    .param p2, "to"    # Lorg/locationtech/jts/planargraph/Node;
    .param p3, "directionPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "edgeDirection"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/planargraph/DirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public getNext()Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 53
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 57
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 55
    goto :goto_1
.end method
