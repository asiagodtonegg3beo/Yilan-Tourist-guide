.class public Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;
.super Ljava/lang/Object;
.source "TaggedLineStringSimplifier.java"


# instance fields
.field private distanceTolerance:D

.field private inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private line:Lorg/locationtech/jts/simplify/TaggedLineString;

.field private linePts:[Lorg/locationtech/jts/geom/Coordinate;

.field private outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/simplify/LineSegmentIndex;Lorg/locationtech/jts/simplify/LineSegmentIndex;)V
    .locals 2
    .param p1, "inputIndex"    # Lorg/locationtech/jts/simplify/LineSegmentIndex;
    .param p2, "outputIndex"    # Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 34
    new-instance v0, Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-direct {v0}, Lorg/locationtech/jts/simplify/LineSegmentIndex;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 35
    new-instance v0, Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-direct {v0}, Lorg/locationtech/jts/simplify/LineSegmentIndex;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->distanceTolerance:D

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 44
    iput-object p2, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    .line 45
    return-void
.end method

.method private findFurthestPoint([Lorg/locationtech/jts/geom/Coordinate;II[D)I
    .locals 9
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "maxDistance"    # [D

    .prologue
    .line 119
    new-instance v7, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v7}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 120
    .local v7, "seg":Lorg/locationtech/jts/geom/LineSegment;
    aget-object v8, p1, p2

    iput-object v8, v7, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 121
    aget-object v8, p1, p3

    iput-object v8, v7, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 122
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 123
    .local v4, "maxDist":D
    move v3, p2

    .line 124
    .local v3, "maxIndex":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 125
    aget-object v6, p1, v2

    .line 126
    .local v6, "midPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v7, v6}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 127
    .local v0, "distance":D
    cmpl-double v8, v0, v4

    if-lez v8, :cond_0

    .line 128
    move-wide v4, v0

    .line 129
    move v3, v2

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "distance":D
    .end local v6    # "midPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v8, 0x0

    aput-wide v4, p4, v8

    .line 133
    return v3
.end method

.method private flatten(II)Lorg/locationtech/jts/geom/LineSegment;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 150
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v3, p1

    .line 151
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v3, p2

    .line 152
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 154
    .local v0, "newSeg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-direct {p0, v3, p1, p2}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->remove(Lorg/locationtech/jts/simplify/TaggedLineString;II)V

    .line 155
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->add(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 156
    return-object v0
.end method

.method private hasBadInputIntersection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/geom/LineSegment;)Z
    .locals 4
    .param p1, "parentLine"    # Lorg/locationtech/jts/simplify/TaggedLineString;
    .param p2, "sectionIndex"    # [I
    .param p3, "candidateSeg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 184
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-virtual {v3, p3}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->query(Lorg/locationtech/jts/geom/LineSegment;)Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, "querySegs":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/simplify/TaggedLineSegment;

    .line 187
    .local v1, "querySeg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    invoke-direct {p0, v1, p3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->hasInteriorIntersection(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-static {p1, p2, v1}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->isInLineSection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/simplify/TaggedLineSegment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const/4 v3, 0x1

    .line 193
    .end local v1    # "querySeg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasBadIntersection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/geom/LineSegment;)Z
    .locals 2
    .param p1, "parentLine"    # Lorg/locationtech/jts/simplify/TaggedLineString;
    .param p2, "sectionIndex"    # [I
    .param p3, "candidateSeg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, p3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->hasBadOutputIntersection(Lorg/locationtech/jts/geom/LineSegment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->hasBadInputIntersection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/geom/LineSegment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasBadOutputIntersection(Lorg/locationtech/jts/geom/LineSegment;)Z
    .locals 4
    .param p1, "candidateSeg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 170
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->outputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->query(Lorg/locationtech/jts/geom/LineSegment;)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "querySegs":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineSegment;

    .line 173
    .local v1, "querySeg":Lorg/locationtech/jts/geom/LineSegment;
    invoke-direct {p0, v1, p1}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->hasInteriorIntersection(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const/4 v3, 0x1

    .line 177
    .end local v1    # "querySeg":Lorg/locationtech/jts/geom/LineSegment;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasInteriorIntersection(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)Z
    .locals 5
    .param p1, "seg0"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "seg1"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 220
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection()Z

    move-result v0

    return v0
.end method

.method private static isInLineSection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/simplify/TaggedLineSegment;)Z
    .locals 5
    .param p0, "line"    # Lorg/locationtech/jts/simplify/TaggedLineString;
    .param p1, "sectionIndex"    # [I
    .param p2, "seg"    # Lorg/locationtech/jts/simplify/TaggedLineSegment;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p2}, Lorg/locationtech/jts/simplify/TaggedLineSegment;->getParent()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {p0}, Lorg/locationtech/jts/simplify/TaggedLineString;->getParent()Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/simplify/TaggedLineSegment;->getIndex()I

    move-result v0

    .line 212
    .local v0, "segIndex":I
    aget v3, p1, v1

    if-lt v0, v3, :cond_0

    aget v3, p1, v2

    if-ge v0, v3, :cond_0

    move v1, v2

    .line 213
    goto :goto_0
.end method

.method private remove(Lorg/locationtech/jts/simplify/TaggedLineString;II)V
    .locals 3
    .param p1, "line"    # Lorg/locationtech/jts/simplify/TaggedLineString;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 233
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 234
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/simplify/TaggedLineString;->getSegment(I)Lorg/locationtech/jts/simplify/TaggedLineSegment;

    move-result-object v1

    .line 235
    .local v1, "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    iget-object v2, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->inputIndex:Lorg/locationtech/jts/simplify/LineSegmentIndex;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->remove(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    :cond_0
    return-void
.end method

.method private simplifySection(III)V
    .locals 12
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "depth"    # I

    .prologue
    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 74
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 75
    .local v5, "sectionIndex":[I
    add-int/lit8 v7, p1, 0x1

    if-ne v7, p2, :cond_0

    .line 76
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v7, p1}, Lorg/locationtech/jts/simplify/TaggedLineString;->getSegment(I)Lorg/locationtech/jts/simplify/TaggedLineSegment;

    move-result-object v4

    .line 77
    .local v4, "newSeg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v7, v4}, Lorg/locationtech/jts/simplify/TaggedLineString;->addToResult(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 115
    .end local v4    # "newSeg":Lorg/locationtech/jts/geom/LineSegment;
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v3, 0x1

    .line 90
    .local v3, "isValidToSimplify":Z
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v7}, Lorg/locationtech/jts/simplify/TaggedLineString;->getResultSize()I

    move-result v7

    iget-object v8, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v8}, Lorg/locationtech/jts/simplify/TaggedLineString;->getMinimumSize()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 91
    add-int/lit8 v6, p3, 0x1

    .line 92
    .local v6, "worstCaseSize":I
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v7}, Lorg/locationtech/jts/simplify/TaggedLineString;->getMinimumSize()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 93
    const/4 v3, 0x0

    .line 96
    .end local v6    # "worstCaseSize":I
    :cond_1
    const/4 v7, 0x1

    new-array v1, v7, [D

    .line 97
    .local v1, "distance":[D
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v7, p1, p2, v1}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->findFurthestPoint([Lorg/locationtech/jts/geom/Coordinate;II[D)I

    move-result v2

    .line 99
    .local v2, "furthestPtIndex":I
    const/4 v7, 0x0

    aget-wide v8, v1, v7

    iget-wide v10, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->distanceTolerance:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    const/4 v3, 0x0

    .line 101
    :cond_2
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 102
    .local v0, "candidateSeg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, p1

    iput-object v7, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 103
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v7, v7, p2

    iput-object v7, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 104
    const/4 v7, 0x0

    aput p1, v5, v7

    .line 105
    const/4 v7, 0x1

    aput p2, v5, v7

    .line 106
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-direct {p0, v7, v5, v0}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->hasBadIntersection(Lorg/locationtech/jts/simplify/TaggedLineString;[ILorg/locationtech/jts/geom/LineSegment;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    .line 108
    :cond_3
    if-eqz v3, :cond_4

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->flatten(II)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v4

    .line 110
    .restart local v4    # "newSeg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v7, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    invoke-virtual {v7, v4}, Lorg/locationtech/jts/simplify/TaggedLineString;->addToResult(Lorg/locationtech/jts/geom/LineSegment;)V

    goto :goto_0

    .line 113
    .end local v4    # "newSeg":Lorg/locationtech/jts/geom/LineSegment;
    :cond_4
    invoke-direct {p0, p1, v2, p3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->simplifySection(III)V

    .line 114
    invoke-direct {p0, v2, p2, p3}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->simplifySection(III)V

    goto :goto_0
.end method


# virtual methods
.method public setDistanceTolerance(D)V
    .locals 1
    .param p1, "distanceTolerance"    # D

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->distanceTolerance:D

    .line 56
    return-void
.end method

.method simplify(Lorg/locationtech/jts/simplify/TaggedLineString;)V
    .locals 2
    .param p1, "line"    # Lorg/locationtech/jts/simplify/TaggedLineString;

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->line:Lorg/locationtech/jts/simplify/TaggedLineString;

    .line 67
    invoke-virtual {p1}, Lorg/locationtech/jts/simplify/TaggedLineString;->getParentCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->linePts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0, v1}, Lorg/locationtech/jts/simplify/TaggedLineStringSimplifier;->simplifySection(III)V

    .line 69
    return-void
.end method
