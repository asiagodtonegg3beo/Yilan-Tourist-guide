.class public Lorg/locationtech/jts/noding/IntersectionAdder;
.super Ljava/lang/Object;
.source "IntersectionAdder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentIntersector;


# instance fields
.field private hasInterior:Z

.field private hasIntersection:Z

.field private hasProper:Z

.field private hasProperInterior:Z

.field private isSelfIntersection:Z

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field public numInteriorIntersections:I

.field public numIntersections:I

.field public numProperIntersections:I

.field public numTests:I

.field private properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasIntersection:Z

    .line 37
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProper:Z

    .line 38
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProperInterior:Z

    .line 39
    iput-boolean v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasInterior:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 47
    iput v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numIntersections:I

    .line 48
    iput v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numInteriorIntersections:I

    .line 49
    iput v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numProperIntersections:I

    .line 52
    iput v1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numTests:I

    .line 56
    iput-object p1, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 57
    return-void
.end method

.method public static isAdjacentSegments(II)Z
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    const/4 v0, 0x1

    .line 29
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

.method private isTrivialIntersection(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)Z
    .locals 3
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    if-ne p1, p3, :cond_3

    .line 95
    iget-object v2, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 96
    invoke-static {p2, p4}, Lorg/locationtech/jts/noding/IntersectionAdder;->isAdjacentSegments(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 100
    .local v0, "maxSegIndex":I
    if-nez p2, :cond_2

    if-eq p4, v0, :cond_0

    :cond_2
    if-nez p4, :cond_3

    if-eq p2, v0, :cond_0

    .line 107
    .end local v0    # "maxSegIndex":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLineIntersector()Lorg/locationtech/jts/algorithm/LineIntersector;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    return-object v0
.end method

.method public getProperIntersectionPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->properIntersectionPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasInteriorIntersection()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasInterior:Z

    return v0
.end method

.method public hasIntersection()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasIntersection:Z

    return v0
.end method

.method public hasProperInteriorIntersection()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProperInterior:Z

    return v0
.end method

.method public hasProperIntersection()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProper:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V
    .locals 7
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    const/4 v6, 0x1

    .line 123
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 156
    .end local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    .end local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    .restart local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    :cond_1
    iget v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numTests:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numTests:I

    .line 125
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v0, v4, p2

    .line 126
    .local v0, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    aget-object v1, v4, v5

    .line 127
    .local v1, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v2, v4, p4

    .line 128
    .local v2, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    aget-object v3, v4, v5

    .line 130
    .local v3, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 132
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numIntersections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numIntersections:I

    .line 135
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    iget v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numInteriorIntersections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numInteriorIntersections:I

    .line 137
    iput-boolean v6, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasInterior:Z

    .line 143
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/noding/IntersectionAdder;->isTrivialIntersection(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    iput-boolean v6, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasIntersection:Z

    .line 145
    check-cast p1, Lorg/locationtech/jts/noding/NodedSegmentString;

    .end local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    .line 146
    check-cast p3, Lorg/locationtech/jts/noding/NodedSegmentString;

    .end local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {p3, v4, p4, v6}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    .line 147
    iget-object v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    iget v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numProperIntersections:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->numProperIntersections:I

    .line 151
    iput-boolean v6, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProper:Z

    .line 152
    iput-boolean v6, p0, Lorg/locationtech/jts/noding/IntersectionAdder;->hasProperInterior:Z

    goto :goto_0
.end method
