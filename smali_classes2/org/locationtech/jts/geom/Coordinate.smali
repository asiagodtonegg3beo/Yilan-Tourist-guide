.class public Lorg/locationtech/jts/geom/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;
    }
.end annotation


# static fields
.field public static final NULL_ORDINATE:D = NaN

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2

.field private static final serialVersionUID:J = 0x5cbf2c235c7e583eL


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 88
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 107
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 108
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 79
    iput-wide p3, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 80
    iput-wide p5, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 8
    .param p1, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 97
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 98
    return-void
.end method

.method public static hashCode(D)I
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 339
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 340
    .local v0, "f":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 282
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v2, "this shouldn\'t happen because this class is Cloneable"

    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 262
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 264
    .local v0, "other":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 266
    :cond_2
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 267
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 268
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public distance(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p1, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 301
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v4, v6

    .line 302
    .local v0, "dx":D
    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v4, v6

    .line 303
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public distance3D(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 10
    .param p1, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 313
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v6, v8

    .line 314
    .local v0, "dx":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v6, v8

    .line 315
    .local v2, "dy":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double v4, v6, v8

    .line 316
    .local v4, "dz":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public equalInZ(Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 6
    .param p1, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tolerance"    # D

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/util/NumberUtil;->equalsWithTolerance(DDD)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 237
    instance-of v0, p1, Lorg/locationtech/jts/geom/Coordinate;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lorg/locationtech/jts/geom/Coordinate;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals2D(Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 8
    .param p1, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v6, 0x0

    .line 194
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/util/NumberUtil;->equalsWithTolerance(DDD)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/util/NumberUtil;->equalsWithTolerance(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 198
    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals3D(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrdinate(I)D
    .locals 3
    .param p1, "ordinateIndex"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ordinate index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 135
    :goto_0
    return-wide v0

    .line 134
    :pswitch_1
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 135
    :pswitch_2
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 326
    const/16 v0, 0x11

    .line 327
    .local v0, "result":I
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 328
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->hashCode(D)I

    move-result v2

    add-int v0, v1, v2

    .line 329
    return v0
.end method

.method public setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 116
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 117
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 118
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 119
    return-void
.end method

.method public setOrdinate(ID)V
    .locals 4
    .param p1, "ordinateIndex"    # I
    .param p2, "value"    # D

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ordinate index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    iput-wide p2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 165
    :goto_0
    return-void

    .line 157
    :pswitch_1
    iput-wide p2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 160
    :pswitch_2
    iput-wide p2, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
