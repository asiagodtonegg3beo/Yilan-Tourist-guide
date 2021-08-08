.class public Lorg/locationtech/jts/geomgraph/Edge;
.super Lorg/locationtech/jts/geomgraph/GraphComponent;
.source "Edge.java"


# instance fields
.field private depth:Lorg/locationtech/jts/geomgraph/Depth;

.field private depthDelta:I

.field eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

.field private env:Lorg/locationtech/jts/geom/Envelope;

.field private isIsolated:Z

.field private mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

.field private name:Ljava/lang/String;

.field pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 63
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/GraphComponent;-><init>()V

    .line 48
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;-><init>(Lorg/locationtech/jts/geomgraph/Edge;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->isIsolated:Z

    .line 52
    new-instance v0, Lorg/locationtech/jts/geomgraph/Depth;

    invoke-direct {v0}, Lorg/locationtech/jts/geomgraph/Depth;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->depth:Lorg/locationtech/jts/geomgraph/Depth;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->depthDelta:I

    .line 57
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 58
    iput-object p2, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 59
    return-void
.end method

.method public static updateIM(Lorg/locationtech/jts/geomgraph/Label;Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 5
    .param p0, "label"    # Lorg/locationtech/jts/geomgraph/Label;
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0, v3, v3}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v0

    invoke-virtual {p0, v2, v3}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeastIfValid(III)V

    .line 40
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v3, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v0

    invoke-virtual {p0, v2, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeastIfValid(III)V

    .line 42
    invoke-virtual {p0, v3, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v0

    invoke-virtual {p0, v2, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeastIfValid(III)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public addIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;III)V
    .locals 8
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "segmentIndex"    # I
    .param p3, "geomIndex"    # I
    .param p4, "intIndex"    # I

    .prologue
    .line 160
    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, p4}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 161
    .local v3, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    move v6, p2

    .line 162
    .local v6, "normalizedSegmentIndex":I
    invoke-virtual {p1, p3, p4}, Lorg/locationtech/jts/algorithm/LineIntersector;->getEdgeDistance(II)D

    move-result-wide v0

    .line 165
    .local v0, "dist":D
    add-int/lit8 v5, v6, 0x1

    .line 166
    .local v5, "nextSegIndex":I
    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 167
    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v7, v5

    .line 172
    .local v4, "nextPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 174
    move v6, v5

    .line 175
    const-wide/16 v0, 0x0

    .line 181
    .end local v4    # "nextPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-object v7, p0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    invoke-virtual {v7, v3, v6, v0, v1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->add(Lorg/locationtech/jts/geom/Coordinate;ID)Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    move-result-object v2

    .line 184
    .local v2, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    return-void
.end method

.method public addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "segmentIndex"    # I
    .param p3, "geomIndex"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/locationtech/jts/geomgraph/Edge;->addIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;III)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public computeIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 1
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-static {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->updateIM(Lorg/locationtech/jts/geomgraph/Label;Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 193
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 204
    instance-of v6, p1, Lorg/locationtech/jts/geomgraph/Edge;

    if-nez v6, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 205
    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 207
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v6, v6

    iget-object v7, v0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 209
    const/4 v3, 0x1

    .line 210
    .local v3, "isEqualForward":Z
    const/4 v4, 0x1

    .line 211
    .local v4, "isEqualReverse":Z
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v6

    .line 212
    .local v2, "iRev":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 213
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v1

    iget-object v7, v0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 214
    const/4 v3, 0x0

    .line 216
    :cond_2
    iget-object v6, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v1

    iget-object v7, v0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    add-int/lit8 v2, v2, -0x1

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    const/4 v4, 0x0

    .line 219
    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    .line 212
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getCollapsedEdge()Lorg/locationtech/jts/geomgraph/Edge;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const/4 v2, 0x2

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 128
    .local v0, "newPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v3

    aput-object v2, v0, v3

    .line 129
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v4

    aput-object v2, v0, v4

    .line 130
    new-instance v1, Lorg/locationtech/jts/geomgraph/Edge;

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-static {v2}, Lorg/locationtech/jts/geomgraph/Label;->toLineLabel(Lorg/locationtech/jts/geomgraph/Label;)Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 131
    .local v1, "newe":Lorg/locationtech/jts/geomgraph/Edge;
    return-object v1
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDepth()Lorg/locationtech/jts/geomgraph/Depth;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->depth:Lorg/locationtech/jts/geomgraph/Depth;

    return-object v0
.end method

.method public getDepthDelta()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->depthDelta:I

    return v0
.end method

.method public getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    return-object v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->env:Lorg/locationtech/jts/geom/Envelope;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->env:Lorg/locationtech/jts/geom/Envelope;

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->env:Lorg/locationtech/jts/geom/Envelope;

    return-object v1
.end method

.method public getMaximumSegmentIndex()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMonotoneChainEdge()Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    if-nez v0, :cond_0

    new-instance v0, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;-><init>(Lorg/locationtech/jts/geomgraph/Edge;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    return-object v0
.end method

.method public getNumPoints()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    return v0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCollapsed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIsolated()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/Edge;->isIsolated:Z

    return v0
.end method

.method public isPointwiseEqual(Lorg/locationtech/jts/geomgraph/Edge;)Z
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 232
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    const-string v1, "LINESTRING ("

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 256
    if-lez v0, :cond_0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ")  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->depthDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public printReverse(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public setDepthDelta(I)V
    .locals 0
    .param p1, "depthDelta"    # I

    .prologue
    .line 96
    iput p1, p0, Lorg/locationtech/jts/geomgraph/Edge;->depthDelta:I

    return-void
.end method

.method public setIsolated(Z)V
    .locals 0
    .param p1, "isIsolated"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/Edge;->isIsolated:Z

    .line 137
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/Edge;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Edge;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v2, "LINESTRING ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 245
    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v1

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Edge;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v1

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ")  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Edge;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/locationtech/jts/geomgraph/Edge;->depthDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
