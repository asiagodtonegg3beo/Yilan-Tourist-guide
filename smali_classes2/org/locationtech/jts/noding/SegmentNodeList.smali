.class public Lorg/locationtech/jts/noding/SegmentNodeList;
.super Ljava/lang/Object;
.source "SegmentNodeList.java"


# instance fields
.field private edge:Lorg/locationtech/jts/noding/NodedSegmentString;

.field private nodeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/noding/NodedSegmentString;)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/noding/NodedSegmentString;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->nodeMap:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 40
    return-void
.end method

.method private addCollapsedNodes()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "collapsedVertexIndexes":Ljava/util/List;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->findCollapsesFromInsertedNodes(Ljava/util/List;)V

    .line 94
    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->findCollapsesFromExistingVertices(Ljava/util/List;)V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 99
    .local v2, "vertexIndex":I
    iget-object v3, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/locationtech/jts/noding/SegmentNodeList;->add(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;

    goto :goto_0

    .line 101
    .end local v2    # "vertexIndex":I
    :cond_0
    return-void
.end method

.method private addEdgeCoordinates(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/geom/CoordinateList;)V
    .locals 8
    .param p1, "ei0"    # Lorg/locationtech/jts/noding/SegmentNode;
    .param p2, "ei1"    # Lorg/locationtech/jts/noding/SegmentNode;
    .param p3, "coordList"    # Lorg/locationtech/jts/geom/CoordinateList;

    .prologue
    const/4 v5, 0x0

    .line 273
    iget v6, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget v7, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x2

    .line 275
    .local v3, "npts":I
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    iget v7, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 280
    .local v2, "lastSegStartPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/noding/SegmentNode;->isInterior()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p2, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v4, 0x1

    .line 281
    .local v4, "useIntPt1":Z
    :goto_0
    if-nez v4, :cond_1

    .line 282
    add-int/lit8 v3, v3, -0x1

    .line 285
    :cond_1
    const/4 v1, 0x0

    .line 286
    .local v1, "ipt":I
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v7, p1, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p3, v6, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 287
    iget v5, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    add-int/lit8 v0, v5, 0x1

    .local v0, "i":I
    :goto_1
    iget v5, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-gt v0, v5, :cond_3

    .line 288
    iget-object v5, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v5, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ipt":I
    .end local v4    # "useIntPt1":Z
    :cond_2
    move v4, v5

    .line 280
    goto :goto_0

    .line 290
    .restart local v0    # "i":I
    .restart local v1    # "ipt":I
    .restart local v4    # "useIntPt1":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 291
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v6, p2, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v5, v6}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p3, v5}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_4
    return-void
.end method

.method private addEndpoints()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 78
    .local v0, "maxSegIndex":I
    iget-object v1, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/locationtech/jts/noding/SegmentNodeList;->add(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;

    .line 79
    iget-object v1, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->add(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;

    .line 80
    return-void
.end method

.method private checkSplitEdgesCorrectness(Ljava/util/List;)V
    .locals 9
    .param p1, "splitEdges"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x0

    .line 198
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v6}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 201
    .local v0, "edgePts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/noding/SegmentString;

    .line 202
    .local v3, "split0":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v3, v7}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 203
    .local v1, "pt0":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v6, v0, v7

    invoke-virtual {v1, v6}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 204
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad split edge start point at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/noding/SegmentString;

    .line 207
    .local v4, "splitn":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v4}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 208
    .local v5, "splitnPts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v5, v6

    .line 209
    .local v2, "ptn":Lorg/locationtech/jts/geom/Coordinate;
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v2, v6}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 210
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad split edge end point at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 212
    :cond_1
    return-void
.end method

.method private findCollapseIndex(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;[I)Z
    .locals 5
    .param p1, "ei0"    # Lorg/locationtech/jts/noding/SegmentNode;
    .param p2, "ei1"    # Lorg/locationtech/jts/noding/SegmentNode;
    .param p3, "collapsedVertexIndex"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v3, p1, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p2, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    iget v3, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget v4, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    sub-int v0, v3, v4

    .line 149
    .local v0, "numVerticesBetween":I
    invoke-virtual {p2}, Lorg/locationtech/jts/noding/SegmentNode;->isInterior()Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 154
    :cond_2
    if-ne v0, v2, :cond_0

    .line 155
    iget v3, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v1

    move v1, v2

    .line 156
    goto :goto_0
.end method

.method private findCollapsesFromExistingVertices(Ljava/util/List;)V
    .locals 6
    .param p1, "collapsedVertexIndexes"    # Ljava/util/List;

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v4}, Lorg/locationtech/jts/noding/NodedSegmentString;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_1

    .line 110
    iget-object v4, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v4, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 111
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 112
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 113
    .local v3, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-void
.end method

.method private findCollapsesFromInsertedNodes(Ljava/util/List;)V
    .locals 7
    .param p1, "collapsedVertexIndexes"    # Ljava/util/List;

    .prologue
    .line 129
    const/4 v5, 0x1

    new-array v0, v5, [I

    .line 130
    .local v0, "collapsedVertexIndex":[I
    invoke-virtual {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 132
    .local v4, "it":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentNode;

    .line 133
    .local v2, "eiPrev":Lorg/locationtech/jts/noding/SegmentNode;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentNode;

    .line 135
    .local v1, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    invoke-direct {p0, v2, v1, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->findCollapseIndex(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;[I)Z

    move-result v3

    .line 136
    .local v3, "isCollapsed":Z
    if-eqz v3, :cond_0

    .line 137
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget v6, v0, v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    move-object v2, v1

    .line 140
    goto :goto_0

    .line 141
    .end local v1    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    .end local v3    # "isCollapsed":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;
    .locals 4
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segmentIndex"    # I

    .prologue
    .line 52
    new-instance v1, Lorg/locationtech/jts/noding/SegmentNode;

    iget-object v2, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v3, p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getSegmentOctant(I)I

    move-result v3

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/locationtech/jts/noding/SegmentNode;-><init>(Lorg/locationtech/jts/noding/NodedSegmentString;Lorg/locationtech/jts/geom/Coordinate;II)V

    .line 53
    .local v1, "eiNew":Lorg/locationtech/jts/noding/SegmentNode;
    iget-object v2, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentNode;

    .line 54
    .local v0, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    if-eqz v0, :cond_0

    .line 56
    iget-object v2, v0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    const-string v3, "Found equal nodes with different coordinates"

    invoke-static {v2, v3}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 64
    .end local v0    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->nodeMap:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 64
    goto :goto_0
.end method

.method public addSplitEdges(Ljava/util/Collection;)V
    .locals 5
    .param p1, "edgeList"    # Ljava/util/Collection;

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->addEndpoints()V

    .line 173
    invoke-direct {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->addCollapsedNodes()V

    .line 175
    invoke-virtual {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "it":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentNode;

    .line 178
    .local v1, "eiPrev":Lorg/locationtech/jts/noding/SegmentNode;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentNode;

    .line 180
    .local v0, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->createSplitEdge(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;)Lorg/locationtech/jts/noding/SegmentString;

    move-result-object v3

    .line 185
    .local v3, "newEdge":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    move-object v1, v0

    .line 187
    goto :goto_0

    .line 189
    .end local v0    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    .end local v3    # "newEdge":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    return-void
.end method

.method createSplitEdge(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;)Lorg/locationtech/jts/noding/SegmentString;
    .locals 9
    .param p1, "ei0"    # Lorg/locationtech/jts/noding/SegmentNode;
    .param p2, "ei1"    # Lorg/locationtech/jts/noding/SegmentNode;

    .prologue
    .line 222
    iget v7, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget v8, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    sub-int/2addr v7, v8

    add-int/lit8 v4, v7, 0x2

    .line 224
    .local v4, "npts":I
    iget-object v7, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    iget v8, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    invoke-virtual {v7, v8}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 229
    .local v3, "lastSegStartPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/noding/SegmentNode;->isInterior()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p2, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v7, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 230
    .local v6, "useIntPt1":Z
    :goto_0
    if-nez v6, :cond_1

    .line 231
    add-int/lit8 v4, v4, -0x1

    .line 234
    :cond_1
    new-array v5, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 235
    .local v5, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .line 236
    .local v1, "ipt":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ipt":I
    .local v2, "ipt":I
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v8, p1, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v7, v8}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v7, v5, v1

    .line 237
    iget v7, p1, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    add-int/lit8 v0, v7, 0x1

    .local v0, "i":I
    move v1, v2

    .end local v2    # "ipt":I
    .restart local v1    # "ipt":I
    :goto_1
    iget v7, p2, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-gt v0, v7, :cond_3

    .line 238
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ipt":I
    .restart local v2    # "ipt":I
    iget-object v7, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v7, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aput-object v7, v5, v1

    .line 237
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "ipt":I
    .restart local v1    # "ipt":I
    goto :goto_1

    .line 229
    .end local v0    # "i":I
    .end local v1    # "ipt":I
    .end local v5    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "useIntPt1":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 240
    .restart local v0    # "i":I
    .restart local v1    # "ipt":I
    .restart local v5    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .restart local v6    # "useIntPt1":Z
    :cond_3
    if-eqz v6, :cond_4

    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v8, p2, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v7, v8}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v7, v5, v1

    .line 242
    :cond_4
    new-instance v7, Lorg/locationtech/jts/noding/NodedSegmentString;

    iget-object v8, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    invoke-virtual {v8}, Lorg/locationtech/jts/noding/NodedSegmentString;->getData()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lorg/locationtech/jts/noding/NodedSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    return-object v7
.end method

.method public getEdge()Lorg/locationtech/jts/noding/NodedSegmentString;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->edge:Lorg/locationtech/jts/noding/NodedSegmentString;

    return-object v0
.end method

.method public getSplitCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 5

    .prologue
    .line 256
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 258
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-direct {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->addEndpoints()V

    .line 260
    invoke-virtual {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 262
    .local v3, "it":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentNode;

    .line 263
    .local v2, "eiPrev":Lorg/locationtech/jts/noding/SegmentNode;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentNode;

    .line 265
    .local v1, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    invoke-direct {p0, v2, v1, v0}, Lorg/locationtech/jts/noding/SegmentNodeList;->addEdgeCoordinates(Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/noding/SegmentNode;Lorg/locationtech/jts/geom/CoordinateList;)V

    .line 266
    move-object v2, v1

    .line 267
    goto :goto_0

    .line 268
    .end local v1    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    return-object v4
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentNodeList;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 297
    const-string v2, "Intersections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lorg/locationtech/jts/noding/SegmentNodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentNode;

    .line 300
    .local v0, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/noding/SegmentNode;->print(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 302
    .end local v0    # "ei":Lorg/locationtech/jts/noding/SegmentNode;
    :cond_0
    return-void
.end method
