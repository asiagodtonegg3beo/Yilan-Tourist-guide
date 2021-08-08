.class public Lorg/locationtech/jts/operation/linemerge/LineSequencer;
.super Ljava/lang/Object;
.source "LineSequencer.java"


# instance fields
.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

.field private isRun:Z

.field private isSequenceable:Z

.field private lineCount:I

.field private sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    .line 137
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 138
    iput v1, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->lineCount:I

    .line 140
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isRun:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 142
    iput-boolean v1, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isSequenceable:Z

    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/operation/linemerge/LineSequencer;Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/operation/linemerge/LineSequencer;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->addLine(Lorg/locationtech/jts/geom/LineString;)V

    return-void
.end method

.method private addLine(Lorg/locationtech/jts/geom/LineString;)V
    .locals 1
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->addEdge(Lorg/locationtech/jts/geom/LineString;)V

    .line 181
    iget v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->lineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->lineCount:I

    .line 182
    return-void
.end method

.method private addReverseSubpath(Lorg/locationtech/jts/planargraph/DirectedEdge;Ljava/util/ListIterator;Z)V
    .locals 5
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;
    .param p2, "lit"    # Ljava/util/ListIterator;
    .param p3, "expectedClosed"    # Z

    .prologue
    const/4 v3, 0x1

    .line 316
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    .line 318
    .local v0, "endNode":Lorg/locationtech/jts/planargraph/Node;
    const/4 v1, 0x0

    .line 320
    .local v1, "fromNode":Lorg/locationtech/jts/planargraph/Node;
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/locationtech/jts/planargraph/Edge;->setVisited(Z)V

    .line 322
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->findUnvisitedBestOrientedDE(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v2

    .line 325
    .local v2, "unvisitedOutDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    if-nez v2, :cond_1

    .line 329
    if-eqz p3, :cond_0

    .line 331
    if-ne v1, v0, :cond_2

    :goto_1
    const-string v4, "path not contiguous"

    invoke-static {v3, v4}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 333
    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object p1

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private buildSequencedGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p1, "sequences"    # Ljava/util/List;

    .prologue
    .line 439
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v6, "lines":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i1":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 443
    .local v7, "seq":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 445
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;

    .line 446
    .local v1, "e":Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    .line 448
    .local v4, "line":Lorg/locationtech/jts/geom/LineString;
    move-object v5, v4

    .line 449
    .local v5, "lineToAdd":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdgeDirection()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 450
    invoke-static {v4}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->reverse(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    .line 452
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v1    # "e":Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;
    .end local v3    # "i2":Ljava/util/Iterator;
    .end local v4    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v5    # "lineToAdd":Lorg/locationtech/jts/geom/LineString;
    .end local v7    # "seq":Ljava/util/List;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 456
    iget-object v8, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v8

    .line 457
    :goto_1
    return-object v8

    :cond_3
    iget-object v8, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v8, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v8

    goto :goto_1
.end method

.method private computeSequence()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 208
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isRun:Z

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iput-boolean v3, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isRun:Z

    .line 211
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->findSequences()Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, "sequences":Ljava/util/List;
    if-eqz v1, :cond_0

    .line 215
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->buildSequencedGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 216
    iput-boolean v3, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isSequenceable:Z

    .line 218
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    .line 219
    .local v0, "finalLineCount":I
    iget v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->lineCount:I

    if-ne v2, v0, :cond_4

    move v2, v3

    :goto_1
    const-string v5, "Lines were missing from result"

    invoke-static {v2, v5}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 220
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    instance-of v2, v2, Lorg/locationtech/jts/geom/LineString;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    instance-of v2, v2, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    const-string v2, "Result is not lineal"

    invoke-static {v4, v2}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 219
    goto :goto_1
.end method

.method private static findLowestDegreeNode(Lorg/locationtech/jts/planargraph/Subgraph;)Lorg/locationtech/jts/planargraph/Node;
    .locals 5
    .param p0, "graph"    # Lorg/locationtech/jts/planargraph/Subgraph;

    .prologue
    .line 337
    const v1, 0x7fffffff

    .line 338
    .local v1, "minDegree":I
    const/4 v2, 0x0

    .line 339
    .local v2, "minDegreeNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Subgraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/planargraph/Node;

    .line 341
    .local v3, "node":Lorg/locationtech/jts/planargraph/Node;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 342
    :cond_1
    invoke-virtual {v3}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v1

    .line 343
    move-object v2, v3

    goto :goto_0

    .line 346
    .end local v3    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_2
    return-object v2
.end method

.method private findSequence(Lorg/locationtech/jts/planargraph/Subgraph;)Ljava/util/List;
    .locals 10
    .param p1, "graph"    # Lorg/locationtech/jts/planargraph/Subgraph;

    .prologue
    const/4 v9, 0x0

    .line 264
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Subgraph;->edgeIterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-static {v8, v9}, Lorg/locationtech/jts/planargraph/GraphComponent;->setVisited(Ljava/util/Iterator;Z)V

    .line 266
    invoke-static {p1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->findLowestDegreeNode(Lorg/locationtech/jts/planargraph/Subgraph;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v6

    .line 267
    .local v6, "startNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v6}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 268
    .local v4, "startDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v5

    .line 270
    .local v5, "startDESym":Lorg/locationtech/jts/planargraph/DirectedEdge;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 271
    .local v3, "seq":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 272
    .local v0, "lit":Ljava/util/ListIterator;
    invoke-direct {p0, v5, v0, v9}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->addReverseSubpath(Lorg/locationtech/jts/planargraph/DirectedEdge;Ljava/util/ListIterator;Z)V

    .line 273
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 275
    .local v2, "prev":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v8

    invoke-static {v8}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->findUnvisitedBestOrientedDE(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v7

    .line 276
    .local v7, "unvisitedOutDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v7}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v0, v9}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->addReverseSubpath(Lorg/locationtech/jts/planargraph/DirectedEdge;Ljava/util/ListIterator;Z)V

    goto :goto_0

    .line 285
    .end local v2    # "prev":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v7    # "unvisitedOutDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_1
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->orient(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "orientedSeq":Ljava/util/List;
    return-object v1
.end method

.method private findSequences()Ljava/util/List;
    .locals 7

    .prologue
    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v3, "sequences":Ljava/util/List;
    new-instance v0, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;

    iget-object v6, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-direct {v0, v6}, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;-><init>(Lorg/locationtech/jts/planargraph/PlanarGraph;)V

    .line 229
    .local v0, "csFinder":Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->getConnectedSubgraphs()Ljava/util/List;

    move-result-object v5

    .line 230
    .local v5, "subgraphs":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/planargraph/Subgraph;

    .line 232
    .local v4, "subgraph":Lorg/locationtech/jts/planargraph/Subgraph;
    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->hasSequence(Lorg/locationtech/jts/planargraph/Subgraph;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->findSequence(Lorg/locationtech/jts/planargraph/Subgraph;)Ljava/util/List;

    move-result-object v2

    .line 234
    .local v2, "seq":Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v2    # "seq":Ljava/util/List;
    :cond_0
    const/4 v3, 0x0

    .line 241
    .end local v3    # "sequences":Ljava/util/List;
    .end local v4    # "subgraph":Lorg/locationtech/jts/planargraph/Subgraph;
    :cond_1
    return-object v3
.end method

.method private static findUnvisitedBestOrientedDE(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 5
    .param p0, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "wellOrientedDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    const/4 v2, 0x0

    .line 300
    .local v2, "unvisitedDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 302
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/Edge;->isVisited()Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    move-object v2, v0

    .line 304
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdgeDirection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    move-object v3, v0

    goto :goto_0

    .line 308
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_1
    if-eqz v3, :cond_2

    .line 310
    .end local v3    # "wellOrientedDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :goto_1
    return-object v3

    .restart local v3    # "wellOrientedDE":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_2
    move-object v3, v2

    goto :goto_1
.end method

.method private hasSequence(Lorg/locationtech/jts/planargraph/Subgraph;)Z
    .locals 5
    .param p1, "graph"    # Lorg/locationtech/jts/planargraph/Subgraph;

    .prologue
    const/4 v3, 0x1

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "oddDegreeCount":I
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Subgraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/Node;

    .line 256
    .local v1, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_0

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    const/4 v4, 0x2

    if-gt v2, v4, :cond_2

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSequenced(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 11
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 100
    instance-of v10, p0, Lorg/locationtech/jts/geom/MultiLineString;

    if-nez v10, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v5, p0

    .line 104
    check-cast v5, Lorg/locationtech/jts/geom/MultiLineString;

    .line 106
    .local v5, "mls":Lorg/locationtech/jts/geom/MultiLineString;
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 108
    .local v6, "prevSubgraphNodes":Ljava/util/Set;
    const/4 v3, 0x0

    .line 109
    .local v3, "lastNode":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "currNodes":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 111
    invoke-virtual {v5, v2}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/LineString;

    .line 112
    .local v4, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v4, v9}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 113
    .local v7, "startNode":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 118
    .local v1, "endNode":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v9

    goto :goto_0

    .line 121
    :cond_3
    if-eqz v3, :cond_4

    .line 122
    invoke-virtual {v7, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 124
    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    move-object v3, v1

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private orient(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "seq"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 369
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 370
    .local v5, "startEdge":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 371
    .local v0, "endEdge":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v5}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v6

    .line 372
    .local v6, "startNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    .line 374
    .local v1, "endNode":Lorg/locationtech/jts/planargraph/Node;
    const/4 v2, 0x0

    .line 375
    .local v2, "flipSeq":Z
    invoke-virtual {v6}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 376
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v8

    if-ne v8, v7, :cond_1

    :cond_0
    move v3, v7

    .line 378
    .local v3, "hasDegree1Node":Z
    :cond_1
    if-eqz v3, :cond_4

    .line 379
    const/4 v4, 0x0

    .line 383
    .local v4, "hasObviousStartNode":Z
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v8

    if-ne v8, v7, :cond_2

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdgeDirection()Z

    move-result v8

    if-nez v8, :cond_2

    .line 384
    const/4 v4, 0x1

    .line 385
    const/4 v2, 0x1

    .line 387
    :cond_2
    invoke-virtual {v5}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v8

    if-ne v8, v7, :cond_3

    invoke-virtual {v5}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdgeDirection()Z

    move-result v8

    if-ne v8, v7, :cond_3

    .line 388
    const/4 v4, 0x1

    .line 389
    const/4 v2, 0x0

    .line 393
    :cond_3
    if-nez v4, :cond_4

    .line 395
    invoke-virtual {v5}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 396
    const/4 v2, 0x1

    .line 406
    .end local v4    # "hasObviousStartNode":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 407
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 408
    .end local p1    # "seq":Ljava/util/List;
    :cond_5
    return-object p1
.end method

.method private reverse(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "seq"    # Ljava/util/List;

    .prologue
    .line 421
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 422
    .local v2, "newSeq":Ljava/util/LinkedList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 424
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_0
    return-object v2
.end method

.method private static reverse(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/LineString;
    .locals 7
    .param p0, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 463
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v4, v2

    new-array v3, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 464
    .local v3, "revPts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v1, v2

    .line 465
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 466
    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v2, v0

    invoke-direct {v5, v6}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v5, v3, v4

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    return-object v4
.end method

.method public static sequence(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 83
    new-instance v0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;-><init>()V

    .line 84
    .local v0, "sequencer":Lorg/locationtech/jts/operation/linemerge/LineSequencer;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 85
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->getSequencedLineStrings()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geometries"    # Ljava/util/Collection;

    .prologue
    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 155
    .local v0, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->add(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 157
    .end local v0    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 167
    new-instance v0, Lorg/locationtech/jts/operation/linemerge/LineSequencer$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer$1;-><init>(Lorg/locationtech/jts/operation/linemerge/LineSequencer;)V

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 174
    return-void
.end method

.method public getSequencedLineStrings()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->computeSequence()V

    .line 204
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->sequencedGeometry:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public isSequenceable()Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->computeSequence()V

    .line 193
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/linemerge/LineSequencer;->isSequenceable:Z

    return v0
.end method
