.class public Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;
.super Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;
.source "PackedCoordinateSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field coords:[D


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 269
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    .line 270
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    .line 271
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 2
    .param p1, "coords"    # [D
    .param p2, "dimensions"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 213
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least 2 dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    array-length v0, p1

    rem-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packed array does not contain an integral number of coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    .line 221
    iput-object p1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    .line 222
    return-void
.end method

.method public constructor <init>([FI)V
    .locals 4
    .param p1, "coordinates"    # [F
    .param p2, "dimensions"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 230
    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    .line 231
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    aget v2, p1, v0

    float-to-double v2, v2

    aput-wide v2, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 262
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 263
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;I)V
    .locals 6
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dimension"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 243
    if-nez p1, :cond_0

    .line 244
    const/4 v1, 0x0

    new-array p1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    .line 245
    :cond_0
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    .line 247
    array-length v1, p1

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 249
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v2, v0

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aput-wide v4, v1, v2

    .line 250
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aput-wide v4, v1, v2

    .line 252
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 253
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    aput-wide v4, v1, v2

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 305
    .local v0, "clone":[D
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget-object v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    new-instance v1, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    invoke-direct {v1, v0, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;-><init>([DI)V

    return-object v1
.end method

.method public expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;
    .locals 6
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    aget-wide v2, v1, v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v1, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(DD)V

    .line 330
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 333
    :cond_0
    return-object p1
.end method

.method public getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, p1

    aget-wide v2, v0, v1

    .line 278
    .local v2, "x":D
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, v0, v1

    .line 279
    .local v4, "y":D
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 280
    .local v6, "z":D
    :goto_0
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    return-object v1

    .line 279
    .end local v6    # "z":D
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget-wide v6, v0, v1

    goto :goto_0
.end method

.method public getOrdinate(II)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "ordinate"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRawCoordinates()[D
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    return-object v0
.end method

.method public setOrdinate(IID)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "ordinate"    # I
    .param p3, "value"    # D

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coordRef:Ljava/lang/ref/SoftReference;

    .line 325
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 326
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->coords:[D

    array-length v0, v0

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Double;->dimension:I

    div-int/2addr v0, v1

    return v0
.end method
