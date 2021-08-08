.class public Lorg/locationtech/jts/algorithm/CGAlgorithms3D;
.super Ljava/lang/Object;
.source "CGAlgorithms3D.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 10
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 32
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 38
    :goto_0
    return-wide v6

    .line 35
    :cond_1
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v6, v8

    .line 36
    .local v0, "dx":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v6, v8

    .line 37
    .local v2, "dy":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double v4, v6, v8

    .line 38
    .local v4, "dz":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    goto :goto_0
.end method

.method public static distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 26
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "B"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p2}, Lorg/locationtech/jts/geom/Coordinate;->equals3D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 45
    invoke-static/range {p0 .. p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    .line 80
    :goto_0
    return-wide v18

    .line 61
    :cond_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v8, v18, v20

    .line 62
    .local v8, "len2":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 63
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ordinates must not be NaN"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 64
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    div-double v16, v18, v8

    .line 67
    .local v16, "r":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_2

    .line 68
    invoke-static/range {p0 .. p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    goto/16 :goto_0

    .line 69
    :cond_2
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v16, v18

    if-ltz v18, :cond_3

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    goto/16 :goto_0

    .line 73
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v20, v20, v16

    add-double v10, v18, v20

    .line 74
    .local v10, "qx":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v20, v20, v16

    add-double v12, v18, v20

    .line 75
    .local v12, "qy":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    mul-double v20, v20, v16

    add-double v14, v18, v20

    .line 77
    .local v14, "qz":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v2, v18, v10

    .line 78
    .local v2, "dx":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v4, v18, v12

    .line 79
    .local v4, "dy":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v18, v0

    sub-double v6, v18, v14

    .line 80
    .local v6, "dz":D
    mul-double v18, v2, v2

    mul-double v20, v4, v4

    add-double v18, v18, v20

    mul-double v20, v6, v6

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    goto/16 :goto_0
.end method

.method public static distanceSegmentSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 38
    .param p0, "A"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "B"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "C"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "D"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals3D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 159
    :goto_0
    return-wide v4

    .line 103
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals3D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto :goto_0

    .line 109
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v20

    .line 110
    .local v20, "a":D
    invoke-static/range {p0 .. p3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v22

    .line 111
    .local v22, "b":D
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v24

    .line 112
    .local v24, "c":D
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v26

    .line 113
    .local v26, "d":D
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector3D;->dot(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v30

    .line 115
    .local v30, "e":D
    mul-double v4, v20, v24

    mul-double v12, v22, v22

    sub-double v28, v4, v12

    .line 116
    .local v28, "denom":D
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Ordinates must not be NaN"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_2
    const-wide/16 v4, 0x0

    cmpg-double v4, v28, v4

    if-gtz v4, :cond_4

    .line 126
    const-wide/16 v32, 0x0

    .line 128
    .local v32, "s":D
    cmpl-double v4, v22, v24

    if-lez v4, :cond_3

    .line 129
    div-double v34, v26, v22

    .line 137
    .local v34, "t":D
    :goto_1
    const-wide/16 v4, 0x0

    cmpg-double v4, v32, v4

    if-gez v4, :cond_5

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto :goto_0

    .line 131
    .end local v34    # "t":D
    :cond_3
    div-double v34, v30, v24

    .restart local v34    # "t":D
    goto :goto_1

    .line 134
    .end local v32    # "s":D
    .end local v34    # "t":D
    :cond_4
    mul-double v4, v22, v30

    mul-double v12, v24, v26

    sub-double/2addr v4, v12

    div-double v32, v4, v28

    .line 135
    .restart local v32    # "s":D
    mul-double v4, v20, v30

    mul-double v12, v22, v26

    sub-double/2addr v4, v12

    div-double v34, v4, v28

    .restart local v34    # "t":D
    goto :goto_1

    .line 139
    :cond_5
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v32, v4

    if-lez v4, :cond_6

    .line 140
    invoke-static/range {p1 .. p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 141
    :cond_6
    const-wide/16 v4, 0x0

    cmpg-double v4, v34, v4

    if-gez v4, :cond_7

    .line 142
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 143
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v34, v4

    if-lez v4, :cond_8

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distancePointSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto/16 :goto_0

    .line 150
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v32

    add-double v6, v4, v12

    .line 151
    .local v6, "x1":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v32

    add-double v8, v4, v12

    .line 152
    .local v8, "y1":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v32

    add-double v10, v4, v12

    .line 154
    .local v10, "z1":D
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v34

    add-double v14, v4, v12

    .line 155
    .local v14, "x2":D
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v34

    add-double v16, v4, v12

    .line 156
    .local v16, "y2":D
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v36, v0

    sub-double v12, v12, v36

    mul-double v12, v12, v34

    add-double v18, v4, v12

    .line 159
    .local v18, "z2":D
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v5 .. v11}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    new-instance v13, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v13 .. v19}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    invoke-static {v5, v13}, Lorg/locationtech/jts/algorithm/CGAlgorithms3D;->distance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    goto/16 :goto_0
.end method
