.class public Lorg/locationtech/jts/index/quadtree/DoubleBits;
.super Ljava/lang/Object;
.source "DoubleBits.java"


# static fields
.field public static final EXPONENT_BIAS:I = 0x3ff


# instance fields
.field private x:D

.field private xBits:J


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->x:D

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    .line 80
    return-void
.end method

.method public static exponent(D)I
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 42
    new-instance v0, Lorg/locationtech/jts/index/quadtree/DoubleBits;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;-><init>(D)V

    .line 43
    .local v0, "db":Lorg/locationtech/jts/index/quadtree/DoubleBits;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getExponent()I

    move-result v1

    return v1
.end method

.method public static maximumCommonMantissa(DD)D
    .locals 8
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    cmpl-double v3, p0, v4

    if-eqz v3, :cond_0

    cmpl-double v3, p2, v4

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-wide v4

    .line 63
    :cond_1
    new-instance v0, Lorg/locationtech/jts/index/quadtree/DoubleBits;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;-><init>(D)V

    .line 64
    .local v0, "db1":Lorg/locationtech/jts/index/quadtree/DoubleBits;
    new-instance v1, Lorg/locationtech/jts/index/quadtree/DoubleBits;

    invoke-direct {v1, p2, p3}, Lorg/locationtech/jts/index/quadtree/DoubleBits;-><init>(D)V

    .line 66
    .local v1, "db2":Lorg/locationtech/jts/index/quadtree/DoubleBits;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getExponent()I

    move-result v3

    invoke-virtual {v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getExponent()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->numCommonMantissaBits(Lorg/locationtech/jts/index/quadtree/DoubleBits;)I

    move-result v2

    .line 69
    .local v2, "maxCommon":I
    add-int/lit8 v3, v2, 0xc

    rsub-int/lit8 v3, v3, 0x40

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->zeroLowerBits(I)V

    .line 70
    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getDouble()D

    move-result-wide v4

    goto :goto_0
.end method

.method public static powerOf2(I)D
    .locals 6
    .param p0, "exp"    # I

    .prologue
    .line 33
    const/16 v4, 0x3ff

    if-gt p0, v4, :cond_0

    const/16 v4, -0x3fe

    if-ge p0, v4, :cond_1

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Exponent out of bounds"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_1
    add-int/lit16 v4, p0, 0x3ff

    int-to-long v2, v4

    .line 36
    .local v2, "expBias":J
    const/16 v4, 0x34

    shl-long v0, v2, v4

    .line 37
    .local v0, "bits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static toBinaryString(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 55
    new-instance v0, Lorg/locationtech/jts/index/quadtree/DoubleBits;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;-><init>(D)V

    .line 56
    .local v0, "db":Lorg/locationtech/jts/index/quadtree/DoubleBits;
    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static truncateToPowerOfTwo(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 48
    new-instance v0, Lorg/locationtech/jts/index/quadtree/DoubleBits;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;-><init>(D)V

    .line 49
    .local v0, "db":Lorg/locationtech/jts/index/quadtree/DoubleBits;
    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->zeroLowerBits(I)V

    .line 50
    invoke-virtual {v0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getDouble()D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public biasedExponent()I
    .locals 5

    .prologue
    .line 92
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    long-to-int v1, v2

    .line 93
    .local v1, "signExp":I
    and-int/lit16 v0, v1, 0x7ff

    .line 94
    .local v0, "exp":I
    return v0
.end method

.method public getBit(I)I
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 114
    const-wide/16 v2, 0x1

    shl-long v0, v2, p1

    .line 115
    .local v0, "mask":J
    iget-wide v2, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExponent()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->biasedExponent()I

    move-result v0

    add-int/lit16 v0, v0, -0x3ff

    return v0
.end method

.method public numCommonMantissaBits(Lorg/locationtech/jts/index/quadtree/DoubleBits;)I
    .locals 5
    .param p1, "db"    # Lorg/locationtech/jts/index/quadtree/DoubleBits;

    .prologue
    const/16 v2, 0x34

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 130
    add-int/lit8 v0, v1, 0xc

    .line 131
    .local v0, "bitIndex":I
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getBit(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getBit(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 134
    .end local v0    # "bitIndex":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 128
    .restart local v0    # "bitIndex":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bitIndex":I
    :cond_1
    move v1, v2

    .line 134
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    .line 142
    iget-wide v6, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "numStr":Ljava/lang/String;
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 145
    .local v4, "zero64":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "padStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x40

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "bitStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 148
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->getExponent()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 149
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->x:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "str":Ljava/lang/String;
    return-object v3
.end method

.method public zeroLowerBits(I)V
    .locals 8
    .param p1, "nBits"    # I

    .prologue
    const-wide/16 v6, 0x1

    .line 107
    shl-long v4, v6, p1

    sub-long v0, v4, v6

    .line 108
    .local v0, "invMask":J
    const-wide/16 v4, -0x1

    xor-long v2, v0, v4

    .line 109
    .local v2, "mask":J
    iget-wide v4, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    and-long/2addr v4, v2

    iput-wide v4, p0, Lorg/locationtech/jts/index/quadtree/DoubleBits;->xBits:J

    .line 110
    return-void
.end method
