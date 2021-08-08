.class public Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
.super Ljava/lang/Object;
.source "SegmentIntersector.java"


# instance fields
.field private bdyNodes:[Ljava/util/Collection;

.field private hasIntersection:Z

.field private hasProper:Z

.field private hasProperInterior:Z

.field private includeProper:Z

.field private isDone:Z

.field private isDoneWhenProperInt:Z

.field private isSelfIntersection:Z

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private numIntersections:I

.field public numTests:I

.field private properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private recordIsolated:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "includeProper"    # Z
    .param p3, "recordIsolated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasIntersection:Z

    .line 45
    iput-boolean v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProper:Z

    .line 46
    iput-boolean v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperInterior:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 55
    iput v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numIntersections:I

    .line 58
    iput v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numTests:I

    .line 61
    iput-boolean v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDone:Z

    .line 62
    iput-boolean v1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDoneWhenProperInt:Z

    .line 67
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 68
    iput-boolean p2, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->includeProper:Z

    .line 69
    iput-boolean p3, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->recordIsolated:Z

    .line 70
    return-void
.end method

.method public static isAdjacentSegments(II)Z
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    const/4 v0, 0x1

    .line 37
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBoundaryPoint(Lorg/locationtech/jts/algorithm/LineIntersector;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "bdyNodes"    # Ljava/util/Collection;

    .prologue
    .line 198
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 200
    .local v1, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 201
    .local v2, "pt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->isIntersection(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 203
    .end local v1    # "node":Lorg/locationtech/jts/geomgraph/Node;
    .end local v2    # "pt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isBoundaryPoint(Lorg/locationtech/jts/algorithm/LineIntersector;[Ljava/util/Collection;)Z
    .locals 3
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "bdyNodes"    # [Ljava/util/Collection;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    if-nez p2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isBoundaryPoint(Lorg/locationtech/jts/algorithm/LineIntersector;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 192
    :cond_2
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isBoundaryPoint(Lorg/locationtech/jts/algorithm/LineIntersector;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isTrivialIntersection(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)Z
    .locals 3
    .param p1, "e0"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v1, 0x1

    .line 116
    if-ne p1, p3, :cond_3

    .line 117
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 118
    invoke-static {p2, p4}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isAdjacentSegments(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getNumPoints()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 122
    .local v0, "maxSegIndex":I
    if-nez p2, :cond_2

    if-eq p4, v0, :cond_0

    :cond_2
    if-nez p4, :cond_3

    if-eq p2, v0, :cond_0

    .line 129
    .end local v0    # "maxSegIndex":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIntersections(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)V
    .locals 8
    .param p1, "e0"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 143
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numTests:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numTests:I

    .line 145
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v0, v4, p2

    .line 146
    .local v0, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    aget-object v1, v4, v5

    .line 147
    .local v1, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p3}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v2, v4, p4

    .line 148
    .local v2, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p3}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    aget-object v3, v4, v5

    .line 150
    .local v3, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 156
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    iget-boolean v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->recordIsolated:Z

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {p1, v7}, Lorg/locationtech/jts/geomgraph/Edge;->setIsolated(Z)V

    .line 159
    invoke-virtual {p3, v7}, Lorg/locationtech/jts/geomgraph/Edge;->setIsolated(Z)V

    .line 162
    :cond_2
    iget v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numIntersections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->numIntersections:I

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isTrivialIntersection(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    iput-boolean v6, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasIntersection:Z

    .line 168
    iget-boolean v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->includeProper:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-nez v4, :cond_4

    .line 170
    :cond_3
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {p1, v4, p2, v7}, Lorg/locationtech/jts/geomgraph/Edge;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    .line 171
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {p3, v4, p4, v6}, Lorg/locationtech/jts/geomgraph/Edge;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    .line 173
    :cond_4
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4, v7}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/Coordinate;

    iput-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 175
    iput-boolean v6, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProper:Z

    .line 176
    iget-boolean v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDoneWhenProperInt:Z

    if-eqz v4, :cond_5

    .line 177
    iput-boolean v6, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDone:Z

    .line 179
    :cond_5
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->bdyNodes:[Ljava/util/Collection;

    invoke-direct {p0, v4, v5}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isBoundaryPoint(Lorg/locationtech/jts/algorithm/LineIntersector;[Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    iput-boolean v6, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperInterior:Z

    goto/16 :goto_0
.end method

.method public getProperIntersectionPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasIntersection()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasIntersection:Z

    return v0
.end method

.method public hasProperInteriorIntersection()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperInterior:Z

    return v0
.end method

.method public hasProperIntersection()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProper:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDone:Z

    return v0
.end method

.method public setBoundaryNodes(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .param p1, "bdyNodes0"    # Ljava/util/Collection;
    .param p2, "bdyNodes1"    # Ljava/util/Collection;

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->bdyNodes:[Ljava/util/Collection;

    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->bdyNodes:[Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->bdyNodes:[Ljava/util/Collection;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 78
    return-void
.end method

.method public setIsDoneIfProperInt(Z)V
    .locals 0
    .param p1, "isDoneWhenProperInt"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->isDoneWhenProperInt:Z

    .line 82
    return-void
.end method
