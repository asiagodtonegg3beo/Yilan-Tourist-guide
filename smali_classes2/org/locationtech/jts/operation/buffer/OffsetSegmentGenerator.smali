.class Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
.super Ljava/lang/Object;
.source "OffsetSegmentGenerator.java"


# static fields
.field private static final CURVE_VERTEX_SNAP_DISTANCE_FACTOR:D = 1.0E-6

.field private static final INSIDE_TURN_VERTEX_SNAP_DISTANCE_FACTOR:D = 0.001

.field private static final MAX_CLOSING_SEG_LEN_FACTOR:I = 0x50

.field private static final OFFSET_SEGMENT_SEPARATION_FACTOR:D = 0.001


# instance fields
.field private bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

.field private closingSegLengthFactor:I

.field private distance:D

.field private filletAngleQuantum:D

.field private hasNarrowConcaveAngle:Z

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private maxCurveSegmentError:D

.field private offset0:Lorg/locationtech/jts/geom/LineSegment;

.field private offset1:Lorg/locationtech/jts/geom/LineSegment;

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field private s0:Lorg/locationtech/jts/geom/Coordinate;

.field private s1:Lorg/locationtech/jts/geom/Coordinate;

.field private s2:Lorg/locationtech/jts/geom/Coordinate;

.field private seg0:Lorg/locationtech/jts/geom/LineSegment;

.field private seg1:Lorg/locationtech/jts/geom/LineSegment;

.field private segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

.field private side:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;Lorg/locationtech/jts/operation/buffer/BufferParameters;D)V
    .locals 5
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p2, "bufParams"    # Lorg/locationtech/jts/operation/buffer/BufferParameters;
    .param p3, "distance"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->maxCurveSegmentError:D

    .line 87
    iput v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    .line 90
    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    .line 96
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    .line 97
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    .line 98
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    .line 99
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    .line 100
    iput v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    .line 101
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->hasNarrowConcaveAngle:Z

    .line 105
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 106
    iput-object p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 110
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 111
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getQuadrantSegments()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->filletAngleQuantum:D

    .line 118
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getQuadrantSegments()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getJoinStyle()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 120
    const/16 v0, 0x50

    iput v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    .line 121
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->init(D)V

    .line 122
    return-void
.end method

.method private addBevelJoin(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "offset0"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "offset1"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 563
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 564
    return-void
.end method

.method private addCollinear(Z)V
    .locals 8
    .param p1, "addStartPoint"    # Z

    .prologue
    const/4 v6, 0x2

    .line 231
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 232
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v0

    .line 238
    .local v0, "numInt":I
    if-lt v0, v6, :cond_2

    .line 248
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getJoinStyle()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 249
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getJoinStyle()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 250
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, v2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 251
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, v2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 257
    :cond_2
    :goto_0
    return-void

    .line 254
    :cond_3
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    const/4 v5, -0x1

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFillet(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;ID)V

    goto :goto_0
.end method

.method private addFillet(Lorg/locationtech/jts/geom/Coordinate;DDID)V
    .locals 20
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "startAngle"    # D
    .param p4, "endAngle"    # D
    .param p6, "direction"    # I
    .param p7, "radius"    # D

    .prologue
    .line 608
    const/4 v13, -0x1

    move/from16 v0, p6

    if-ne v0, v13, :cond_1

    const/4 v8, -0x1

    .line 610
    .local v8, "directionFactor":I
    :goto_0
    sub-double v16, p2, p4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 611
    .local v14, "totalAngle":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->filletAngleQuantum:D

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    .line 613
    .local v9, "nSegs":I
    const/4 v13, 0x1

    if-ge v9, v13, :cond_2

    .line 630
    :cond_0
    return-void

    .line 608
    .end local v8    # "directionFactor":I
    .end local v9    # "nSegs":I
    .end local v14    # "totalAngle":D
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 618
    .restart local v8    # "directionFactor":I
    .restart local v9    # "nSegs":I
    .restart local v14    # "totalAngle":D
    :cond_2
    const-wide/16 v10, 0x0

    .line 619
    .local v10, "initAngle":D
    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .line 621
    .local v6, "currAngleInc":D
    move-wide v4, v10

    .line 622
    .local v4, "currAngle":D
    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v12}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 623
    .local v12, "pt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    cmpg-double v13, v4, v14

    if-gez v13, :cond_0

    .line 624
    int-to-double v0, v8

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    add-double v2, p2, v16

    .line 625
    .local v2, "angle":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, p7

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 626
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, p7

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v13, v12}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 628
    add-double/2addr v4, v6

    .line 629
    goto :goto_1
.end method

.method private addFillet(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;ID)V
    .locals 21
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "direction"    # I
    .param p5, "radius"    # D

    .prologue
    .line 579
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v12, v2, v8

    .line 580
    .local v12, "dx0":D
    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v16, v2, v8

    .line 581
    .local v16, "dy0":D
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 582
    .local v4, "startAngle":D
    move-object/from16 v0, p3

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v14, v2, v8

    .line 583
    .local v14, "dx1":D
    move-object/from16 v0, p3

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v18, v2, v8

    .line 584
    .local v18, "dy1":D
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 586
    .local v6, "endAngle":D
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 587
    cmpg-double v2, v4, v6

    if-gtz v2, :cond_0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, v2

    .line 592
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-wide/from16 v9, p5

    .line 593
    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFillet(Lorg/locationtech/jts/geom/Coordinate;DDID)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 595
    return-void

    .line 590
    :cond_1
    cmpl-double v2, v4, v6

    if-ltz v2, :cond_0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v4, v2

    goto :goto_0
.end method

.method private addInsideTurn(IZ)V
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "addStartPoint"    # Z

    .prologue
    .line 304
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v5, v5, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 305
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 371
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->hasNarrowConcaveAngle:Z

    .line 339
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, v2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 341
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 349
    iget v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    if-lez v2, :cond_2

    .line 350
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    int-to-double v2, v2

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v2, v4

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    iget v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    iget v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 352
    .local v0, "mid0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 353
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    int-to-double v2, v2

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v2, v4

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    iget v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    int-to-double v4, v4

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v6, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v4, v6

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    iget v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closingSegLengthFactor:I

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 355
    .local v1, "mid1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 368
    .end local v0    # "mid0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "mid1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto/16 :goto_0

    .line 363
    :cond_2
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_1
.end method

.method private addLimitedMitreJoin(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;DD)V
    .locals 39
    .param p1, "offset0"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "offset1"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p3, "distance"    # D
    .param p5, "mitreLimit"    # D

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v14, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 508
    .local v14, "basePt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v14, v0}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 509
    .local v6, "ang0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v14, v0}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 512
    .local v8, "ang1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v14, v1}, Lorg/locationtech/jts/algorithm/Angle;->angleBetweenOriented(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 514
    .local v10, "angDiff":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v12, v10, v34

    .line 517
    .local v12, "angDiffHalf":D
    add-double v34, v6, v12

    invoke-static/range {v34 .. v35}, Lorg/locationtech/jts/algorithm/Angle;->normalize(D)D

    move-result-wide v26

    .line 519
    .local v26, "midAng":D
    const-wide v34, 0x400921fb54442d18L    # Math.PI

    add-double v34, v34, v26

    invoke-static/range {v34 .. v35}, Lorg/locationtech/jts/algorithm/Angle;->normalize(D)D

    move-result-wide v30

    .line 522
    .local v30, "mitreMidAng":D
    mul-double v28, p5, p3

    .line 525
    .local v28, "mitreDist":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    mul-double v16, v28, v34

    .line 526
    .local v16, "bevelDelta":D
    sub-double v20, p3, v16

    .line 529
    .local v20, "bevelHalfLen":D
    iget-wide v0, v14, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v28

    add-double v22, v34, v36

    .line 530
    .local v22, "bevelMidX":D
    iget-wide v0, v14, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v28

    add-double v24, v34, v36

    .line 531
    .local v24, "bevelMidY":D
    new-instance v19, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 534
    .local v19, "bevelMidPt":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v32, Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 538
    .local v32, "mitreMidLine":Lorg/locationtech/jts/geom/LineSegment;
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/LineSegment;->pointAlongOffset(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v15

    .line 539
    .local v15, "bevelEndLeft":Lorg/locationtech/jts/geom/Coordinate;
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/LineSegment;->pointAlongOffset(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v18

    .line 541
    .local v18, "bevelEndRight":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method private addMitreJoin(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;D)V
    .locals 12
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "offset0"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p3, "offset1"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p4, "distance"    # D

    .prologue
    .line 457
    const/4 v9, 0x1

    .line 458
    .local v9, "isMitreWithinLimit":Z
    const/4 v8, 0x0

    .line 466
    .local v8, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :try_start_0
    iget-object v1, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p3, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/HCoordinate;->intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 469
    const-wide/16 v2, 0x0

    cmpg-double v1, p4, v2

    if-gtz v1, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 472
    .local v10, "mitreRatio":D
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getMitreLimit()D
    :try_end_0
    .catch Lorg/locationtech/jts/algorithm/NotRepresentableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmpl-double v1, v10, v2

    if-lez v1, :cond_0

    .line 473
    const/4 v9, 0x0

    .line 480
    .end local v10    # "mitreRatio":D
    :cond_0
    :goto_1
    if-eqz v9, :cond_2

    .line 481
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v1, v8}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 487
    :goto_2
    return-void

    .line 470
    :cond_1
    :try_start_1
    invoke-virtual {v8, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D
    :try_end_1
    .catch Lorg/locationtech/jts/algorithm/NotRepresentableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    div-double v10, v2, v4

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "ex":Lorg/locationtech/jts/algorithm/NotRepresentableException;
    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    .end local v8    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 477
    .restart local v8    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v9, 0x0

    goto :goto_1

    .line 484
    .end local v0    # "ex":Lorg/locationtech/jts/algorithm/NotRepresentableException;
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getMitreLimit()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLimitedMitreJoin(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;DD)V

    goto :goto_2
.end method

.method private addOutsideTurn(IZ)V
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "addStartPoint"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v0, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getJoinStyle()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addMitreJoin(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;D)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getJoinStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addBevelJoin(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)V

    goto :goto_0

    .line 287
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 289
    :cond_3
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFillet(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;ID)V

    .line 290
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method private computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V
    .locals 19
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "side"    # I
    .param p3, "distance"    # D
    .param p5, "offset"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 385
    const/4 v9, 0x1

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    const/4 v8, 0x1

    .line 386
    .local v8, "sideSign":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v9, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v2, v14, v16

    .line 387
    .local v2, "dx":D
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v9, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 388
    .local v4, "dy":D
    mul-double v14, v2, v2

    mul-double v16, v4, v4

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 390
    .local v6, "len":D
    int-to-double v14, v8

    mul-double v14, v14, p3

    mul-double/2addr v14, v2

    div-double v10, v14, v6

    .line 391
    .local v10, "ux":D
    int-to-double v14, v8

    mul-double v14, v14, p3

    mul-double/2addr v14, v4

    div-double v12, v14, v6

    .line 392
    .local v12, "uy":D
    move-object/from16 v0, p5

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v14, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v14, v12

    iput-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 393
    move-object/from16 v0, p5

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v14, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v14, v10

    iput-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 394
    move-object/from16 v0, p5

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v14, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v14, v12

    iput-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 395
    move-object/from16 v0, p5

    iget-object v9, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v14, v14, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v14, v10

    iput-wide v14, v9, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 396
    return-void

    .line 385
    .end local v2    # "dx":D
    .end local v4    # "dy":D
    .end local v6    # "len":D
    .end local v8    # "sideSign":I
    .end local v10    # "ux":D
    .end local v12    # "uy":D
    :cond_0
    const/4 v8, -0x1

    goto :goto_0
.end method

.method private init(D)V
    .locals 7
    .param p1, "distance"    # D

    .prologue
    .line 143
    iput-wide p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    .line 144
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->filletAngleQuantum:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->maxCurveSegmentError:D

    .line 145
    new-instance v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    .line 146
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 150
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->setMinimumVertexDistance(D)V

    .line 151
    return-void
.end method


# virtual methods
.method public addFirstSegment()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 182
    return-void
.end method

.method public addLastSegment()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 190
    return-void
.end method

.method public addLineEndCap(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 34
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 403
    new-instance v6, Lorg/locationtech/jts/geom/LineSegment;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 405
    .local v6, "seg":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v10, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v10}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 406
    .local v10, "offsetL":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V

    .line 407
    new-instance v16, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct/range {v16 .. v16}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 408
    .local v16, "offsetR":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object/from16 v11, p0

    move-object v12, v6

    invoke-direct/range {v11 .. v16}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V

    .line 410
    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v30, v8, v12

    .line 411
    .local v30, "dx":D
    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v32, v8, v12

    .line 412
    .local v32, "dy":D
    move-wide/from16 v0, v32

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v28

    .line 414
    .local v28, "angle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v5}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getEndCapStyle()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 417
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v7, v10, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 418
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v20, v28, v8

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v22, v28, v8

    const/16 v24, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-wide/from16 v25, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p2

    invoke-direct/range {v18 .. v26}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFillet(Lorg/locationtech/jts/geom/Coordinate;DDID)V

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 423
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    iget-object v7, v10, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, v7}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 428
    :pswitch_2
    new-instance v27, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v27 .. v27}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 429
    .local v27, "squareCapSideOffset":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    move-object/from16 v0, v27

    iput-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 430
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    move-object/from16 v0, v27

    iput-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 432
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v5, v10, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, v27

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v8, v12

    iget-object v5, v10, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, v27

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v12, v14

    invoke-direct {v4, v8, v9, v12, v13}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 435
    .local v4, "squareCapLOffset":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v17, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, v27

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v8, v12

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, v27

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v12, v14

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9, v12, v13}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 438
    .local v17, "squareCapROffset":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    goto/16 :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "addStartPoint"    # Z

    .prologue
    const/4 v7, 0x1

    .line 197
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s0:Lorg/locationtech/jts/geom/Coordinate;

    .line 198
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    .line 199
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    .line 200
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 201
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg0:Lorg/locationtech/jts/geom/LineSegment;

    iget v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset0:Lorg/locationtech/jts/geom/LineSegment;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V

    .line 202
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 203
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    iget v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V

    .line 206
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 209
    .local v0, "orientation":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    if-eq v1, v7, :cond_2

    :cond_1
    if-ne v0, v7, :cond_3

    iget v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 213
    .local v7, "outsideTurn":Z
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 214
    invoke-direct {p0, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addCollinear(Z)V

    goto :goto_0

    .line 209
    .end local v7    # "outsideTurn":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 216
    .restart local v7    # "outsideTurn":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 218
    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addOutsideTurn(IZ)V

    goto :goto_0

    .line 221
    :cond_5
    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addInsideTurn(IZ)V

    goto :goto_0
.end method

.method public addSegments([Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 1
    .param p1, "pt"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "isForward"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPts([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 177
    return-void
.end method

.method public closeRing()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->closeRing()V

    .line 172
    return-void
.end method

.method public createCircle(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 639
    new-instance v9, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    add-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 640
    .local v9, "pt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v0, v9}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 641
    const-wide/16 v2, 0x0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v6, -0x1

    iget-wide v7, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFillet(Lorg/locationtech/jts/geom/Coordinate;DDID)V

    .line 642
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->closeRing()V

    .line 643
    return-void
.end method

.method public createSquare(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 650
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    add-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 651
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    add-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 652
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 653
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 654
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->closeRing()V

    .line 655
    return-void
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->segList:Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;

    invoke-virtual {v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 166
    .local v0, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    return-object v0
.end method

.method public hasNarrowConcaveAngle()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->hasNarrowConcaveAngle:Z

    return v0
.end method

.method public initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V
    .locals 7
    .param p1, "s1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "s2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "side"    # I

    .prologue
    .line 156
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s1:Lorg/locationtech/jts/geom/Coordinate;

    .line 157
    iput-object p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->s2:Lorg/locationtech/jts/geom/Coordinate;

    .line 158
    iput p3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->side:I

    .line 159
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 160
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->seg1:Lorg/locationtech/jts/geom/LineSegment;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->distance:D

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->offset1:Lorg/locationtech/jts/geom/LineSegment;

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->computeOffsetSegment(Lorg/locationtech/jts/geom/LineSegment;IDLorg/locationtech/jts/geom/LineSegment;)V

    .line 161
    return-void
.end method
