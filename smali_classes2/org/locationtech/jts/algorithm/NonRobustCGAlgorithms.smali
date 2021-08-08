.class public Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;
.super Lorg/locationtech/jts/algorithm/CGAlgorithms;
.source "NonRobustCGAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;-><init>()V

    .line 27
    return-void
.end method

.method public static computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 160
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

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
    .line 208
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v16

    .line 258
    :goto_0
    return-wide v16

    .line 210
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 211
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v16

    goto :goto_0

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v8, v16, v18

    .line 230
    .local v8, "r_top":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v6, v16, v18

    .line 232
    .local v6, "r_bot":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v14, v16, v18

    .line 233
    .local v14, "s_top":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v12, v16, v18

    .line 235
    .local v12, "s_bot":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v6, v16

    if-eqz v16, :cond_2

    const-wide/16 v16, 0x0

    cmpl-double v16, v12, v16

    if-nez v16, :cond_3

    .line 238
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v16

    .line 240
    invoke-static/range {p1 .. p3}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    .line 241
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v20

    .line 242
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v22

    .line 241
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    .line 239
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    .line 237
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto/16 :goto_0

    .line 245
    :cond_3
    div-double v10, v14, v12

    .line 246
    .local v10, "s":D
    div-double v4, v8, v6

    .line 248
    .local v4, "r":D
    const-wide/16 v16, 0x0

    cmpg-double v16, v4, v16

    if-ltz v16, :cond_4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v4, v16

    if-gtz v16, :cond_4

    const-wide/16 v16, 0x0

    cmpg-double v16, v10, v16

    if-ltz v16, :cond_4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v10, v16

    if-lez v16, :cond_5

    .line 252
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v16

    .line 254
    invoke-static/range {p1 .. p3}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    .line 255
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v20

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/NonRobustCGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v22

    .line 255
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    .line 253
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    .line 251
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto/16 :goto_0

    .line 258
    :cond_5
    const-wide/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 26
    .param p0, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 87
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 90
    .local v9, "nPts":I
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    const/16 v17, 0x0

    .line 146
    :goto_0
    return v17

    .line 94
    :cond_0
    const/16 v17, 0x0

    aget-object v5, p0, v17

    .line 95
    .local v5, "hip":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v4, 0x0

    .line 96
    .local v4, "hii":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-gt v6, v9, :cond_2

    .line 97
    aget-object v11, p0, v6

    .line 98
    .local v11, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v0, v11, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    iget-wide v0, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    cmpl-double v17, v22, v24

    if-lez v17, :cond_1

    .line 99
    move-object v5, v11

    .line 100
    move v4, v6

    .line 96
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105
    .end local v11    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    move v8, v4

    .line 107
    .local v8, "iPrev":I
    :cond_3
    add-int/lit8 v17, v8, -0x1

    rem-int v8, v17, v9

    .line 108
    aget-object v17, p0, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-ne v8, v4, :cond_3

    .line 111
    :cond_4
    move v7, v4

    .line 113
    .local v7, "iNext":I
    :cond_5
    add-int/lit8 v17, v7, 0x1

    rem-int v7, v17, v9

    .line 114
    aget-object v17, p0, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-ne v7, v4, :cond_5

    .line 116
    :cond_6
    aget-object v16, p0, v8

    .line 117
    .local v16, "prev":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v10, p0, v7

    .line 119
    .local v10, "next":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v10, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 120
    :cond_7
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v22, "degenerate ring (does not contain 3 different points)"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 126
    :cond_8
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    iget-wide v0, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    sub-double v18, v22, v24

    .line 127
    .local v18, "prev2x":D
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    iget-wide v0, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    sub-double v20, v22, v24

    .line 128
    .local v20, "prev2y":D
    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    iget-wide v0, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    sub-double v12, v22, v24

    .line 129
    .local v12, "next2x":D
    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    iget-wide v0, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    sub-double v14, v22, v24

    .line 132
    .local v14, "next2y":D
    mul-double v22, v12, v20

    mul-double v24, v14, v18

    sub-double v2, v22, v24

    .line 140
    .local v2, "disc":D
    const-wide/16 v22, 0x0

    cmpl-double v17, v2, v22

    if-nez v17, :cond_a

    .line 142
    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    iget-wide v0, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    cmpl-double v17, v22, v24

    if-lez v17, :cond_9

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 146
    :cond_a
    const-wide/16 v22, 0x0

    cmpl-double v17, v2, v22

    if-lez v17, :cond_b

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public static isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 22
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, "crossings":I
    move-object/from16 v0, p1

    array-length v5, v0

    .line 48
    .local v5, "nPts":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 49
    add-int/lit8 v4, v3, -0x1

    .line 50
    .local v4, "i1":I
    aget-object v6, p1, v3

    .line 51
    .local v6, "p1":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v7, p1, v4

    .line 52
    .local v7, "p2":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v0, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v8, v18, v20

    .line 53
    .local v8, "x1":D
    iget-wide v0, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v14, v18, v20

    .line 54
    .local v14, "y1":D
    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v10, v18, v20

    .line 55
    .local v10, "x2":D
    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    sub-double v16, v18, v20

    .line 57
    .local v16, "y2":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v14, v18

    if-lez v18, :cond_0

    const-wide/16 v18, 0x0

    cmpg-double v18, v16, v18

    if-lez v18, :cond_1

    :cond_0
    const-wide/16 v18, 0x0

    cmpl-double v18, v16, v18

    if-lez v18, :cond_2

    const-wide/16 v18, 0x0

    cmpg-double v18, v14, v18

    if-gtz v18, :cond_2

    .line 60
    :cond_1
    mul-double v18, v8, v16

    mul-double v20, v10, v14

    sub-double v18, v18, v20

    sub-double v20, v16, v14

    div-double v12, v18, v20

    .line 63
    .local v12, "xInt":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v18, v12

    if-gez v18, :cond_2

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 48
    .end local v12    # "xInt":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v4    # "i1":I
    .end local v6    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v7    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    .end local v8    # "x1":D
    .end local v10    # "x2":D
    .end local v14    # "y1":D
    .end local v16    # "y2":D
    :cond_3
    rem-int/lit8 v18, v2, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 69
    const/16 v18, 0x1

    .line 71
    :goto_1
    return v18

    :cond_4
    const/16 v18, 0x0

    goto :goto_1
.end method

.method public static orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 16
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 180
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v12, v14

    .line 181
    .local v4, "dx1":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v8, v12, v14

    .line 182
    .local v8, "dy1":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v6, v12, v14

    .line 183
    .local v6, "dx2":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v10, v12, v14

    .line 184
    .local v10, "dy2":D
    mul-double v12, v4, v10

    mul-double v14, v6, v8

    sub-double v2, v12, v14

    .line 185
    .local v2, "det":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-lez v12, :cond_0

    const/4 v12, 0x1

    .line 187
    :goto_0
    return v12

    .line 186
    :cond_0
    const-wide/16 v12, 0x0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_1

    const/4 v12, -0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method
