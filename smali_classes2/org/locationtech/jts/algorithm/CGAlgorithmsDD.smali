.class public Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;
.super Ljava/lang/Object;
.source "CGAlgorithmsDD.java"


# static fields
.field private static final DP_SAFE_EPSILON:D = 1.0E-15


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 26
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 154
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    .line 155
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    .line 156
    .local v5, "denom1":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 157
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 158
    .local v6, "denom2":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v5, v6}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v4

    .line 167
    .local v4, "denom":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 168
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v12

    .line 169
    .local v12, "numx1":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    .line 170
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v13

    .line 171
    .local v13, "numx2":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v12, v13}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    .line 172
    .local v7, "numx":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v7, v4}, Lorg/locationtech/jts/math/DD;->selfDivide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v8

    .line 174
    .local v8, "fracP":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lorg/locationtech/jts/math/DD;->selfMultiply(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v18

    .line 176
    .local v18, "x":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 177
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v15

    .line 178
    .local v15, "numy1":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    .line 179
    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v16

    .line 180
    .local v16, "numy2":Lorg/locationtech/jts/math/DD;
    invoke-virtual/range {v15 .. v16}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v14

    .line 181
    .local v14, "numy":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v14, v4}, Lorg/locationtech/jts/math/DD;->selfDivide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v10

    .line 183
    .local v10, "fracQ":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lorg/locationtech/jts/math/DD;->selfMultiply(D)Lorg/locationtech/jts/math/DD;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v20

    .line 185
    .local v20, "y":D
    new-instance v17, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v17 .. v21}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v17
.end method

.method public static orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 8
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->orientationIndexFilter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v4

    .line 44
    .local v4, "index":I
    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 53
    .end local v4    # "index":I
    :goto_0
    return v4

    .line 47
    .restart local v4    # "index":I
    :cond_0
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 48
    .local v0, "dx1":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 49
    .local v2, "dy1":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    .line 50
    .local v1, "dx2":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    .line 53
    .local v3, "dy2":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/math/DD;->signum()I

    move-result v4

    goto :goto_0
.end method

.method private static orientationIndexFilter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 18
    .param p0, "pa"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "pb"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "pc"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double v4, v12, v14

    .line 101
    .local v4, "detleft":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double v6, v12, v14

    .line 102
    .local v6, "detright":D
    sub-double v2, v4, v6

    .line 104
    .local v2, "det":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-lez v12, :cond_2

    .line 105
    const-wide/16 v12, 0x0

    cmpg-double v12, v6, v12

    if-gtz v12, :cond_0

    .line 106
    invoke-static {v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->signum(D)I

    move-result v12

    .line 129
    :goto_0
    return v12

    .line 109
    :cond_0
    add-double v8, v4, v6

    .line 124
    .local v8, "detsum":D
    :goto_1
    const-wide v12, 0x3cd203af9ee75616L    # 1.0E-15

    mul-double v10, v12, v8

    .line 125
    .local v10, "errbound":D
    cmpl-double v12, v2, v10

    if-gez v12, :cond_1

    neg-double v12, v2

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_5

    .line 126
    :cond_1
    invoke-static {v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->signum(D)I

    move-result v12

    goto :goto_0

    .line 112
    .end local v8    # "detsum":D
    .end local v10    # "errbound":D
    :cond_2
    const-wide/16 v12, 0x0

    cmpg-double v12, v4, v12

    if-gez v12, :cond_4

    .line 113
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-ltz v12, :cond_3

    .line 114
    invoke-static {v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->signum(D)I

    move-result v12

    goto :goto_0

    .line 117
    :cond_3
    neg-double v12, v4

    sub-double v8, v12, v6

    .restart local v8    # "detsum":D
    goto :goto_1

    .line 121
    .end local v8    # "detsum":D
    :cond_4
    invoke-static {v2, v3}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->signum(D)I

    move-result v12

    goto :goto_0

    .line 129
    .restart local v8    # "detsum":D
    .restart local v10    # "errbound":D
    :cond_5
    const/4 v12, 0x2

    goto :goto_0
.end method

.method public static signOfDet2x2(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)I
    .locals 3
    .param p0, "x1"    # Lorg/locationtech/jts/math/DD;
    .param p1, "y1"    # Lorg/locationtech/jts/math/DD;
    .param p2, "x2"    # Lorg/locationtech/jts/math/DD;
    .param p3, "y2"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 66
    invoke-virtual {p0, p3}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 67
    .local v0, "det":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v0}, Lorg/locationtech/jts/math/DD;->signum()I

    move-result v1

    return v1
.end method

.method private static signum(D)I
    .locals 4
    .param p0, "x"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 134
    cmpl-double v0, p0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 135
    :cond_0
    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
