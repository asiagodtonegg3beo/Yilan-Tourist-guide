.class public Lorg/locationtech/jts/triangulate/NonEncroachingSplitPointFinder;
.super Ljava/lang/Object;
.source "NonEncroachingSplitPointFinder.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/ConstraintSplitPointFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static projectedSplitPoint(Lorg/locationtech/jts/triangulate/Segment;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "seg"    # Lorg/locationtech/jts/triangulate/Segment;
    .param p1, "encroachPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/Segment;->getLineSegment()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v0

    .line 70
    .local v0, "lineSeg":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/LineSegment;->project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 71
    .local v1, "projPt":Lorg/locationtech/jts/geom/Coordinate;
    return-object v1
.end method


# virtual methods
.method public findSplitPoint(Lorg/locationtech/jts/triangulate/Segment;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 18
    .param p1, "seg"    # Lorg/locationtech/jts/triangulate/Segment;
    .param p2, "encroachPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/Segment;->getLineSegment()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v2

    .line 39
    .local v2, "lineSeg":Lorg/locationtech/jts/geom/LineSegment;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v10

    .line 40
    .local v10, "segLen":D
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v6, v10, v14

    .line 41
    .local v6, "midPtLen":D
    new-instance v12, Lorg/locationtech/jts/triangulate/SplitSegment;

    invoke-direct {v12, v2}, Lorg/locationtech/jts/triangulate/SplitSegment;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 43
    .local v12, "splitSeg":Lorg/locationtech/jts/triangulate/SplitSegment;
    invoke-static/range {p1 .. p2}, Lorg/locationtech/jts/triangulate/NonEncroachingSplitPointFinder;->projectedSplitPoint(Lorg/locationtech/jts/triangulate/Segment;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 49
    .local v3, "projPt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v8, v14, v16

    .line 50
    .local v8, "nonEncroachDiam":D
    move-wide v4, v8

    .line 51
    .local v4, "maxSplitLen":D
    cmpl-double v13, v4, v6

    if-lez v13, :cond_0

    .line 52
    move-wide v4, v6

    .line 54
    :cond_0
    invoke-virtual {v12, v4, v5}, Lorg/locationtech/jts/triangulate/SplitSegment;->setMinimumLength(D)V

    .line 56
    invoke-virtual {v12, v3}, Lorg/locationtech/jts/triangulate/SplitSegment;->splitAt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 58
    invoke-virtual {v12}, Lorg/locationtech/jts/triangulate/SplitSegment;->getSplitPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v13

    return-object v13
.end method
