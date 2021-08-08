.class public Lorg/locationtech/jts/algorithm/Angle;
.super Ljava/lang/Object;
.source "Angle.java"


# static fields
.field public static final CLOCKWISE:I = -0x1

.field public static final COUNTERCLOCKWISE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final PI_OVER_2:D = 1.5707963267948966

.field public static final PI_OVER_4:D = 0.7853981633974483

.field public static final PI_TIMES_2:D = 6.283185307179586


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angle(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 4
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 65
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v4, v6

    .line 66
    .local v0, "dx":D
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v4, v6

    .line 67
    .local v2, "dy":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static angleBetween(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 6
    .param p0, "tip1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "tail"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tip2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 135
    invoke-static {p1, p0}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 136
    .local v0, "a1":D
    invoke-static {p1, p2}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 138
    .local v2, "a2":D
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/Angle;->diff(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public static angleBetweenOriented(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 10
    .param p0, "tip1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "tail"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tip2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 158
    invoke-static {p1, p0}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 159
    .local v0, "a1":D
    invoke-static {p1, p2}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 160
    .local v2, "a2":D
    sub-double v4, v2, v0

    .line 163
    .local v4, "angDel":D
    const-wide v6, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    .line 164
    add-double/2addr v4, v8

    .line 167
    .end local v4    # "angDel":D
    :cond_0
    :goto_0
    return-wide v4

    .line 165
    .restart local v4    # "angDel":D
    :cond_1
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 166
    sub-double/2addr v4, v8

    goto :goto_0
.end method

.method public static diff(DD)D
    .locals 4
    .param p0, "ang1"    # D
    .param p2, "ang2"    # D

    .prologue
    .line 277
    cmpg-double v2, p0, p2

    if-gez v2, :cond_1

    .line 278
    sub-double v0, p2, p0

    .line 283
    .local v0, "delAngle":D
    :goto_0
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 284
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v0, v2, v0

    .line 287
    :cond_0
    return-wide v0

    .line 280
    .end local v0    # "delAngle":D
    :cond_1
    sub-double v0, p0, p2

    .restart local v0    # "delAngle":D
    goto :goto_0
.end method

.method public static getTurn(DD)I
    .locals 6
    .param p0, "ang1"    # D
    .param p2, "ang2"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 200
    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 202
    .local v0, "crossproduct":D
    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 203
    const/4 v2, 0x1

    .line 208
    :goto_0
    return v2

    .line 205
    :cond_0
    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    .line 206
    const/4 v2, -0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static interiorAngle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 6
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 185
    invoke-static {p1, p0}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 186
    .local v2, "anglePrev":D
    invoke-static {p1, p2}, Lorg/locationtech/jts/algorithm/Angle;->angle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 187
    .local v0, "angleNext":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static isAcute(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 16
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v12, v14

    .line 96
    .local v4, "dx0":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v8, v12, v14

    .line 97
    .local v8, "dy0":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v6, v12, v14

    .line 98
    .local v6, "dx1":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v10, v12, v14

    .line 99
    .local v10, "dy1":D
    mul-double v12, v4, v6

    mul-double v14, v8, v10

    add-double v2, v12, v14

    .line 100
    .local v2, "dotprod":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-lez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static isObtuse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 16
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v12, v14

    .line 117
    .local v4, "dx0":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v8, v12, v14

    .line 118
    .local v8, "dy0":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v6, v12, v14

    .line 119
    .local v6, "dx1":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v10, v12, v14

    .line 120
    .local v10, "dy1":D
    mul-double v12, v4, v6

    mul-double v14, v8, v10

    add-double v2, v12, v14

    .line 121
    .local v2, "dotprod":D
    const-wide/16 v12, 0x0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static normalize(D)D
    .locals 4
    .param p0, "angle"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 220
    :goto_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 221
    sub-double/2addr p0, v2

    goto :goto_0

    .line 222
    :cond_0
    :goto_1
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    .line 223
    add-double/2addr p0, v2

    goto :goto_1

    .line 224
    :cond_1
    return-wide p0
.end method

.method public static normalizePositive(D)D
    .locals 6
    .param p0, "angle"    # D

    .prologue
    const-wide/16 v4, 0x0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 248
    cmpg-double v0, p0, v4

    if-gez v0, :cond_2

    .line 249
    :goto_0
    cmpg-double v0, p0, v4

    if-gez v0, :cond_0

    .line 250
    add-double/2addr p0, v2

    goto :goto_0

    .line 252
    :cond_0
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    .line 253
    const-wide/16 p0, 0x0

    .line 262
    :cond_1
    :goto_1
    return-wide p0

    .line 256
    :cond_2
    :goto_2
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_3

    .line 257
    sub-double/2addr p0, v2

    goto :goto_2

    .line 259
    :cond_3
    cmpg-double v0, p0, v4

    if-gez v0, :cond_1

    .line 260
    const-wide/16 p0, 0x0

    goto :goto_1
.end method

.method public static toDegrees(D)D
    .locals 4
    .param p0, "radians"    # D

    .prologue
    .line 43
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "angleDegrees"    # D

    .prologue
    .line 53
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method
