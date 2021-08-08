.class public Lorg/locationtech/jts/algorithm/CGAlgorithms;
.super Ljava/lang/Object;
.source "CGAlgorithms.java"


# static fields
.field public static final CLOCKWISE:I = -0x1

.field public static final COLLINEAR:I = 0x0

.field public static final COUNTERCLOCKWISE:I = 0x1

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = -0x1

.field public static final STRAIGHT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    return v0
.end method

.method public static distanceLineLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 24
    .param p0, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "B"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "C"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "D"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 405
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 467
    :goto_0
    return-wide v4

    .line 407
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto :goto_0

    .line 437
    :cond_1
    const/4 v14, 0x0

    .line 438
    .local v14, "noIntersection":Z
    invoke-static/range {p0 .. p3}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 439
    const/4 v14, 0x1

    .line 459
    :cond_2
    :goto_1
    if-eqz v14, :cond_6

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 462
    invoke-static/range {p1 .. p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 463
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 464
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 460
    invoke-static/range {v4 .. v11}, Lorg/locationtech/jts/math/MathUtil;->min(DDDD)D

    move-result-wide v4

    goto :goto_0

    .line 442
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double v12, v4, v6

    .line 444
    .local v12, "denom":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v12, v4

    if-nez v4, :cond_4

    .line 445
    const/4 v14, 0x1

    goto :goto_1

    .line 448
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double v18, v4, v6

    .line 449
    .local v18, "r_num":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double v22, v4, v6

    .line 451
    .local v22, "s_num":D
    div-double v20, v22, v12

    .line 452
    .local v20, "s":D
    div-double v16, v18, v12

    .line 454
    .local v16, "r":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v16, v4

    if-ltz v4, :cond_5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v16, v4

    if-gtz v4, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v4, v20, v4

    if-ltz v4, :cond_5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v20, v4

    if-lez v4, :cond_2

    .line 455
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 467
    .end local v12    # "denom":D
    .end local v16    # "r":D
    .end local v18    # "r_num":D
    .end local v20    # "s":D
    .end local v22    # "s_num":D
    :cond_6
    const-wide/16 v4, 0x0

    goto/16 :goto_0
.end method

.method public static distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 16
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "B"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 291
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 292
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 329
    :goto_0
    return-wide v8

    .line 308
    :cond_0
    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v8, v10

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double v2, v8, v10

    .line 309
    .local v2, "len2":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v8, v10

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    div-double v4, v8, v2

    .line 312
    .local v4, "r":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_1

    .line 313
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    goto :goto_0

    .line 314
    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_2

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    goto :goto_0

    .line 327
    :cond_2
    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    div-double v6, v8, v2

    .line 329
    .local v6, "s":D
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    goto/16 :goto_0
.end method

.method public static distancePointLine(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 7
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "line"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 373
    array-length v3, p1

    if-nez v3, :cond_0

    .line 374
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Line array must contain at least one vertex"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 378
    .local v4, "minDistance":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 379
    aget-object v3, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p1, v6

    invoke-static {p0, v3, v6}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 380
    .local v0, "dist":D
    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    .line 381
    move-wide v4, v0

    .line 378
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "dist":D
    :cond_2
    return-wide v4
.end method

.method public static distancePointLinePerpendicular(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 12
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "B"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 355
    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 356
    .local v0, "len2":D
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double v2, v4, v0

    .line 359
    .local v2, "s":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method public static isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 18
    .param p0, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 190
    move-object/from16 v0, p0

    array-length v13, v0

    add-int/lit8 v9, v13, -0x1

    .line 192
    .local v9, "nPts":I
    const/4 v13, 0x3

    if-ge v9, v13, :cond_0

    .line 193
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Ring has fewer than 4 points, so orientation cannot be determined"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 197
    :cond_0
    const/4 v13, 0x0

    aget-object v4, p0, v13

    .line 198
    .local v4, "hiPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .line 199
    .local v3, "hiIndex":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, v9, :cond_2

    .line 200
    aget-object v11, p0, v5

    .line 201
    .local v11, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v14, v11, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_1

    .line 202
    move-object v4, v11

    .line 203
    move v3, v5

    .line 199
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    .end local v11    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    move v7, v3

    .line 210
    .local v7, "iPrev":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 211
    if-gez v7, :cond_4

    .line 212
    move v7, v9

    .line 213
    :cond_4
    aget-object v13, p0, v7

    invoke-virtual {v13, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-ne v7, v3, :cond_3

    .line 216
    :cond_5
    move v6, v3

    .line 218
    .local v6, "iNext":I
    :cond_6
    add-int/lit8 v13, v6, 0x1

    rem-int v6, v13, v9

    .line 219
    aget-object v13, p0, v6

    invoke-virtual {v13, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-ne v6, v3, :cond_6

    .line 221
    :cond_7
    aget-object v12, p0, v7

    .line 222
    .local v12, "prev":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v10, p0, v6

    .line 230
    .local v10, "next":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v12, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v10, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v12, v10}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 231
    :cond_8
    const/4 v8, 0x0

    .line 253
    :goto_1
    return v8

    .line 233
    :cond_9
    invoke-static {v12, v4, v10}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 245
    .local v2, "disc":I
    if-nez v2, :cond_b

    .line 247
    iget-wide v14, v12, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_a

    const/4 v8, 0x1

    .local v8, "isCCW":Z
    :goto_2
    goto :goto_1

    .end local v8    # "isCCW":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 251
    :cond_b
    if-lez v2, :cond_c

    const/4 v8, 0x1

    .restart local v8    # "isCCW":Z
    :goto_3
    goto :goto_1

    .end local v8    # "isCCW":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public static isOnLine(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pt"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 158
    new-instance v1, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v1}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    .line 159
    .local v1, "lineIntersector":Lorg/locationtech/jts/algorithm/LineIntersector;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 160
    add-int/lit8 v4, v0, -0x1

    aget-object v2, p1, v4

    .line 161
    .local v2, "p0":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v3, p1, v0

    .line 162
    .local v3, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, p0, v2, v3}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 163
    invoke-virtual {v1}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v4, 0x1

    .line 167
    .end local v2    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return v4

    .line 159
    .restart local v2    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v3    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 127
    invoke-static {p0, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static length(Lorg/locationtech/jts/geom/CoordinateSequence;)D
    .locals 24
    .param p0, "pts"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 548
    invoke-interface/range {p0 .. p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v7

    .line 549
    .local v7, "n":I
    const/4 v11, 0x1

    if-gt v7, v11, :cond_1

    .line 550
    const-wide/16 v8, 0x0

    .line 571
    :cond_0
    return-wide v8

    .line 552
    :cond_1
    const-wide/16 v8, 0x0

    .line 554
    .local v8, "len":D
    new-instance v10, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v10}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 555
    .local v10, "p":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v11, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 556
    iget-wide v12, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 557
    .local v12, "x0":D
    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    .line 559
    .local v16, "y0":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 560
    move-object/from16 v0, p0

    invoke-interface {v0, v6, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 561
    iget-wide v14, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 562
    .local v14, "x1":D
    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    .line 563
    .local v18, "y1":D
    sub-double v2, v14, v12

    .line 564
    .local v2, "dx":D
    sub-double v4, v18, v16

    .line 566
    .local v4, "dy":D
    mul-double v20, v2, v2

    mul-double v22, v4, v4

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    add-double v8, v8, v20

    .line 568
    move-wide v12, v14

    .line 569
    move-wide/from16 v16, v18

    .line 559
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 146
    invoke-static {p0, p1}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    return v0
.end method

.method public static orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    return v0
.end method

.method public static signedArea(Lorg/locationtech/jts/geom/CoordinateSequence;)D
    .locals 18
    .param p0, "ring"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 512
    invoke-interface/range {p0 .. p0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    .line 513
    .local v3, "n":I
    const/4 v7, 0x3

    if-ge v3, v7, :cond_0

    .line 514
    const-wide/16 v12, 0x0

    .line 535
    :goto_0
    return-wide v12

    .line 519
    :cond_0
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 520
    .local v4, "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 521
    .local v5, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v6}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 522
    .local v6, "p2":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 523
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 524
    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 525
    .local v10, "x0":D
    iget-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v10

    iput-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 526
    const-wide/16 v8, 0x0

    .line 527
    .local v8, "sum":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_1

    .line 528
    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v12, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 529
    iget-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 530
    iget-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 531
    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 532
    iget-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v10

    iput-wide v12, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 533
    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v14, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    :cond_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    goto :goto_0
.end method

.method public static signedArea([Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 14
    .param p0, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 481
    array-length v1, p0

    const/4 v12, 0x3

    if-ge v1, v12, :cond_0

    .line 482
    const-wide/16 v12, 0x0

    .line 495
    :goto_0
    return-wide v12

    .line 483
    :cond_0
    const-wide/16 v2, 0x0

    .line 488
    .local v2, "sum":D
    const/4 v1, 0x0

    aget-object v1, p0, v1

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 489
    .local v6, "x0":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 490
    aget-object v1, p0, v0

    iget-wide v12, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v12, v6

    .line 491
    .local v4, "x":D
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 492
    .local v8, "y1":D
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 493
    .local v10, "y2":D
    sub-double v12, v10, v8

    mul-double/2addr v12, v4

    add-double/2addr v2, v12

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    .end local v4    # "x":D
    .end local v8    # "y1":D
    .end local v10    # "y2":D
    :cond_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v2, v12

    goto :goto_0
.end method
