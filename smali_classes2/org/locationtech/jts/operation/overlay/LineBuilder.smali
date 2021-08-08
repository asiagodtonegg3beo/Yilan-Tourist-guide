.class public Lorg/locationtech/jts/operation/overlay/LineBuilder;
.super Ljava/lang/Object;
.source "LineBuilder.java"


# instance fields
.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private lineEdgesList:Ljava/util/List;

.field private op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

.field private ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

.field private resultLineList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/operation/overlay/OverlayOp;Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/algorithm/PointLocator;)V
    .locals 1
    .param p1, "op"    # Lorg/locationtech/jts/operation/overlay/OverlayOp;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .param p3, "ptLocator"    # Lorg/locationtech/jts/algorithm/PointLocator;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->lineEdgesList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->resultLineList:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    .line 44
    iput-object p2, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 45
    iput-object p3, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 46
    return-void
.end method

.method private buildLines(I)V
    .locals 6
    .param p1, "opCode"    # I

    .prologue
    .line 155
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->lineEdgesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 157
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 158
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    .line 159
    .local v3, "line":Lorg/locationtech/jts/geom/LineString;
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->resultLineList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geomgraph/Edge;->setInResult(Z)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v3    # "line":Lorg/locationtech/jts/geom/LineString;
    :cond_0
    return-void
.end method

.method private collectBoundaryTouchEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;ILjava/util/List;)V
    .locals 3
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "opCode"    # I
    .param p3, "edges"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 136
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isLineEdge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInteriorAreaEdge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->isInResult()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->isInResult()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 145
    invoke-static {v0, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(Lorg/locationtech/jts/geomgraph/Label;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 148
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisitedEdge(Z)V

    goto :goto_0

    .line 142
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private collectLineEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;ILjava/util/List;)V
    .locals 3
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "opCode"    # I
    .param p3, "edges"    # Ljava/util/List;

    .prologue
    .line 109
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    .line 110
    .local v1, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v0

    .line 112
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isLineEdge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(Lorg/locationtech/jts/geomgraph/Label;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisitedEdge(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method private collectLines(I)V
    .locals 3
    .param p1, "opCode"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getGraph()Lorg/locationtech/jts/geomgraph/PlanarGraph;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 92
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->lineEdgesList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v2}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->collectLineEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;ILjava/util/List;)V

    .line 93
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->lineEdgesList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v2}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->collectBoundaryTouchEdge(Lorg/locationtech/jts/geomgraph/DirectedEdge;ILjava/util/List;)V

    goto :goto_0

    .line 95
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    return-void
.end method

.method private findCoveredLineEdges()V
    .locals 8

    .prologue
    .line 68
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v6}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getGraph()Lorg/locationtech/jts/geomgraph/PlanarGraph;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/Node;

    .line 71
    .local v4, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->findCoveredLineEdges()V

    goto :goto_0

    .line 78
    .end local v4    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v6}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getGraph()Lorg/locationtech/jts/geomgraph/PlanarGraph;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 80
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    .line 81
    .local v1, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isLineEdge()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->isCoveredSet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isCoveredByA(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 83
    .local v2, "isCovered":Z
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geomgraph/Edge;->setCovered(Z)V

    goto :goto_1

    .line 86
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v1    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v2    # "isCovered":Z
    :cond_2
    return-void
.end method

.method private labelIsolatedLine(Lorg/locationtech/jts/geomgraph/Edge;I)V
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "targetIndex"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v3, p2}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getArgGeometry(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    .line 184
    .local v0, "loc":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 185
    return-void
.end method

.method private labelIsolatedLines(Ljava/util/List;)V
    .locals 5
    .param p1, "edgesList"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 168
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 170
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->isIsolated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-direct {p0, v0, v4}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->labelIsolatedLine(Lorg/locationtech/jts/geomgraph/Edge;I)V

    goto :goto_0

    .line 174
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->labelIsolatedLine(Lorg/locationtech/jts/geomgraph/Edge;I)V

    goto :goto_0

    .line 177
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_2
    return-void
.end method


# virtual methods
.method public build(I)Ljava/util/List;
    .locals 1
    .param p1, "opCode"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->findCoveredLineEdges()V

    .line 53
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->collectLines(I)V

    .line 55
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/LineBuilder;->buildLines(I)V

    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/LineBuilder;->resultLineList:Ljava/util/List;

    return-object v0
.end method
