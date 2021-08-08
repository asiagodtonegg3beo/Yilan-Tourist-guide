.class public Lorg/locationtech/jts/operation/relate/RelateNodeGraph;
.super Ljava/lang/Object;
.source "RelateNodeGraph.java"


# instance fields
.field private nodes:Lorg/locationtech/jts/geomgraph/NodeMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/locationtech/jts/geomgraph/NodeMap;

    new-instance v1, Lorg/locationtech/jts/operation/relate/RelateNodeFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/operation/relate/RelateNodeFactory;-><init>()V

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/NodeMap;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    .line 54
    return-void
.end method


# virtual methods
.method public build(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 3
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, p1, v2}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->computeIntersectionNodes(Lorg/locationtech/jts/geomgraph/GeometryGraph;I)V

    .line 66
    invoke-virtual {p0, p1, v2}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->copyNodesAndLabels(Lorg/locationtech/jts/geomgraph/GeometryGraph;I)V

    .line 71
    new-instance v0, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;-><init>()V

    .line 72
    .local v0, "eeBuilder":Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->computeEdgeEnds(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "eeList":Ljava/util/List;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->insertEdgeEnds(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public computeIntersectionNodes(Lorg/locationtech/jts/geomgraph/GeometryGraph;I)V
    .locals 8
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;
    .param p2, "argIndex"    # I

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "edgeIt":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 92
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 93
    .local v1, "eLoc":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "eiIt":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 95
    .local v3, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    iget-object v7, v3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 96
    .local v5, "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 97
    invoke-virtual {v5, p2}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabelBoundary(I)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/relate/RelateNode;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabel(II)V

    goto :goto_0

    .line 105
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eLoc":I
    .end local v3    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v4    # "eiIt":Ljava/util/Iterator;
    .end local v5    # "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    :cond_3
    return-void
.end method

.method public copyNodesAndLabels(Lorg/locationtech/jts/geomgraph/GeometryGraph;I)V
    .locals 5
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;
    .param p2, "argIndex"    # I

    .prologue
    .line 118
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nodeIt":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 120
    .local v0, "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v1

    .line 121
    .local v1, "newNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Lorg/locationtech/jts/geomgraph/Node;->setLabel(II)V

    goto :goto_0

    .line 124
    .end local v0    # "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    .end local v1    # "newNode":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public getNodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public insertEdgeEnds(Ljava/util/List;)V
    .locals 3
    .param p1, "ee"    # Ljava/util/List;

    .prologue
    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 130
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateNodeGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geomgraph/NodeMap;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    goto :goto_0

    .line 132
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    return-void
.end method
