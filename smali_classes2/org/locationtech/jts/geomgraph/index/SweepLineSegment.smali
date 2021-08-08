.class public Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
.super Ljava/lang/Object;
.source "SweepLineSegment.java"


# instance fields
.field edge:Lorg/locationtech/jts/geomgraph/Edge;

.field ptIndex:I

.field pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Edge;I)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "ptIndex"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    .line 32
    iput p2, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    .line 33
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 34
    return-void
.end method


# virtual methods
.method public computeIntersections(Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 4
    .param p1, "ss"    # Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget v1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->edge:Lorg/locationtech/jts/geomgraph/Edge;

    iget v3, p1, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->addIntersections(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geomgraph/Edge;I)V

    .line 51
    return-void
.end method

.method public getMaxX()D
    .locals 6

    .prologue
    .line 44
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    aget-object v4, v4, v5

    iget-wide v0, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 45
    .local v0, "x1":D
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget-wide v2, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 46
    .local v2, "x2":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .end local v0    # "x1":D
    :goto_0
    return-wide v0

    .restart local v0    # "x1":D
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getMinX()D
    .locals 6

    .prologue
    .line 38
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    aget-object v4, v4, v5

    iget-wide v0, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 39
    .local v0, "x1":D
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineSegment;->ptIndex:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget-wide v2, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 40
    .local v2, "x2":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .end local v0    # "x1":D
    :goto_0
    return-wide v0

    .restart local v0    # "x1":D
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
