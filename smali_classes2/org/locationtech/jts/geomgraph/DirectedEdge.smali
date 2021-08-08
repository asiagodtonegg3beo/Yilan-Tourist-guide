.class public Lorg/locationtech/jts/geomgraph/DirectedEdge;
.super Lorg/locationtech/jts/geomgraph/EdgeEnd;
.source "DirectedEdge.java"


# instance fields
.field private depth:[I

.field private edgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

.field protected isForward:Z

.field private isInResult:Z

.field private isVisited:Z

.field private minEdgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

.field private next:Lorg/locationtech/jts/geomgraph/DirectedEdge;

.field private nextMin:Lorg/locationtech/jts/geomgraph/DirectedEdge;

.field private sym:Lorg/locationtech/jts/geomgraph/DirectedEdge;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;Z)V
    .locals 3
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "isForward"    # Z

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 44
    iput-boolean v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult:Z

    .line 45
    iput-boolean v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited:Z

    .line 56
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    .line 61
    iput-boolean p2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 69
    :goto_0
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->computeDirectedLabel()V

    .line 70
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getNumPoints()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 67
    .local v0, "n":I
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->init(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 56
    :array_0
    .array-data 4
        0x0
        -0x3e7
        -0x3e7
    .end array-data
.end method

.method private computeDirectedLabel()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lorg/locationtech/jts/geomgraph/Label;

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 173
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Label;->flip()V

    .line 175
    :cond_0
    return-void
.end method

.method public static depthFactor(II)I
    .locals 1
    .param p0, "currLocation"    # I
    .param p1, "nextLocation"    # I

    .prologue
    const/4 v0, 0x2

    .line 36
    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 38
    :cond_0
    if-nez p0, :cond_1

    if-ne p1, v0, :cond_1

    .line 39
    const/4 v0, -0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDepth(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDepthDelta()I
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getDepthDelta()I

    move-result v0

    .line 98
    .local v0, "depthDelta":I
    iget-boolean v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    if-nez v1, :cond_0

    neg-int v0, v0

    .line 99
    :cond_0
    return v0
.end method

.method public getEdge()Lorg/locationtech/jts/geomgraph/Edge;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    return-object v0
.end method

.method public getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

    return-object v0
.end method

.method public getMinEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->minEdgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

    return-object v0
.end method

.method public getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->next:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    return-object v0
.end method

.method public getNextMin()Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->nextMin:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    return-object v0
.end method

.method public getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->sym:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    return v0
.end method

.method public isInResult()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult:Z

    return v0
.end method

.method public isInteriorAreaEdge()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 156
    const/4 v1, 0x1

    .line 157
    .local v1, "isInteriorAreaEdge":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 158
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v2, v0, v3}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 160
    invoke-virtual {v2, v0, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return v1
.end method

.method public isLineEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v3}, Lorg/locationtech/jts/geomgraph/Label;->isLine(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geomgraph/Label;->isLine(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v2, v4

    .line 138
    .local v2, "isLine":Z
    :goto_0
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 139
    invoke-virtual {v5, v3}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v3, v6}, Lorg/locationtech/jts/geomgraph/Label;->allPositionsEqual(II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    move v0, v4

    .line 140
    .local v0, "isExteriorIfArea0":Z
    :goto_1
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 141
    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geomgraph/Label;->isArea(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v5, v4, v6}, Lorg/locationtech/jts/geomgraph/Label;->allPositionsEqual(II)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v1, v4

    .line 143
    .local v1, "isExteriorIfArea1":Z
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    :goto_3
    return v4

    .end local v0    # "isExteriorIfArea0":Z
    .end local v1    # "isExteriorIfArea1":Z
    .end local v2    # "isLine":Z
    :cond_3
    move v2, v3

    .line 137
    goto :goto_0

    .restart local v2    # "isLine":Z
    :cond_4
    move v0, v3

    .line 139
    goto :goto_1

    .restart local v0    # "isExteriorIfArea0":Z
    :cond_5
    move v1, v3

    .line 141
    goto :goto_2

    .restart local v1    # "isExteriorIfArea1":Z
    :cond_6
    move v4, v3

    .line 143
    goto :goto_3
.end method

.method public isVisited()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited:Z

    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->print(Ljava/io/PrintStream;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepthDelta()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult:Z

    if-eqz v0, :cond_0

    const-string v0, " inResult"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public printEdge(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->print(Ljava/io/PrintStream;)V

    .line 212
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 213
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->print(Ljava/io/PrintStream;)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->printReverse(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public setDepth(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "depthVal"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    aget v0, v0, p1

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 89
    new-instance v0, Lorg/locationtech/jts/geom/TopologyException;

    const-string v1, "assigned depths do not match"

    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;Lorg/locationtech/jts/geom/Coordinate;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->depth:[I

    aput p2, v0, p1

    .line 93
    return-void
.end method

.method public setEdgeDepths(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "depth"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/Edge;->getDepthDelta()I

    move-result v1

    .line 185
    .local v1, "depthDelta":I
    iget-boolean v5, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward:Z

    if-nez v5, :cond_0

    neg-int v1, v1

    .line 188
    :cond_0
    const/4 v2, 0x1

    .line 189
    .local v2, "directionFactor":I
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 190
    const/4 v2, -0x1

    .line 192
    :cond_1
    invoke-static {p1}, Lorg/locationtech/jts/geomgraph/Position;->opposite(I)I

    move-result v4

    .line 193
    .local v4, "oppositePos":I
    mul-int v0, v1, v2

    .line 195
    .local v0, "delta":I
    add-int v3, p2, v0

    .line 196
    .local v3, "oppositeDepth":I
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setDepth(II)V

    .line 197
    invoke-virtual {p0, v4, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setDepth(II)V

    .line 198
    return-void
.end method

.method public setEdgeRing(Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 0
    .param p1, "edgeRing"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->edgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

    return-void
.end method

.method public setInResult(Z)V
    .locals 0
    .param p1, "isInResult"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInResult:Z

    return-void
.end method

.method public setMinEdgeRing(Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 0
    .param p1, "minEdgeRing"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->minEdgeRing:Lorg/locationtech/jts/geomgraph/EdgeRing;

    return-void
.end method

.method public setNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 0
    .param p1, "next"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->next:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    return-void
.end method

.method public setNextMin(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 0
    .param p1, "nextMin"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->nextMin:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    return-void
.end method

.method public setSym(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 0
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->sym:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 122
    return-void
.end method

.method public setVisited(Z)V
    .locals 0
    .param p1, "isVisited"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited:Z

    return-void
.end method

.method public setVisitedEdge(Z)V
    .locals 1
    .param p1, "isVisited"    # Z

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    .line 110
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/DirectedEdge;->sym:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    .line 111
    return-void
.end method
