.class public Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;
.super Ljava/lang/Object;
.source "ConnectedInteriorTester.java"


# instance fields
.field private disconnectedRingcoord:Lorg/locationtech/jts/geom/Coordinate;

.field private geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 1
    .param p1, "geomGraph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 72
    iput-object p1, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 73
    return-void
.end method

.method private buildEdgeRings(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "dirEdges"    # Ljava/util/Collection;

    .prologue
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "edgeRings":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 127
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v5

    if-nez v5, :cond_0

    .line 129
    new-instance v2, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;

    iget-object v5, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v2, v0, v5}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;-><init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 131
    .local v2, "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->linkDirectedEdgesForMinimalEdgeRings()V

    .line 132
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->buildMinimalRings()Ljava/util/List;

    move-result-object v4

    .line 133
    .local v4, "minEdgeRings":Ljava/util/List;
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    .end local v4    # "minEdgeRings":Ljava/util/List;
    :cond_1
    return-object v1
.end method

.method public static findDifferentPoint([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 57
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    aget-object v1, p0, v0

    .line 60
    :goto_1
    return-object v1

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasUnvisitedShellEdge(Ljava/util/List;)Z
    .locals 8
    .param p1, "edgeRings"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x0

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 209
    .local v2, "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/EdgeRing;->isHole()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getEdges()Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, "edges":Ljava/util/List;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 215
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v6

    if-nez v6, :cond_0

    .line 221
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 222
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 224
    .restart local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v6

    if-nez v6, :cond_3

    .line 226
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->disconnectedRingcoord:Lorg/locationtech/jts/geom/Coordinate;

    .line 227
    const/4 v5, 0x1

    .line 231
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v1    # "edges":Ljava/util/List;
    .end local v2    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    .end local v4    # "j":I
    :cond_2
    return v5

    .line 221
    .restart local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .restart local v1    # "edges":Ljava/util/List;
    .restart local v2    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    .restart local v4    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private setInteriorEdgesInResult(Lorg/locationtech/jts/geomgraph/PlanarGraph;)V
    .locals 5
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 110
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setInResult(Z)V

    goto :goto_0

    .line 114
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return-void
.end method

.method private visitInteriorRing(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geomgraph/PlanarGraph;)V
    .locals 9
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 162
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 163
    .local v5, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    aget-object v3, v5, v6

    .line 168
    .local v3, "pt0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v5, v3}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->findDifferentPoint([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 169
    .local v4, "pt1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v3, v4}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->findEdgeInSameDirection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    .line 170
    .local v1, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {p2, v1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->findEdgeEnd(Lorg/locationtech/jts/geomgraph/Edge;)Lorg/locationtech/jts/geomgraph/EdgeEnd;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 171
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x0

    .line 172
    .local v2, "intDe":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    if-nez v7, :cond_2

    .line 173
    move-object v2, v0

    .line 178
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v6, 0x1

    :cond_1
    const-string v7, "unable to find dirEdge with Interior on RHS"

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 180
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->visitLinkedDirectedEdges(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 181
    return-void

    .line 175
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v7

    invoke-virtual {v7}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v7

    if-nez v7, :cond_0

    .line 176
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    goto :goto_0
.end method

.method private visitShellInteriors(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geomgraph/PlanarGraph;)V
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    .line 147
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 148
    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 149
    .local v2, "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->visitInteriorRing(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geomgraph/PlanarGraph;)V

    .line 151
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    instance-of v3, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 152
    check-cast v1, Lorg/locationtech/jts/geom/MultiPolygon;

    .line 153
    .local v1, "mp":Lorg/locationtech/jts/geom/MultiPolygon;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 154
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 155
    .restart local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->visitInteriorRing(Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geomgraph/PlanarGraph;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    .end local v1    # "mp":Lorg/locationtech/jts/geom/MultiPolygon;
    .end local v2    # "p":Lorg/locationtech/jts/geom/Polygon;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->disconnectedRingcoord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isInteriorsConnected()Z
    .locals 4

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "splitEdges":Ljava/util/List;
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSplitEdges(Ljava/util/List;)V

    .line 84
    new-instance v1, Lorg/locationtech/jts/geomgraph/PlanarGraph;

    new-instance v3, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;

    invoke-direct {v3}, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;-><init>()V

    invoke-direct {v1, v3}, Lorg/locationtech/jts/geomgraph/PlanarGraph;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    .line 85
    .local v1, "graph":Lorg/locationtech/jts/geomgraph/PlanarGraph;
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->addEdges(Ljava/util/List;)V

    .line 86
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->setInteriorEdgesInResult(Lorg/locationtech/jts/geomgraph/PlanarGraph;)V

    .line 87
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->linkResultDirectedEdges()V

    .line 88
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->buildEdgeRings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "edgeRings":Ljava/util/List;
    iget-object v3, p0, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->geomGraph:Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->visitShellInteriors(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geomgraph/PlanarGraph;)V

    .line 103
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/valid/ConnectedInteriorTester;->hasUnvisitedShellEdge(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected visitLinkedDirectedEdges(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 5
    .param p1, "start"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    const/4 v3, 0x1

    .line 185
    move-object v1, p1

    .line 186
    .local v1, "startDe":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    move-object v0, p1

    .line 188
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    const-string v4, "found null Directed Edge"

    invoke-static {v2, v4}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 189
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    .line 190
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 191
    if-ne v0, v1, :cond_0

    .line 192
    return-void

    .line 188
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
