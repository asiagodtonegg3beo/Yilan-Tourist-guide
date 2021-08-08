.class public Lorg/locationtech/jts/geom/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# instance fields
.field public p0:Lorg/locationtech/jts/geom/Coordinate;

.field public p1:Lorg/locationtech/jts/geom/Coordinate;

.field public p2:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 419
    iput-object p2, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 420
    iput-object p3, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    .line 421
    return-void
.end method

.method public static angleBisector(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 20
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 267
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 268
    .local v8, "len0":D
    invoke-virtual/range {p1 .. p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 269
    .local v10, "len2":D
    add-double v14, v8, v10

    div-double v6, v8, v14

    .line 270
    .local v6, "frac":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    sub-double v2, v14, v16

    .line 271
    .local v2, "dx":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v4, v14, v16

    .line 273
    .local v4, "dy":D
    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v16, v6, v2

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 274
    .local v12, "splitPt":Lorg/locationtech/jts/geom/Coordinate;
    return-object v12
.end method

.method public static area(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 292
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 292
    return-wide v0
.end method

.method public static area3D(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 28
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 344
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v12, v24, v26

    .line 345
    .local v12, "ux":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v14, v24, v26

    .line 346
    .local v14, "uy":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v26, v0

    sub-double v16, v24, v26

    .line 348
    .local v16, "uz":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v18, v24, v26

    .line 349
    .local v18, "vx":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v20, v24, v26

    .line 350
    .local v20, "vy":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v26, v0

    sub-double v22, v24, v26

    .line 353
    .local v22, "vz":D
    mul-double v24, v14, v22

    mul-double v26, v16, v20

    sub-double v6, v24, v26

    .line 354
    .local v6, "crossx":D
    mul-double v24, v16, v18

    mul-double v26, v12, v22

    sub-double v8, v24, v26

    .line 355
    .local v8, "crossy":D
    mul-double v24, v12, v20

    mul-double v26, v14, v18

    sub-double v10, v24, v26

    .line 358
    .local v10, "crossz":D
    mul-double v24, v6, v6

    mul-double v26, v8, v8

    add-double v24, v24, v26

    mul-double v26, v10, v10

    add-double v2, v24, v26

    .line 359
    .local v2, "absSq":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v4, v24, v26

    .line 361
    .local v4, "area3D":D
    return-wide v4
.end method

.method public static centroid(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 218
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v6

    div-double v0, v4, v8

    .line 219
    .local v0, "x":D
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    div-double v2, v4, v8

    .line 220
    .local v2, "y":D
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v4
.end method

.method public static circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 34
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 133
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    .line 134
    .local v24, "cx":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    .line 135
    .local v26, "cy":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v12, v24

    .line 136
    .local v4, "ax":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v6, v12, v26

    .line 137
    .local v6, "ay":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v8, v12, v24

    .line 138
    .local v8, "bx":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v10, v12, v26

    .line 140
    .local v10, "by":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static/range {v4 .. v11}, Lorg/locationtech/jts/geom/Triangle;->det(DDDD)D

    move-result-wide v14

    mul-double v28, v12, v14

    .line 141
    .local v28, "denom":D
    mul-double v12, v4, v4

    mul-double v14, v6, v6

    add-double/2addr v14, v12

    mul-double v12, v8, v8

    mul-double v16, v10, v10

    add-double v18, v12, v16

    move-wide v12, v6

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v19}, Lorg/locationtech/jts/geom/Triangle;->det(DDDD)D

    move-result-wide v30

    .line 142
    .local v30, "numx":D
    mul-double v12, v4, v4

    mul-double v14, v6, v6

    add-double/2addr v14, v12

    mul-double v12, v8, v8

    mul-double v16, v10, v10

    add-double v18, v12, v16

    move-wide v12, v4

    move-wide/from16 v16, v8

    invoke-static/range {v12 .. v19}, Lorg/locationtech/jts/geom/Triangle;->det(DDDD)D

    move-result-wide v32

    .line 144
    .local v32, "numy":D
    div-double v12, v30, v28

    sub-double v20, v24, v12

    .line 145
    .local v20, "ccx":D
    div-double v12, v32, v28

    add-double v22, v26, v12

    .line 147
    .local v22, "ccy":D
    new-instance v12, Lorg/locationtech/jts/geom/Coordinate;

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v12
.end method

.method private static det(DDDD)D
    .locals 4
    .param p0, "m00"    # D
    .param p2, "m01"    # D
    .param p4, "m10"    # D
    .param p6, "m11"    # D

    .prologue
    .line 166
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static inCentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 18
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 189
    invoke-virtual/range {p1 .. p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 190
    .local v8, "len0":D
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 191
    .local v10, "len1":D
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v12

    .line 192
    .local v12, "len2":D
    add-double v14, v8, v10

    add-double v2, v14, v12

    .line 194
    .local v2, "circum":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v14, v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v14, v14, v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v14, v14, v16

    div-double v4, v14, v2

    .line 195
    .local v4, "inCentreX":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v14, v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v14, v14, v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v14, v14, v16

    div-double v6, v14, v2

    .line 196
    .local v6, "inCentreY":D
    new-instance v14, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v14, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v14
.end method

.method public static interpolateZ(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 32
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "v0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "v1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "v2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 386
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    .line 387
    .local v20, "x0":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 388
    .local v22, "y0":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v2, v26, v20

    .line 389
    .local v2, "a":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v4, v26, v20

    .line 390
    .local v4, "b":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v6, v26, v22

    .line 391
    .local v6, "c":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v8, v26, v22

    .line 392
    .local v8, "d":D
    mul-double v26, v2, v8

    mul-double v28, v4, v6

    sub-double v10, v26, v28

    .line 393
    .local v10, "det":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v12, v26, v20

    .line 394
    .local v12, "dx":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v14, v26, v22

    .line 395
    .local v14, "dy":D
    mul-double v26, v8, v12

    mul-double v28, v4, v14

    sub-double v26, v26, v28

    div-double v16, v26, v10

    .line 396
    .local v16, "t":D
    neg-double v0, v6

    move-wide/from16 v26, v0

    mul-double v26, v26, v12

    mul-double v28, v2, v14

    add-double v26, v26, v28

    div-double v18, v26, v10

    .line 397
    .local v18, "u":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v28, v28, v16

    add-double v26, v26, v28

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v28, v28, v18

    add-double v24, v26, v28

    .line 398
    .local v24, "z":D
    return-wide v24
.end method

.method public static isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/algorithm/Angle;->isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-static {p1, p2, p0}, Lorg/locationtech/jts/algorithm/Angle;->isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, p0, p1}, Lorg/locationtech/jts/algorithm/Angle;->isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static longestSideLength(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 9
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 238
    .local v0, "lenAB":D
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 239
    .local v2, "lenBC":D
    invoke-virtual {p2, p0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 240
    .local v4, "lenCA":D
    move-wide v6, v0

    .line 241
    .local v6, "maxLen":D
    cmpl-double v8, v2, v6

    if-lez v8, :cond_0

    .line 242
    move-wide v6, v2

    .line 243
    :cond_0
    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 244
    move-wide v6, v4

    .line 245
    :cond_1
    return-wide v6
.end method

.method public static perpendicularBisector(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/algorithm/HCoordinate;
    .locals 14
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 67
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v10, v4, v6

    .line 68
    .local v10, "dx":D
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v12, v4, v6

    .line 69
    .local v12, "dy":D
    new-instance v1, Lorg/locationtech/jts/algorithm/HCoordinate;

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v10, v6

    add-double v2, v4, v6

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v12, v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(DDD)V

    .line 70
    .local v1, "l1":Lorg/locationtech/jts/algorithm/HCoordinate;
    new-instance v3, Lorg/locationtech/jts/algorithm/HCoordinate;

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v10, v6

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v6, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v12, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(DDD)V

    .line 72
    .local v3, "l2":Lorg/locationtech/jts/algorithm/HCoordinate;
    new-instance v0, Lorg/locationtech/jts/algorithm/HCoordinate;

    invoke-direct {v0, v1, v3}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(Lorg/locationtech/jts/algorithm/HCoordinate;Lorg/locationtech/jts/algorithm/HCoordinate;)V

    return-object v0
.end method

.method public static signedArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 322
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public area()D
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->area(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public area3D()D
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->area3D(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public centroid()Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->centroid(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public circumcentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public inCentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->inCentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public interpolateZ(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied point is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->interpolateZ(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isAcute()Z
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method public longestSideLength()D
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->longestSideLength(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public signedArea()D
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Triangle;->p2:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->signedArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method
