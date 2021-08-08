.class public Lorg/locationtech/jts/dissolve/LineDissolver;
.super Ljava/lang/Object;
.source "LineDissolver.java"


# instance fields
.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private graph:Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;

.field private lines:Ljava/util/List;

.field private nodeEdgeStack:Ljava/util/Stack;

.field private result:Lorg/locationtech/jts/geom/Geometry;

.field private ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->lines:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->nodeEdgeStack:Ljava/util/Stack;

    .line 78
    new-instance v0, Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;

    invoke-direct {v0}, Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->graph:Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/dissolve/LineDissolver;Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/dissolve/LineDissolver;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/locationtech/jts/dissolve/LineDissolver;->add(Lorg/locationtech/jts/geom/LineString;)V

    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/LineString;)V
    .locals 7
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 114
    iget-object v4, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v4, :cond_0

    .line 115
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v3

    .line 118
    .local v3, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    const/4 v0, 0x0

    .line 119
    .local v0, "doneStart":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 120
    iget-object v4, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->graph:Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-interface {v3, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;->addEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .line 122
    .local v1, "e":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    if-nez v1, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    if-nez v0, :cond_1

    .line 128
    invoke-virtual {v1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->setStart()V

    .line 129
    const/4 v0, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "e":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    :cond_3
    return-void
.end method

.method private addLine(Lorg/locationtech/jts/geom/CoordinateList;)V
    .locals 3
    .param p1, "line"    # Lorg/locationtech/jts/geom/CoordinateList;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->lines:Ljava/util/List;

    iget-object v1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method private buildLine(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 6
    .param p1, "eStart"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    const/4 v5, 0x0

    .line 229
    new-instance v2, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .local v2, "line":Lorg/locationtech/jts/geom/CoordinateList;
    move-object v0, p1

    .line 230
    check-cast v0, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .line 231
    .local v0, "e":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .line 233
    invoke-static {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->markBoth(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 234
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 236
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/edgegraph/HalfEdge;->degree()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 237
    invoke-direct {p0, v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->updateRingStartEdge(Lorg/locationtech/jts/dissolve/DissolveHalfEdge;)V

    .line 238
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->next()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .line 240
    .local v1, "eNext":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    if-ne v1, p1, :cond_0

    .line 241
    iget-object v3, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    invoke-direct {p0, v3}, Lorg/locationtech/jts/dissolve/LineDissolver;->buildRing(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 256
    .end local v1    # "eNext":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    :goto_1
    return-void

    .line 245
    .restart local v1    # "eNext":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    :cond_0
    invoke-virtual {v1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 246
    move-object v0, v1

    .line 247
    invoke-static {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->markBoth(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    goto :goto_0

    .line 250
    .end local v1    # "eNext":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->dest()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 253
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/dissolve/LineDissolver;->stackEdges(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 255
    invoke-direct {p0, v2}, Lorg/locationtech/jts/dissolve/LineDissolver;->addLine(Lorg/locationtech/jts/geom/CoordinateList;)V

    goto :goto_1
.end method

.method private buildLines()V
    .locals 2

    .prologue
    .line 174
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->nodeEdgeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->nodeEdgeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 176
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-static {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked(Lorg/locationtech/jts/edgegraph/HalfEdge;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0, v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->buildLine(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    goto :goto_0

    .line 180
    .end local v0    # "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_1
    return-void
.end method

.method private buildRing(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 6
    .param p1, "eStartRing"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    const/4 v5, 0x0

    .line 259
    new-instance v2, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 260
    .local v2, "line":Lorg/locationtech/jts/geom/CoordinateList;
    move-object v0, p1

    .line 262
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 264
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/edgegraph/HalfEdge;->degree()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 265
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->next()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    .line 267
    .local v1, "eNext":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-ne v1, p1, :cond_1

    .line 275
    .end local v1    # "eNext":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->dest()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 278
    invoke-direct {p0, v2}, Lorg/locationtech/jts/dissolve/LineDissolver;->addLine(Lorg/locationtech/jts/geom/CoordinateList;)V

    .line 279
    return-void

    .line 271
    .restart local v1    # "eNext":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 272
    move-object v0, v1

    .line 273
    goto :goto_0
.end method

.method private computeResult()V
    .locals 5

    .prologue
    .line 147
    iget-object v3, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->graph:Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;

    invoke-virtual {v3}, Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;->getVertexEdges()Ljava/util/Collection;

    move-result-object v1

    .line 148
    .local v1, "edges":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 150
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-static {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked(Lorg/locationtech/jts/edgegraph/HalfEdge;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->process(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v4, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->lines:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->result:Lorg/locationtech/jts/geom/Geometry;

    .line 154
    return-void
.end method

.method public static dissolve(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 66
    new-instance v0, Lorg/locationtech/jts/dissolve/LineDissolver;

    invoke-direct {v0}, Lorg/locationtech/jts/dissolve/LineDissolver;-><init>()V

    .line 67
    .local v0, "d":Lorg/locationtech/jts/dissolve/LineDissolver;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/dissolve/LineDissolver;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 68
    invoke-virtual {v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->getResult()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method private process(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 159
    invoke-virtual {p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->prevNode()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 161
    .local v0, "eNode":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-nez v0, :cond_0

    .line 162
    move-object v0, p1

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->stackEdges(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 165
    invoke-direct {p0}, Lorg/locationtech/jts/dissolve/LineDissolver;->buildLines()V

    .line 166
    return-void
.end method

.method private stackEdges(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 2
    .param p1, "node"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 291
    move-object v0, p1

    .line 293
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    invoke-static {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked(Lorg/locationtech/jts/edgegraph/HalfEdge;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->nodeEdgeStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->oNext()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 296
    if-ne v0, p1, :cond_0

    .line 298
    return-void
.end method

.method private updateRingStartEdge(Lorg/locationtech/jts/dissolve/DissolveHalfEdge;)V
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .prologue
    .line 201
    invoke-virtual {p1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object p1

    .end local p1    # "e":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    check-cast p1, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    .line 203
    .restart local p1    # "e":Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    if-nez v0, :cond_2

    .line 207
    iput-object p1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    invoke-virtual {v1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->orig()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 211
    iput-object p1, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->ringStartEdge:Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geometries"    # Ljava/util/Collection;

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 109
    .local v0, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/dissolve/LineDissolver;->add(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 111
    .end local v0    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 90
    new-instance v0, Lorg/locationtech/jts/dissolve/LineDissolver$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/dissolve/LineDissolver$1;-><init>(Lorg/locationtech/jts/dissolve/LineDissolver;)V

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 97
    return-void
.end method

.method public getResult()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->result:Lorg/locationtech/jts/geom/Geometry;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/locationtech/jts/dissolve/LineDissolver;->computeResult()V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/dissolve/LineDissolver;->result:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method
