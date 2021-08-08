.class public Lorg/locationtech/jts/noding/SegmentIntersectionDetector;
.super Ljava/lang/Object;
.source "SegmentIntersectionDetector.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentIntersector;


# instance fields
.field private findAllTypes:Z

.field private findProper:Z

.field private hasIntersection:Z

.field private hasNonProperIntersection:Z

.field private hasProperIntersection:Z

.field private intPt:Lorg/locationtech/jts/geom/Coordinate;

.field private intSegments:[Lorg/locationtech/jts/geom/Coordinate;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findProper:Z

    .line 33
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findAllTypes:Z

    .line 35
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection:Z

    .line 36
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection:Z

    .line 37
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasNonProperIntersection:Z

    .line 39
    iput-object v1, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 40
    iput-object v1, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    .line 57
    iput-object p1, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 58
    return-void
.end method


# virtual methods
.method public getIntersection()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getIntersectionSegments()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasIntersection()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection:Z

    return v0
.end method

.method public hasNonProperIntersection()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasNonProperIntersection:Z

    return v0
.end method

.method public hasProperIntersection()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findAllTypes:Z

    if-eqz v0, :cond_1

    .line 205
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasNonProperIntersection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findProper:Z

    if-eqz v0, :cond_2

    .line 212
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection:Z

    goto :goto_0

    .line 214
    :cond_2
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection:Z

    goto :goto_0
.end method

.method public processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V
    .locals 10
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 146
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    aget-object v1, v6, p2

    .line 149
    .local v1, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    aget-object v2, v6, v7

    .line 150
    .local v2, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    aget-object v3, v6, p4

    .line 151
    .local v3, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    add-int/lit8 v7, p4, 0x1

    aget-object v4, v6, v7

    .line 153
    .local v4, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 156
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    iput-boolean v8, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasIntersection:Z

    .line 162
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v0

    .line 163
    .local v0, "isProper":Z
    if-eqz v0, :cond_2

    .line 164
    iput-boolean v8, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasProperIntersection:Z

    .line 165
    :cond_2
    if-nez v0, :cond_3

    .line 166
    iput-boolean v8, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->hasNonProperIntersection:Z

    .line 173
    :cond_3
    const/4 v5, 0x1

    .line 174
    .local v5, "saveLocation":Z
    iget-boolean v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findProper:Z

    if-eqz v6, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x0

    .line 176
    :cond_4
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_0

    .line 179
    :cond_5
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6, v9}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    iput-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 182
    const/4 v6, 0x4

    new-array v6, v6, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    .line 183
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object v1, v6, v9

    .line 184
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v6, v8

    .line 185
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 186
    iget-object v6, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x3

    aput-object v4, v6, v7

    goto :goto_0
.end method

.method public setFindAllIntersectionTypes(Z)V
    .locals 0
    .param p1, "findAllTypes"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findAllTypes:Z

    .line 78
    return-void
.end method

.method public setFindProper(Z)V
    .locals 0
    .param p1, "findProper"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/SegmentIntersectionDetector;->findProper:Z

    .line 68
    return-void
.end method
