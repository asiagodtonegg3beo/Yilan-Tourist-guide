.class public Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;
.super Ljava/lang/Object;
.source "LineStringSnapper.java"


# instance fields
.field private allowSnappingToSourceVertices:Z

.field private isClosed:Z

.field private seg:Lorg/locationtech/jts/geom/LineSegment;

.field private snapTolerance:D

.field private srcPts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineString;D)V
    .locals 2
    .param p1, "srcLine"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "snapTolerance"    # D

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;-><init>([Lorg/locationtech/jts/geom/Coordinate;D)V

    .line 49
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 4
    .param p1, "srcPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "snapTolerance"    # D

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapTolerance:D

    .line 35
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 36
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->allowSnappingToSourceVertices:Z

    .line 37
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->isClosed:Z

    .line 60
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->srcPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 61
    invoke-static {p1}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->isClosed([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->isClosed:Z

    .line 62
    iput-wide p2, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapTolerance:D

    .line 63
    return-void
.end method

.method private findSegmentIndexToSnap(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/CoordinateList;)I
    .locals 8
    .param p1, "snapPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "srcCoords"    # Lorg/locationtech/jts/geom/CoordinateList;

    .prologue
    .line 191
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 192
    .local v4, "minDist":D
    const/4 v3, -0x1

    .line 193
    .local v3, "snapIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_3

    .line 194
    iget-object v7, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p2, v2}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/Coordinate;

    iput-object v6, v7, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 195
    iget-object v7, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p2, v6}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/Coordinate;

    iput-object v6, v7, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 202
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 203
    :cond_0
    iget-boolean v6, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->allowSnappingToSourceVertices:Z

    if-eqz v6, :cond_2

    .line 193
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_2
    const/4 v3, -0x1

    .line 215
    .end local v3    # "snapIndex":I
    :cond_3
    return v3

    .line 209
    .restart local v3    # "snapIndex":I
    :cond_4
    iget-object v6, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 210
    .local v0, "dist":D
    iget-wide v6, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapTolerance:D

    cmpg-double v6, v0, v6

    if-gez v6, :cond_1

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    .line 211
    move-wide v4, v0

    .line 212
    move v3, v2

    goto :goto_1
.end method

.method private findSnapForVertex(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 120
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    :goto_1
    return-object v1

    .line 122
    :cond_1
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapTolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 123
    aget-object v1, p2, v0

    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isClosed([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 71
    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 72
    :goto_0
    return v0

    :cond_0
    aget-object v0, p0, v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method

.method private snapSegments(Lorg/locationtech/jts/geom/CoordinateList;[Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 7
    .param p1, "srcCoords"    # Lorg/locationtech/jts/geom/CoordinateList;
    .param p2, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v6, 0x0

    .line 145
    array-length v4, p2

    if-nez v4, :cond_1

    .line 167
    :cond_0
    return-void

    .line 147
    :cond_1
    array-length v0, p2

    .line 151
    .local v0, "distinctPtCount":I
    aget-object v4, p2, v6

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    array-length v4, p2

    add-int/lit8 v0, v4, -0x1

    .line 154
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 155
    aget-object v3, p2, v1

    .line 156
    .local v3, "snapPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v3, p1}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->findSegmentIndexToSnap(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/CoordinateList;)I

    move-result v2

    .line 163
    .local v2, "index":I
    if-ltz v2, :cond_3

    .line 164
    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v5, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p1, v4, v5, v6}, Lorg/locationtech/jts/geom/CoordinateList;->add(ILorg/locationtech/jts/geom/Coordinate;Z)V

    .line 154
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private snapVertices(Lorg/locationtech/jts/geom/CoordinateList;[Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "srcCoords"    # Lorg/locationtech/jts/geom/CoordinateList;
    .param p2, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 102
    iget-boolean v4, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->isClosed:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 103
    .local v0, "end":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 105
    .local v3, "srcPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v3, p2}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->findSnapForVertex(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 106
    .local v2, "snapVert":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v2, :cond_0

    .line 108
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v4, v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p1, v1, v4}, Lorg/locationtech/jts/geom/CoordinateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->isClosed:Z

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v5, v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p1, v4, v5}, Lorg/locationtech/jts/geom/CoordinateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "snapVert":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "srcPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v0

    goto :goto_0

    .line 114
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public setAllowSnappingToSourceVertices(Z)V
    .locals 0
    .param p1, "allowSnappingToSourceVertices"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->allowSnappingToSourceVertices:Z

    .line 68
    return-void
.end method

.method public snapTo([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 83
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->srcPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v2}, Lorg/locationtech/jts/geom/CoordinateList;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 85
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapVertices(Lorg/locationtech/jts/geom/CoordinateList;[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 86
    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapSegments(Lorg/locationtech/jts/geom/CoordinateList;[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 88
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 89
    .local v1, "newPts":[Lorg/locationtech/jts/geom/Coordinate;
    return-object v1
.end method
