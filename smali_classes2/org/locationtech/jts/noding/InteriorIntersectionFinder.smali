.class public Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
.super Ljava/lang/Object;
.source "InteriorIntersectionFinder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentIntersector;


# instance fields
.field private findAllIntersections:Z

.field private intSegments:[Lorg/locationtech/jts/geom/Coordinate;

.field private interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

.field private intersectionCount:I

.field private intersections:Ljava/util/List;

.field private isCheckEndSegmentsOnly:Z

.field private keepIntersections:Z

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 3
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->findAllIntersections:Z

    .line 73
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->isCheckEndSegmentsOnly:Z

    .line 75
    iput-object v2, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    iput-object v2, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersections:Ljava/util/List;

    .line 78
    iput v1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersectionCount:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->keepIntersections:Z

    .line 89
    iput-object p1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 90
    iput-object v2, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    .line 91
    return-void
.end method

.method public static createAllIntersectionsFinder(Lorg/locationtech/jts/algorithm/LineIntersector;)Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
    .locals 2
    .param p0, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 52
    new-instance v0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 53
    .local v0, "finder":Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->setFindAllIntersections(Z)V

    .line 54
    return-object v0
.end method

.method public static createAnyIntersectionFinder(Lorg/locationtech/jts/algorithm/LineIntersector;)Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
    .locals 1
    .param p0, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 40
    new-instance v0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    return-object v0
.end method

.method public static createIntersectionCounter(Lorg/locationtech/jts/algorithm/LineIntersector;)Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
    .locals 2
    .param p0, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 66
    new-instance v0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 67
    .local v0, "finder":Lorg/locationtech/jts/noding/InteriorIntersectionFinder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->setFindAllIntersections(Z)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->setKeepIntersections(Z)V

    .line 69
    return-object v0
.end method

.method private isEndSegment(Lorg/locationtech/jts/noding/SegmentString;I)Z
    .locals 2
    .param p1, "segStr"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 248
    if-nez p2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge p2, v1, :cond_0

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public count()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersectionCount:I

    return v0
.end method

.method public getInteriorIntersection()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getIntersectionSegments()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getIntersections()Ljava/util/List;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersections:Ljava/util/List;

    return-object v0
.end method

.method public hasIntersection()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->findAllIntersections:Z

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V
    .locals 9
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    iget-boolean v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->findAllIntersections:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->hasIntersection()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-ne p1, p3, :cond_2

    if-eq p2, p4, :cond_0

    .line 209
    :cond_2
    iget-boolean v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->isCheckEndSegmentsOnly:Z

    if-eqz v7, :cond_4

    .line 210
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->isEndSegment(Lorg/locationtech/jts/noding/SegmentString;I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->isEndSegment(Lorg/locationtech/jts/noding/SegmentString;I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    move v0, v6

    .line 211
    .local v0, "isEndSegPresent":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 215
    .end local v0    # "isEndSegPresent":Z
    :cond_4
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aget-object v1, v7, p2

    .line 216
    .local v1, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    add-int/lit8 v8, p2, 0x1

    aget-object v2, v7, v8

    .line 217
    .local v2, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aget-object v3, v7, p4

    .line 218
    .local v3, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    add-int/lit8 v8, p4, 0x1

    aget-object v4, v7, v8

    .line 220
    .local v4, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v7, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 223
    iget-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v7}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    iget-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v7}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 225
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    .line 226
    iget-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object v1, v7, v5

    .line 227
    iget-object v7, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v7, v6

    .line 228
    iget-object v6, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 229
    iget-object v6, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intSegments:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 231
    iget-object v6, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6, v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    .line 232
    iget-boolean v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->keepIntersections:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersections:Ljava/util/List;

    iget-object v6, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->interiorIntersection:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_5
    iget v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersectionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->intersectionCount:I

    goto :goto_0

    .end local v1    # "p00":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p01":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p10":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "p11":Lorg/locationtech/jts/geom/Coordinate;
    :cond_6
    move v0, v5

    .line 210
    goto :goto_1
.end method

.method public setCheckEndSegmentsOnly(Z)V
    .locals 0
    .param p1, "isCheckEndSegmentsOnly"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->isCheckEndSegmentsOnly:Z

    .line 152
    return-void
.end method

.method public setFindAllIntersections(Z)V
    .locals 0
    .param p1, "findAllIntersections"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->findAllIntersections:Z

    .line 105
    return-void
.end method

.method public setKeepIntersections(Z)V
    .locals 0
    .param p1, "keepIntersections"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinder;->keepIntersections:Z

    .line 118
    return-void
.end method
