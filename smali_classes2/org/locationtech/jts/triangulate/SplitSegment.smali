.class public Lorg/locationtech/jts/triangulate/SplitSegment;
.super Ljava/lang/Object;
.source "SplitSegment.java"


# instance fields
.field private minimumLen:D

.field private seg:Lorg/locationtech/jts/geom/LineSegment;

.field private segLen:D

.field private splitPt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    .line 47
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 48
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->segLen:D

    .line 49
    return-void
.end method

.method private getConstrainedLength(D)D
    .locals 3
    .param p1, "len"    # D

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 85
    iget-wide p1, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    .line 86
    .end local p1    # "len":D
    :cond_0
    return-wide p1
.end method

.method private static pointAlongReverse(Lorg/locationtech/jts/geom/LineSegment;D)Lorg/locationtech/jts/geom/Coordinate;
    .locals 9
    .param p0, "seg"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p1, "segmentLengthFraction"    # D

    .prologue
    .line 35
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 36
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 37
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 38
    return-object v0
.end method


# virtual methods
.method public getSplitPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public setMinimumLength(D)V
    .locals 1
    .param p1, "minLen"    # D

    .prologue
    .line 52
    iput-wide p1, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    .line 53
    return-void
.end method

.method public splitAt(DLorg/locationtech/jts/geom/Coordinate;)V
    .locals 7
    .param p1, "length"    # D
    .param p3, "endPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/triangulate/SplitSegment;->getConstrainedLength(D)D

    move-result-wide v0

    .line 61
    .local v0, "actualLen":D
    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->segLen:D

    div-double v2, v0, v4

    .line 62
    .local v2, "frac":D
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v4, v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->pointAlong(D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-static {v4, v2, v3}, Lorg/locationtech/jts/triangulate/SplitSegment;->pointAlongReverse(Lorg/locationtech/jts/geom/LineSegment;D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method public splitAt(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 70
    iget-wide v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->segLen:D

    div-double v0, v2, v4

    .line 71
    .local v0, "minFrac":D
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, v2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->pointAlong(D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, v2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->minimumLen:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 76
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-static {v2, v0, v1}, Lorg/locationtech/jts/triangulate/SplitSegment;->pointAlongReverse(Lorg/locationtech/jts/geom/LineSegment;D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 80
    :cond_1
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/SplitSegment;->splitPt:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method
