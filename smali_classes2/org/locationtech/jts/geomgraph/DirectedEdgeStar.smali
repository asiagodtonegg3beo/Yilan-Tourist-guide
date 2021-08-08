.class public Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;
.super Lorg/locationtech/jts/geomgraph/EdgeEndStar;
.source "DirectedEdgeStar.java"


# instance fields
.field private final LINKING_TO_OUTGOING:I

.field private final SCANNING_FOR_INCOMING:I

.field private label:Lorg/locationtech/jts/geomgraph/Label;

.field private resultAreaEdgeList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;-><init>()V

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->SCANNING_FOR_INCOMING:I

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->LINKING_TO_OUTGOING:I

    .line 44
    return-void
.end method

.method private computeDepths(III)I
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "startDepth"    # I

    .prologue
    .line 366
    move v0, p3

    .line 367
    .local v0, "currDepth":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 368
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->edgeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 369
    .local v3, "nextDe":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 370
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setEdgeDepths(II)V

    .line 371
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v0

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v3    # "nextDe":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    return v0
.end method

.method private getResultAreaEdges()Ljava/util/List;
    .locals 3

    .prologue
    .line 157
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    .line 164
    :goto_0
    return-object v2

    .line 158
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 161
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_2
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_3
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public computeDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 9
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->findIndex(Lorg/locationtech/jts/geomgraph/EdgeEnd;)I

    move-result v0

    .line 345
    .local v0, "edgeIndex":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    .line 346
    .local v1, "label":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v4

    .line 347
    .local v4, "startDepth":I
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v5

    .line 349
    .local v5, "targetLastDepth":I
    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->edgeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->computeDepths(III)I

    move-result v3

    .line 351
    .local v3, "nextDepth":I
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->computeDepths(III)I

    move-result v2

    .line 354
    .local v2, "lastDepth":I
    if-eq v2, v5, :cond_0

    .line 355
    new-instance v6, Lorg/locationtech/jts/geom/TopologyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "depth mismatch at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 357
    :cond_0
    return-void
.end method

.method public computeLabelling([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 8
    .param p1, "geom"    # [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->computeLabelling([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    .line 114
    new-instance v6, Lorg/locationtech/jts/geomgraph/Label;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Lorg/locationtech/jts/geomgraph/Label;-><init>(I)V

    iput-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 115
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 117
    .local v3, "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v0

    .line 118
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    .line 119
    .local v1, "eLabel":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    .line 120
    invoke-virtual {v1, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v2

    .line 121
    .local v2, "eLoc":I
    if-eqz v2, :cond_1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 122
    :cond_1
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->label:Lorg/locationtech/jts/geomgraph/Label;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 119
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eLabel":Lorg/locationtech/jts/geomgraph/Label;
    .end local v2    # "eLoc":I
    .end local v3    # "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method public findCoveredLineEdges()V
    .locals 7

    .prologue
    .line 302
    const/4 v4, -0x1

    .line 303
    .local v4, "startLoc":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 305
    .local v3, "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    .line 306
    .local v2, "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isLineEdge()Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const/4 v4, 0x0

    .line 318
    .end local v2    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v3    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 340
    :cond_2
    return-void

    .line 311
    .restart local v2    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .restart local v3    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_3
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    const/4 v4, 0x2

    .line 313
    goto :goto_0

    .line 325
    .end local v2    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v3    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_4
    move v0, v4

    .line 326
    .local v0, "currLoc":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 328
    .restart local v3    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    .line 329
    .restart local v2    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isLineEdge()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 330
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v6

    if-nez v0, :cond_6

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Lorg/locationtech/jts/geomgraph/Edge;->setCovered(Z)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 334
    :cond_7
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 335
    const/4 v0, 0x2

    .line 336
    :cond_8
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 337
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLabel()Lorg/locationtech/jts/geomgraph/Label;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-object v0
.end method

.method public getOutgoingDegree()I
    .locals 4

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "degree":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 61
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return v1
.end method

.method public getOutgoingDegree(Lorg/locationtech/jts/geomgraph/EdgeRing;)I
    .locals 4
    .param p1, "er"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "degree":I
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 70
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return v1
.end method

.method public getRightmostEdge()Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    .line 77
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "edges":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 79
    .local v6, "size":I
    if-ge v6, v9, :cond_1

    move-object v0, v7

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 81
    .local v0, "de0":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    if-eq v6, v9, :cond_0

    .line 82
    add-int/lit8 v8, v6, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 84
    .local v1, "deLast":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getQuadrant()I

    move-result v4

    .line 85
    .local v4, "quad0":I
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getQuadrant()I

    move-result v5

    .line 86
    .local v5, "quad1":I
    invoke-static {v4}, Lorg/locationtech/jts/geomgraph/Quadrant;->isNorthern(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v5}, Lorg/locationtech/jts/geomgraph/Quadrant;->isNorthern(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 88
    :cond_2
    invoke-static {v4}, Lorg/locationtech/jts/geomgraph/Quadrant;->isNorthern(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lorg/locationtech/jts/geomgraph/Quadrant;->isNorthern(I)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 94
    .local v3, "nonHorizontalEdge":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDy()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 96
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDy()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_4

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    const-string v8, "found two horizontal edges incident on node"

    invoke-static {v8}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    move-object v0, v7

    .line 100
    goto :goto_0
.end method

.method public insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 1
    .param p1, "ee"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 50
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 51
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {p0, v0, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->insertEdgeEnd(Lorg/locationtech/jts/geomgraph/EdgeEnd;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public linkAllDirectedEdges()V
    .locals 6

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    .line 268
    const/4 v4, 0x0

    .line 269
    .local v4, "prevOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v0, 0x0

    .line 271
    .local v0, "firstIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->edgeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 272
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->edgeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 273
    .local v3, "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    .line 274
    .local v2, "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 275
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 277
    :cond_1
    move-object v4, v3

    .line 271
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 279
    .end local v2    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v3    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_2
    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 281
    return-void
.end method

.method public linkMinimalDirectedEdges(Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 10
    .param p1, "er"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "firstOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x0

    .line 235
    .local v2, "incoming":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v5, 0x1

    .line 237
    .local v5, "state":I
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 238
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 239
    .local v4, "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    .line 242
    .local v3, "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    if-nez v0, :cond_0

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v0, v4

    .line 244
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 237
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 246
    :pswitch_0
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 247
    move-object v2, v3

    .line 248
    const/4 v5, 0x2

    .line 249
    goto :goto_1

    .line 251
    :pswitch_1
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 252
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNextMin(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 253
    const/4 v5, 0x1

    goto :goto_1

    .line 258
    .end local v3    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v4    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 259
    if-eqz v0, :cond_4

    move v6, v7

    :goto_2
    const-string v9, "found null for first outgoing dirEdge"

    invoke-static {v6, v9}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v6

    if-ne v6, p1, :cond_5

    :goto_3
    const-string v6, "unable to link last incoming dirEdge"

    invoke-static {v7, v6}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 261
    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNextMin(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 263
    :cond_3
    return-void

    :cond_4
    move v6, v8

    .line 259
    goto :goto_2

    :cond_5
    move v7, v8

    .line 260
    goto :goto_3

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public linkResultDirectedEdges()V
    .locals 9

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getResultAreaEdges()Ljava/util/List;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "firstOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x0

    .line 194
    .local v2, "incoming":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v5, 0x1

    .line 196
    .local v5, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 197
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->resultAreaEdgeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 198
    .local v4, "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    .line 201
    .local v3, "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v6

    if-nez v6, :cond_1

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v4

    .line 207
    :cond_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 209
    :pswitch_0
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    move-object v2, v3

    .line 211
    const/4 v5, 0x2

    .line 212
    goto :goto_1

    .line 214
    :pswitch_1
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 216
    const/4 v5, 0x1

    goto :goto_1

    .line 221
    .end local v3    # "nextIn":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v4    # "nextOut":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 223
    if-nez v0, :cond_4

    .line 224
    new-instance v6, Lorg/locationtech/jts/geom/TopologyException;

    const-string v7, "no outgoing dirEdge found"

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v6

    .line 226
    :cond_4
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult()Z

    move-result v6

    const-string v7, "unable to link last incoming dirEdge"

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 227
    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 229
    :cond_5
    return-void

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mergeSymLabels()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 136
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 137
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/Label;->merge(Lorg/locationtech/jts/geomgraph/Label;)V

    goto :goto_0

    .line 139
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_0
    return-void
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 378
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DirectedEdgeStar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 381
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const-string v2, "out "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->print(Ljava/io/PrintStream;)V

    .line 383
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 384
    const-string v2, "in "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->print(Ljava/io/PrintStream;)V

    .line 386
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    .line 388
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    return-void
.end method

.method public updateLabelling(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 6
    .param p1, "nodeLabel"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 148
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 149
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocationsIfNull(II)V

    .line 150
    invoke-virtual {p1, v5}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocationsIfNull(II)V

    goto :goto_0

    .line 152
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "label":Lorg/locationtech/jts/geomgraph/Label;
    :cond_0
    return-void
.end method
