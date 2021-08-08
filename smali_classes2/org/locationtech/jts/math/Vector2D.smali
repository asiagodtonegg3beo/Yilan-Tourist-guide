.class public Lorg/locationtech/jts/math/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 81
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/locationtech/jts/math/Vector2D;-><init>(DD)V

    .line 82
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    .line 86
    iput-wide p3, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "v"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    .line 101
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "from"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "to"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    .line 96
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/math/Vector2D;)V
    .locals 2
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-wide v0, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    .line 91
    iget-wide v0, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    .line 92
    return-void
.end method

.method public static create(DD)Lorg/locationtech/jts/math/Vector2D;
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 34
    new-instance v0, Lorg/locationtech/jts/math/Vector2D;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/math/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public static create(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/Vector2D;
    .locals 1
    .param p0, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 54
    new-instance v0, Lorg/locationtech/jts/math/Vector2D;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/Vector2D;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method public static create(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/Vector2D;
    .locals 1
    .param p0, "from"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "to"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 67
    new-instance v0, Lorg/locationtech/jts/math/Vector2D;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/math/Vector2D;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method public static create(Lorg/locationtech/jts/math/Vector2D;)Lorg/locationtech/jts/math/Vector2D;
    .locals 1
    .param p0, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 44
    new-instance v0, Lorg/locationtech/jts/math/Vector2D;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/Vector2D;-><init>(Lorg/locationtech/jts/math/Vector2D;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/math/Vector2D;)Lorg/locationtech/jts/math/Vector2D;
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public angle()D
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public angle(Lorg/locationtech/jts/math/Vector2D;)D
    .locals 4
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/locationtech/jts/math/Vector2D;->angle()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/locationtech/jts/math/Vector2D;->angle()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/Angle;->diff(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public angleTo(Lorg/locationtech/jts/math/Vector2D;)D
    .locals 10
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 224
    invoke-virtual {p0}, Lorg/locationtech/jts/math/Vector2D;->angle()D

    move-result-wide v0

    .line 225
    .local v0, "a1":D
    invoke-virtual {p1}, Lorg/locationtech/jts/math/Vector2D;->angle()D

    move-result-wide v2

    .line 226
    .local v2, "a2":D
    sub-double v4, v2, v0

    .line 229
    .local v4, "angDel":D
    const-wide v6, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    .line 230
    add-double/2addr v4, v8

    .line 233
    .end local v4    # "angDel":D
    :cond_0
    :goto_0
    return-wide v4

    .line 231
    .restart local v4    # "angDel":D
    :cond_1
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 232
    sub-double/2addr v4, v8

    goto :goto_0
.end method

.method public average(Lorg/locationtech/jts/math/Vector2D;)Lorg/locationtech/jts/math/Vector2D;
    .locals 2
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 166
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, p1, v0, v1}, Lorg/locationtech/jts/math/Vector2D;->weightedSum(Lorg/locationtech/jts/math/Vector2D;D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lorg/locationtech/jts/math/Vector2D;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/Vector2D;-><init>(Lorg/locationtech/jts/math/Vector2D;)V

    return-object v0
.end method

.method public distance(Lorg/locationtech/jts/math/Vector2D;)D
    .locals 8
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 197
    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    sub-double v0, v4, v6

    .line 198
    .local v0, "delx":D
    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    sub-double v2, v4, v6

    .line 199
    .local v2, "dely":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public divide(D)Lorg/locationtech/jts/math/Vector2D;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    div-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lorg/locationtech/jts/math/Vector2D;)D
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 318
    instance-of v2, p1, Lorg/locationtech/jts/math/Vector2D;

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 321
    check-cast v0, Lorg/locationtech/jts/math/Vector2D;

    .line 322
    .local v0, "v":Lorg/locationtech/jts/math/Vector2D;
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v4, v0, Lorg/locationtech/jts/math/Vector2D;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, v0, Lorg/locationtech/jts/math/Vector2D;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComponent(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    goto :goto_0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 332
    const/16 v0, 0x11

    .line 333
    .local v0, "result":I
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 334
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v2

    add-int v0, v1, v2

    .line 335
    return v0
.end method

.method public isParallel(Lorg/locationtech/jts/math/Vector2D;)Z
    .locals 10
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 278
    const-wide/16 v8, 0x0

    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    invoke-static/range {v0 .. v7}, Lorg/locationtech/jts/algorithm/RobustDeterminant;->signOfDet2x2(DDDD)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()D
    .locals 6

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public lengthSquared()D
    .locals 6

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public multiply(D)Lorg/locationtech/jts/math/Vector2D;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/locationtech/jts/math/Vector2D;
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/locationtech/jts/math/Vector2D;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lorg/locationtech/jts/math/Vector2D;->length()D

    move-result-wide v0

    .line 160
    .local v0, "length":D
    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 161
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/math/Vector2D;->divide(D)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v2

    .line 162
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v4, v5, v4, v5}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v2

    goto :goto_0
.end method

.method public rotate(D)Lorg/locationtech/jts/math/Vector2D;
    .locals 11
    .param p1, "angle"    # D

    .prologue
    .line 238
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 239
    .local v0, "cos":D
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 240
    .local v2, "sin":D
    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v4

    return-object v4
.end method

.method public rotateByQuarterCircle(I)Lorg/locationtech/jts/math/Vector2D;
    .locals 6
    .param p1, "numQuarters"    # I

    .prologue
    .line 258
    rem-int/lit8 v0, p1, 0x4

    .line 259
    .local v0, "nQuad":I
    if-gez p1, :cond_0

    if-eqz v0, :cond_0

    .line 260
    add-int/lit8 v0, v0, 0x4

    .line 262
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    .line 273
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 264
    :pswitch_0
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v1

    goto :goto_0

    .line 266
    :pswitch_1
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v1

    goto :goto_0

    .line 268
    :pswitch_2
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v1

    goto :goto_0

    .line 270
    :pswitch_3
    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v1

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public subtract(Lorg/locationtech/jts/math/Vector2D;)Lorg/locationtech/jts/math/Vector2D;
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public toCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 286
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 282
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public weightedSum(Lorg/locationtech/jts/math/Vector2D;D)Lorg/locationtech/jts/math/Vector2D;
    .locals 8
    .param p1, "v"    # Lorg/locationtech/jts/math/Vector2D;
    .param p2, "frac"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 185
    iget-wide v0, p0, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v0, p2

    sub-double v2, v6, p2

    iget-wide v4, p1, Lorg/locationtech/jts/math/Vector2D;->x:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v2, p2

    sub-double v4, v6, p2

    iget-wide v6, p1, Lorg/locationtech/jts/math/Vector2D;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/math/Vector2D;->create(DD)Lorg/locationtech/jts/math/Vector2D;

    move-result-object v0

    return-object v0
.end method
