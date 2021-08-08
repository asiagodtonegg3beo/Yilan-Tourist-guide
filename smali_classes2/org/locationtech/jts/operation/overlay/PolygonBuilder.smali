.class public Lorg/locationtech/jts/operation/overlay/PolygonBuilder;
.super Ljava/lang/Object;
.source "PolygonBuilder.java"


# instance fields
.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private shellList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 48
    return-void
.end method

.method private buildMaximalEdgeRings(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "dirEdges"    # Ljava/util/Collection;

    .prologue
    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, "maxEdgeRings":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 91
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v4

    if-nez v4, :cond_0

    .line 94
    new-instance v1, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;

    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v1, v0, v4}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;-><init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 95
    .local v1, "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->setInResult()V

    goto :goto_0

    .line 101
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v1    # "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    :cond_1
    return-object v3
.end method

.method private buildMinimalEdgeRings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "maxEdgeRings"    # Ljava/util/List;
    .param p2, "shellList"    # Ljava/util/List;
    .param p3, "freeHoleList"    # Ljava/util/List;

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "edgeRings":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;

    .line 109
    .local v1, "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->getMaxNodeDegree()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 110
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->linkDirectedEdgesForMinimalEdgeRings()V

    .line 111
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;->buildMinimalRings()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "minEdgeRings":Ljava/util/List;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->findShell(Ljava/util/List;)Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v4

    .line 114
    .local v4, "shell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    if-eqz v4, :cond_0

    .line 115
    invoke-direct {p0, v4, v3}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->placePolygonHoles(Lorg/locationtech/jts/geomgraph/EdgeRing;Ljava/util/List;)V

    .line 116
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 123
    .end local v3    # "minEdgeRings":Ljava/util/List;
    .end local v4    # "shell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v1    # "er":Lorg/locationtech/jts/operation/overlay/MaximalEdgeRing;
    :cond_2
    return-object v0
.end method

.method private computePolygons(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "shellList"    # Ljava/util/List;

    .prologue
    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "resultPolyList":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 268
    .local v0, "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geomgraph/EdgeRing;->toPolygon(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 269
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v0    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    .end local v2    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    return-object v3
.end method

.method private findEdgeRingContaining(Lorg/locationtech/jts/geomgraph/EdgeRing;Ljava/util/List;)Lorg/locationtech/jts/geomgraph/EdgeRing;
    .locals 11
    .param p1, "testEr"    # Lorg/locationtech/jts/geomgraph/EdgeRing;
    .param p2, "shellList"    # Ljava/util/List;

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    .line 238
    .local v6, "testRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    .line 239
    .local v4, "testEnv":Lorg/locationtech/jts/geom/Envelope;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 241
    .local v5, "testPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .line 242
    .local v3, "minShell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    const/4 v2, 0x0

    .line 243
    .local v2, "minEnv":Lorg/locationtech/jts/geom/Envelope;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 245
    .local v9, "tryShell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v9}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v8

    .line 246
    .local v8, "tryRing":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v8}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v7

    .line 247
    .local v7, "tryEnv":Lorg/locationtech/jts/geom/Envelope;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 248
    :cond_1
    const/4 v0, 0x0

    .line 249
    .local v0, "isContained":Z
    invoke-virtual {v7, v4}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 250
    invoke-virtual {v8}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_2
    if-eqz v0, :cond_0

    .line 254
    if-eqz v3, :cond_3

    .line 255
    invoke-virtual {v2, v7}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 256
    :cond_3
    move-object v3, v9

    goto :goto_0

    .line 260
    .end local v0    # "isContained":Z
    .end local v7    # "tryEnv":Lorg/locationtech/jts/geom/Envelope;
    .end local v8    # "tryRing":Lorg/locationtech/jts/geom/LinearRing;
    .end local v9    # "tryShell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_4
    return-object v3
.end method

.method private findShell(Ljava/util/List;)Lorg/locationtech/jts/geomgraph/EdgeRing;
    .locals 6
    .param p1, "minEdgeRings"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "shellCount":I
    const/4 v2, 0x0

    .line 143
    .local v2, "shell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;

    .line 145
    .local v0, "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->isHole()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    move-object v2, v0

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_1
    if-gt v3, v4, :cond_2

    :goto_1
    const-string v5, "found two shells in MinimalEdgeRing list"

    invoke-static {v4, v5}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 151
    return-object v2

    .line 150
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private placeFreeHoles(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "shellList"    # Ljava/util/List;
    .param p2, "freeHoleList"    # Ljava/util/List;

    .prologue
    .line 208
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 211
    .local v0, "hole":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getShell()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v3

    if-nez v3, :cond_0

    .line 212
    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->findEdgeRingContaining(Lorg/locationtech/jts/geomgraph/EdgeRing;Ljava/util/List;)Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v2

    .line 213
    .local v2, "shell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    if-nez v2, :cond_1

    .line 214
    new-instance v3, Lorg/locationtech/jts/geom/TopologyException;

    const-string v4, "unable to assign hole to a shell"

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v3

    .line 216
    :cond_1
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/EdgeRing;->setShell(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    goto :goto_0

    .line 219
    .end local v0    # "hole":Lorg/locationtech/jts/geomgraph/EdgeRing;
    .end local v2    # "shell":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_2
    return-void
.end method

.method private placePolygonHoles(Lorg/locationtech/jts/geomgraph/EdgeRing;Ljava/util/List;)V
    .locals 3
    .param p1, "shell"    # Lorg/locationtech/jts/geomgraph/EdgeRing;
    .param p2, "minEdgeRings"    # Ljava/util/List;

    .prologue
    .line 166
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;

    .line 168
    .local v0, "er":Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;->isHole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;->setShell(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    goto :goto_0

    .line 172
    .end local v0    # "er":Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;
    :cond_1
    return-void
.end method

.method private sortShellsAndHoles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "edgeRings"    # Ljava/util/List;
    .param p2, "shellList"    # Ljava/util/List;
    .param p3, "freeHoleList"    # Ljava/util/List;

    .prologue
    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 185
    .local v0, "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->isHole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v0    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .param p1, "dirEdges"    # Ljava/util/Collection;
    .param p2, "nodes"    # Ljava/util/Collection;

    .prologue
    .line 67
    invoke-static {p2}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->linkResultDirectedEdges(Ljava/util/Collection;)V

    .line 68
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->buildMaximalEdgeRings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "maxEdgeRings":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "freeHoleList":Ljava/util/List;
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->buildMinimalEdgeRings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "edgeRings":Ljava/util/List;
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    invoke-direct {p0, v0, v3, v1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->sortShellsAndHoles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 72
    iget-object v3, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    invoke-direct {p0, v3, v1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->placeFreeHoles(Ljava/util/List;Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public add(Lorg/locationtech/jts/geomgraph/PlanarGraph;)V
    .locals 2
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->add(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 58
    return-void
.end method

.method public containsPoint(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 280
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 282
    .local v0, "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeRing;->containsPoint(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 285
    .end local v0    # "er":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPolygons()Ljava/util/List;
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->shellList:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->computePolygons(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "resultPolyList":Ljava/util/List;
    return-object v0
.end method
