.class public Lorg/locationtech/jts/operation/overlay/PointBuilder;
.super Ljava/lang/Object;
.source "PointBuilder.java"


# instance fields
.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

.field private resultPointList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/operation/overlay/OverlayOp;Lorg/locationtech/jts/geom/GeometryFactory;Lorg/locationtech/jts/algorithm/PointLocator;)V
    .locals 1
    .param p1, "op"    # Lorg/locationtech/jts/operation/overlay/OverlayOp;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .param p3, "ptLocator"    # Lorg/locationtech/jts/algorithm/PointLocator;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->resultPointList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    .line 36
    iput-object p2, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 38
    return-void
.end method

.method private extractNonCoveredResultNodes(I)V
    .locals 4
    .param p1, "opCode"    # I

    .prologue
    .line 70
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->getGraph()Lorg/locationtech/jts/geomgraph/PlanarGraph;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nodeit":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 74
    .local v1, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->isInResult()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->isIncidentEdgeInResult()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getDegree()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 86
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isResultOfOp(Lorg/locationtech/jts/geomgraph/Label;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/overlay/PointBuilder;->filterCoveredNodeToPoint(Lorg/locationtech/jts/geomgraph/Node;)V

    goto :goto_0

    .line 92
    .end local v0    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :cond_2
    return-void
.end method

.method private filterCoveredNodeToPoint(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 3
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 106
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->op:Lorg/locationtech/jts/operation/overlay/OverlayOp;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/operation/overlay/OverlayOp;->isCoveredByLA(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    .line 108
    .local v1, "pt":Lorg/locationtech/jts/geom/Point;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->resultPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1    # "pt":Lorg/locationtech/jts/geom/Point;
    :cond_0
    return-void
.end method


# virtual methods
.method public build(I)Ljava/util/List;
    .locals 1
    .param p1, "opCode"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/PointBuilder;->extractNonCoveredResultNodes(I)V

    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/operation/overlay/PointBuilder;->resultPointList:Ljava/util/List;

    return-object v0
.end method
