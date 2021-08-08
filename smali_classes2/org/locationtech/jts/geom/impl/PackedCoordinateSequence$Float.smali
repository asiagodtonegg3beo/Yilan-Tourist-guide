.class public Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;
.super Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;
.source "PackedCoordinateSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field coords:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "dimension"    # I

    .prologue
    .line 402
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 403
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    .line 404
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    .line 405
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 4
    .param p1, "coordinates"    # [D
    .param p2, "dimension"    # I

    .prologue
    .line 371
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 372
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    .line 373
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    aget-wide v2, p1, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method public constructor <init>([FI)V
    .locals 2
    .param p1, "coords"    # [F
    .param p2, "dimensions"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 354
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least 2 dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    array-length v0, p1

    rem-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packed array does not contain an integral number of coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    .line 362
    iput-object p1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    .line 363
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;I)V
    .locals 6
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dimension"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence;-><init>()V

    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 v1, 0x0

    new-array p1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    .line 387
    :cond_0
    iput p2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    .line 389
    array-length v1, p1

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 391
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v2, v0

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    double-to-float v3, v4

    aput v3, v1, v2

    .line 392
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 393
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    double-to-float v3, v4

    aput v3, v1, v2

    .line 394
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 395
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    double-to-float v3, v4

    aput v3, v1, v2

    .line 390
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    array-length v1, v1

    new-array v0, v1, [F

    .line 439
    .local v0, "clone":[F
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget-object v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    new-instance v1, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;

    iget v2, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    invoke-direct {v1, v0, v2}, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;-><init>([FI)V

    return-object v1
.end method

.method public expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;
    .locals 6
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    aget v1, v1, v0

    float-to-double v2, v1

    iget-object v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    float-to-double v4, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(DD)V

    .line 464
    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 467
    :cond_0
    return-object p1
.end method

.method public getCoordinateInternal(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, p1

    aget v0, v0, v1

    float-to-double v2, v0

    .line 412
    .local v2, "x":D
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    float-to-double v4, v0

    .line 413
    .local v4, "y":D
    iget v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 414
    .local v6, "z":D
    :goto_0
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    return-object v1

    .line 413
    .end local v6    # "z":D
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    float-to-double v6, v0

    goto :goto_0
.end method

.method public getOrdinate(II)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "ordinate"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aget v0, v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getRawCoordinates()[F
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    return-object v0
.end method

.method public setOrdinate(IID)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "ordinate"    # I
    .param p3, "value"    # D

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coordRef:Ljava/lang/ref/SoftReference;

    .line 459
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    double-to-float v2, p3

    aput v2, v0, v1

    .line 460
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->coords:[F

    array-length v0, v0

    iget v1, p0, Lorg/locationtech/jts/geom/impl/PackedCoordinateSequence$Float;->dimension:I

    div-int/2addr v0, v1

    return v0
.end method
