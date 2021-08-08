.class public Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;
.super Lorg/locationtech/jts/algorithm/LineIntersector;
.source "NonRobustLineIntersector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;-><init>()V

    .line 43
    return-void
.end method

.method private computeCollinearIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 19
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "p4"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 232
    const-wide/16 v6, 0x0

    .line 233
    .local v6, "r1":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 234
    .local v8, "r2":D
    invoke-direct/range {p0 .. p3}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->rParameter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 235
    .local v10, "r3":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->rParameter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v12

    .line 237
    .local v12, "r4":D
    cmpg-double v18, v10, v12

    if-gez v18, :cond_1

    .line 238
    move-object/from16 v4, p3

    .line 239
    .local v4, "q3":Lorg/locationtech/jts/geom/Coordinate;
    move-wide v14, v10

    .line 240
    .local v14, "t3":D
    move-object/from16 v5, p4

    .line 241
    .local v5, "q4":Lorg/locationtech/jts/geom/Coordinate;
    move-wide/from16 v16, v12

    .line 250
    .local v16, "t4":D
    :goto_0
    cmpl-double v18, v14, v8

    if-gtz v18, :cond_0

    cmpg-double v18, v16, v6

    if-gez v18, :cond_2

    .line 251
    :cond_0
    const/16 v18, 0x0

    .line 273
    :goto_1
    return v18

    .line 244
    .end local v4    # "q3":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "q4":Lorg/locationtech/jts/geom/Coordinate;
    .end local v14    # "t3":D
    .end local v16    # "t4":D
    :cond_1
    move-object/from16 v4, p4

    .line 245
    .restart local v4    # "q3":Lorg/locationtech/jts/geom/Coordinate;
    move-wide v14, v12

    .line 246
    .restart local v14    # "t3":D
    move-object/from16 v5, p3

    .line 247
    .restart local v5    # "q4":Lorg/locationtech/jts/geom/Coordinate;
    move-wide/from16 v16, v10

    .restart local v16    # "t4":D
    goto :goto_0

    .line 255
    :cond_2
    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 257
    const/16 v18, 0x1

    goto :goto_1

    .line 259
    :cond_3
    move-object/from16 v0, p2

    if-ne v4, v0, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 261
    const/16 v18, 0x1

    goto :goto_1

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 266
    cmpl-double v18, v14, v6

    if-lez v18, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 269
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pb:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 270
    cmpg-double v18, v16, v8

    if-gez v18, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pb:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 273
    :cond_6
    const/16 v18, 0x2

    goto :goto_1
.end method

.method public static isSameSignAndNonZero(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 35
    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_3

    :cond_2
    cmpl-double v1, p0, v2

    if-lez v1, :cond_0

    cmpl-double v1, p2, v2

    if-lez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rParameter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 12
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 286
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 287
    .local v0, "dx":D
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 288
    .local v2, "dy":D
    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 289
    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v8

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v8, v10

    div-double v4, v6, v8

    .line 294
    .local v4, "r":D
    :goto_0
    return-wide v4

    .line 292
    .end local v4    # "r":D
    :cond_0
    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v10

    div-double v4, v6, v8

    .restart local v4    # "r":D
    goto :goto_0
.end method


# virtual methods
.method protected computeIntersect(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 36
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "p4"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 124
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 130
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    sub-double v4, v30, v32

    .line 131
    .local v4, "a1":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    sub-double v8, v30, v32

    .line 132
    .local v8, "b1":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    sub-double v12, v30, v32

    .line 137
    .local v12, "c1":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v4

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    add-double v30, v30, v32

    add-double v26, v30, v12

    .line 138
    .local v26, "r3":D
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v4

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    add-double v30, v30, v32

    add-double v28, v30, v12

    .line 144
    .local v28, "r4":D
    const-wide/16 v30, 0x0

    cmpl-double v30, v26, v30

    if-eqz v30, :cond_0

    const-wide/16 v30, 0x0

    cmpl-double v30, v28, v30

    if-eqz v30, :cond_0

    .line 146
    invoke-static/range {v26 .. v29}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isSameSignAndNonZero(DD)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 147
    const/16 v30, 0x0

    .line 205
    :goto_0
    return v30

    .line 153
    :cond_0
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    sub-double v6, v30, v32

    .line 154
    .local v6, "a2":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    sub-double v10, v30, v32

    .line 155
    .local v10, "b2":D
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    sub-double v14, v30, v32

    .line 160
    .local v14, "c2":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v10

    add-double v30, v30, v32

    add-double v22, v30, v14

    .line 161
    .local v22, "r1":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v6

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    mul-double v32, v32, v10

    add-double v30, v30, v32

    add-double v24, v30, v14

    .line 168
    .local v24, "r2":D
    const-wide/16 v30, 0x0

    cmpl-double v30, v22, v30

    if-eqz v30, :cond_1

    const-wide/16 v30, 0x0

    cmpl-double v30, v24, v30

    if-eqz v30, :cond_1

    .line 170
    invoke-static/range {v22 .. v25}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isSameSignAndNonZero(DD)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 171
    const/16 v30, 0x0

    goto :goto_0

    .line 177
    :cond_1
    mul-double v30, v4, v10

    mul-double v32, v6, v8

    sub-double v16, v30, v32

    .line 178
    .local v16, "denom":D
    const-wide/16 v30, 0x0

    cmpl-double v30, v16, v30

    if-nez v30, :cond_2

    .line 179
    invoke-direct/range {p0 .. p4}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->computeCollinearIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v30

    goto/16 :goto_0

    .line 181
    :cond_2
    mul-double v30, v8, v14

    mul-double v32, v10, v12

    sub-double v18, v30, v32

    .line 182
    .local v18, "numX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    div-double v32, v18, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 190
    mul-double v30, v6, v12

    mul-double v32, v4, v14

    sub-double v20, v30, v32

    .line 191
    .local v20, "numY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    div-double v32, v20, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 195
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 197
    :cond_3
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 205
    :cond_5
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method public computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 20
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 65
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 66
    .local v4, "a1":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v6, v14, v16

    .line 67
    .local v6, "b1":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v8, v14, v16

    .line 72
    .local v8, "c1":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v14, v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v14, v14, v16

    add-double v12, v14, v8

    .line 75
    .local v12, "r":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-eqz v14, :cond_0

    .line 76
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->result:I

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->rParameter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 83
    .local v10, "dist":D
    const-wide/16 v14, 0x0

    cmpg-double v14, v10, v14

    if-ltz v14, :cond_1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_2

    .line 84
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->result:I

    goto :goto_0

    .line 88
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 89
    invoke-virtual/range {p1 .. p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 90
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->isProper:Z

    .line 92
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/locationtech/jts/algorithm/NonRobustLineIntersector;->result:I

    goto :goto_0
.end method
