.class Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;
.super Lorg/locationtech/jts/planargraph/PlanarGraph;
.source "PolygonizeGraph.java"


# instance fields
.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/PlanarGraph;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 97
    return-void
.end method

.method private computeDepthParity(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V
    .locals 0
    .param p1, "de"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .prologue
    .line 435
    return-void
.end method

.method private static computeNextCCWEdges(Lorg/locationtech/jts/planargraph/Node;J)V
    .locals 13
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;
    .param p1, "label"    # J

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v1

    .line 319
    .local v1, "deStar":Lorg/locationtech/jts/planargraph/DirectedEdgeStar;
    const/4 v3, 0x0

    .line 320
    .local v3, "firstOutDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    const/4 v7, 0x0

    .line 323
    .local v7, "prevInDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, "edges":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 326
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 327
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v8

    check-cast v8, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 329
    .local v8, "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    const/4 v6, 0x0

    .line 330
    .local v6, "outDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v10

    cmp-long v9, v10, p1

    if-nez v9, :cond_0

    move-object v6, v0

    .line 331
    :cond_0
    const/4 v5, 0x0

    .line 332
    .local v5, "inDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v8}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v10

    cmp-long v9, v10, p1

    if-nez v9, :cond_1

    move-object v5, v8

    .line 334
    :cond_1
    if-nez v6, :cond_3

    if-nez v5, :cond_3

    .line 325
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 336
    :cond_3
    if-eqz v5, :cond_4

    .line 337
    move-object v7, v5

    .line 340
    :cond_4
    if-eqz v6, :cond_2

    .line 341
    if-eqz v7, :cond_5

    .line 342
    invoke-virtual {v7, v6}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setNext(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    .line 343
    const/4 v7, 0x0

    .line 345
    :cond_5
    if-nez v3, :cond_2

    .line 346
    move-object v3, v6

    goto :goto_1

    .line 349
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v5    # "inDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v6    # "outDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v8    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_6
    if-eqz v7, :cond_7

    .line 350
    if-eqz v3, :cond_8

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 351
    invoke-virtual {v7, v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setNext(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    .line 353
    :cond_7
    return-void

    .line 350
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private computeNextCWEdges()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iNode":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/Node;

    .line 139
    .local v1, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-static {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->computeNextCWEdges(Lorg/locationtech/jts/planargraph/Node;)V

    goto :goto_0

    .line 141
    .end local v1    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_0
    return-void
.end method

.method private static computeNextCWEdges(Lorg/locationtech/jts/planargraph/Node;)V
    .locals 7
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v0

    .line 289
    .local v0, "deStar":Lorg/locationtech/jts/planargraph/DirectedEdgeStar;
    const/4 v4, 0x0

    .line 290
    .local v4, "startDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    const/4 v3, 0x0

    .line 293
    .local v3, "prevDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 295
    .local v2, "outDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isMarked()Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    if-nez v4, :cond_1

    .line 298
    move-object v4, v2

    .line 299
    :cond_1
    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 301
    .local v5, "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v5, v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setNext(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    .line 303
    .end local v5    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_2
    move-object v3, v2

    .line 304
    goto :goto_0

    .line 305
    .end local v2    # "outDE":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_3
    if-eqz v3, :cond_4

    .line 306
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 307
    .restart local v5    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v5, v4}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setNext(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    .line 309
    .end local v5    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_4
    return-void
.end method

.method private convertMaximalToMinimalEdgeRings(Ljava/util/List;)V
    .locals 8
    .param p1, "ringEdges"    # Ljava/util/List;

    .prologue
    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 153
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v4

    .line 154
    .local v4, "label":J
    invoke-static {v0, v4, v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findIntersectionNodes(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;J)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "intNodes":Ljava/util/List;
    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iNode":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/planargraph/Node;

    .line 160
    .local v6, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-static {v6, v4, v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->computeNextCCWEdges(Lorg/locationtech/jts/planargraph/Node;J)V

    goto :goto_0

    .line 163
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v2    # "iNode":Ljava/util/Iterator;
    .end local v3    # "intNodes":Ljava/util/List;
    .end local v4    # "label":J
    .end local v6    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    return-void
.end method

.method public static deleteAllEdges(Lorg/locationtech/jts/planargraph/Node;)V
    .locals 6
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    const/4 v5, 0x1

    .line 77
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "edges":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 80
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0, v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    .line 81
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 82
    .local v3, "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v3, v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    goto :goto_0

    .line 85
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v3    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_1
    return-void
.end method

.method private findEdgeRing(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .locals 2
    .param p1, "startDE"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .prologue
    .line 357
    new-instance v0, Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    iget-object v1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 358
    .local v0, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->build(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    .line 359
    return-object v0
.end method

.method private static findIntersectionNodes(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;J)Ljava/util/List;
    .locals 7
    .param p0, "startDE"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .param p1, "label"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 174
    move-object v0, p0

    .line 175
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    const/4 v1, 0x0

    .line 177
    .local v1, "intNodes":Ljava/util/List;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    .line 178
    .local v2, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-static {v2, p1, p2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->getDegree(Lorg/locationtech/jts/planargraph/Node;J)I

    move-result v3

    if-le v3, v4, :cond_2

    .line 179
    if-nez v1, :cond_1

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "intNodes":Ljava/util/List;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v1    # "intNodes":Ljava/util/List;
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getNext()Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_4

    move v3, v4

    :goto_0
    const-string v6, "found null DE in ring"

    invoke-static {v3, v6}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 186
    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isInRing()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v3, v4

    :goto_1
    const-string v6, "found DE already in ring"

    invoke-static {v3, v6}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 187
    if-ne v0, p0, :cond_0

    .line 189
    return-object v1

    :cond_4
    move v3, v5

    .line 185
    goto :goto_0

    :cond_5
    move v3, v5

    .line 186
    goto :goto_1
.end method

.method private static findLabeledEdgeRings(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .param p0, "dirEdges"    # Ljava/util/Collection;

    .prologue
    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "edgeRingStarts":Ljava/util/List;
    const-wide/16 v0, 0x1

    .line 232
    .local v0, "currLabel":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 234
    .local v2, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isMarked()Z

    move-result v6

    if-nez v6, :cond_0

    .line 235
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 237
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {v2}, Lorg/locationtech/jts/operation/polygonize/EdgeRing;->findDirEdgesInRing(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)Ljava/util/List;

    move-result-object v4

    .line 240
    .local v4, "edges":Ljava/util/List;
    invoke-static {v4, v0, v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->label(Ljava/util/Collection;J)V

    .line 241
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 242
    goto :goto_0

    .line 243
    .end local v2    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v4    # "edges":Ljava/util/List;
    :cond_1
    return-object v3
.end method

.method private static getDegree(Lorg/locationtech/jts/planargraph/Node;J)I
    .locals 7
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;
    .param p1, "label"    # J

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "edges":Ljava/util/List;
    const/4 v1, 0x0

    .line 65
    .local v1, "degree":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 67
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_1
    return v1
.end method

.method private static getDegreeNonDeleted(Lorg/locationtech/jts/planargraph/Node;)I
    .locals 5
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, "edges":Ljava/util/List;
    const/4 v1, 0x0

    .line 54
    .local v1, "degree":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 56
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isMarked()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_1
    return v1
.end method

.method private getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    .line 126
    .local v0, "node":Lorg/locationtech/jts/planargraph/Node;
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/locationtech/jts/planargraph/Node;

    .end local v0    # "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/planargraph/Node;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 129
    .restart local v0    # "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->add(Lorg/locationtech/jts/planargraph/Node;)V

    .line 131
    :cond_0
    return-object v0
.end method

.method private static label(Ljava/util/Collection;J)V
    .locals 3
    .param p0, "dirEdges"    # Ljava/util/Collection;
    .param p1, "label"    # J

    .prologue
    .line 281
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 283
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setLabel(J)V

    goto :goto_0

    .line 285
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_0
    return-void
.end method


# virtual methods
.method public addEdge(Lorg/locationtech/jts/geom/LineString;)V
    .locals 12
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 105
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-static {v8}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 108
    .local v4, "linePts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 110
    aget-object v7, v4, v10

    .line 111
    .local v7, "startPt":Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v4, v8

    .line 113
    .local v3, "endPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v7}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v6

    .line 114
    .local v6, "nStart":Lorg/locationtech/jts/planargraph/Node;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v5

    .line 116
    .local v5, "nEnd":Lorg/locationtech/jts/planargraph/Node;
    new-instance v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    aget-object v8, v4, v11

    invoke-direct {v0, v6, v5, v8, v11}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 117
    .local v0, "de0":Lorg/locationtech/jts/planargraph/DirectedEdge;
    new-instance v1, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    array-length v8, v4

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v4, v8

    invoke-direct {v1, v5, v6, v8, v10}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 118
    .local v1, "de1":Lorg/locationtech/jts/planargraph/DirectedEdge;
    new-instance v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;-><init>(Lorg/locationtech/jts/geom/LineString;)V

    .line 119
    .local v2, "edge":Lorg/locationtech/jts/planargraph/Edge;
    invoke-virtual {v2, v0, v1}, Lorg/locationtech/jts/planargraph/Edge;->setDirectedEdges(Lorg/locationtech/jts/planargraph/DirectedEdge;Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 120
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->add(Lorg/locationtech/jts/planargraph/Edge;)V

    goto :goto_0
.end method

.method public computeDepthParity()V
    .locals 1

    .prologue
    .line 419
    :goto_0
    const/4 v0, 0x0

    .line 420
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    if-nez v0, :cond_0

    .line 421
    return-void

    .line 422
    :cond_0
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->computeDepthParity(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V

    goto :goto_0
.end method

.method public deleteCutEdges()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 252
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->computeNextCWEdges()V

    .line 254
    iget-object v5, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->dirEdges:Ljava/util/Set;

    invoke-static {v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findLabeledEdgeRings(Ljava/util/Collection;)Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "cutLines":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 263
    .local v1, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isMarked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 265
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 267
    .local v4, "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v6

    invoke-virtual {v4}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getLabel()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 268
    invoke-virtual {v1, v10}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    .line 269
    invoke-virtual {v4, v10}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    .line 272
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;

    .line 273
    .local v2, "e":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v1    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v2    # "e":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    .end local v4    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    :cond_1
    return-object v0
.end method

.method public deleteDangles()Ljava/util/Collection;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 374
    invoke-virtual {p0, v11}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findNodesOfDegree(I)Ljava/util/List;

    move-result-object v7

    .line 375
    .local v7, "nodesToRemove":Ljava/util/List;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v0, "dangleLines":Ljava/util/Set;
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 378
    .local v6, "nodeStack":Ljava/util/Stack;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 379
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 383
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/planargraph/Node;

    .line 385
    .local v4, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-static {v4}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->deleteAllEdges(Lorg/locationtech/jts/planargraph/Node;)V

    .line 386
    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v10

    invoke-virtual {v10}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v5

    .line 387
    .local v5, "nodeOutEdges":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 388
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 390
    .local v1, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v1, v11}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    .line 391
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v8

    check-cast v8, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 392
    .local v8, "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    if-eqz v8, :cond_2

    .line 393
    invoke-virtual {v8, v11}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->setMarked(Z)V

    .line 396
    :cond_2
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;

    .line 397
    .local v2, "e":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v9

    .line 401
    .local v9, "toNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-static {v9}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->getDegreeNonDeleted(Lorg/locationtech/jts/planargraph/Node;)I

    move-result v10

    if-ne v10, v11, :cond_1

    .line 402
    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 405
    .end local v1    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v2    # "e":Lorg/locationtech/jts/operation/polygonize/PolygonizeEdge;
    .end local v4    # "node":Lorg/locationtech/jts/planargraph/Node;
    .end local v5    # "nodeOutEdges":Ljava/util/List;
    .end local v8    # "sym":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v9    # "toNode":Lorg/locationtech/jts/planargraph/Node;
    :cond_3
    return-object v0
.end method

.method public getEdgeRings()Ljava/util/List;
    .locals 8

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->computeNextCWEdges()V

    .line 202
    iget-object v5, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->dirEdges:Ljava/util/Set;

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->label(Ljava/util/Collection;J)V

    .line 203
    iget-object v5, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->dirEdges:Ljava/util/Set;

    invoke-static {v5}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findLabeledEdgeRings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 204
    .local v4, "maximalRings":Ljava/util/List;
    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->convertMaximalToMinimalEdgeRings(Ljava/util/List;)V

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "edgeRingList":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 210
    .local v0, "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isMarked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->isInRing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/polygonize/PolygonizeGraph;->findEdgeRing(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    move-result-object v2

    .line 214
    .local v2, "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "de":Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .end local v2    # "er":Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    :cond_1
    return-object v1
.end method
