.class public Lorg/locationtech/jts/precision/CommonBits;
.super Ljava/lang/Object;
.source "CommonBits.java"


# instance fields
.field private commonBits:J

.field private commonMantissaBitsCount:I

.field private commonSignExp:J

.field private isFirst:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/precision/CommonBits;->isFirst:Z

    .line 89
    const/16 v0, 0x35

    iput v0, p0, Lorg/locationtech/jts/precision/CommonBits;->commonMantissaBitsCount:I

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    .line 94
    return-void
.end method

.method public static getBit(JI)I
    .locals 6
    .param p0, "bits"    # J
    .param p2, "i"    # I

    .prologue
    .line 84
    const-wide/16 v2, 0x1

    shl-long v0, v2, p2

    .line 85
    .local v0, "mask":J
    and-long v2, p0, v0

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

.method public static numCommonMostSigMantissaBits(JJ)I
    .locals 4
    .param p0, "num1"    # J
    .param p2, "num2"    # J

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "count":I
    const/16 v1, 0x34

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 54
    invoke-static {p0, p1, v1}, Lorg/locationtech/jts/precision/CommonBits;->getBit(JI)I

    move-result v2

    invoke-static {p2, p3, v1}, Lorg/locationtech/jts/precision/CommonBits;->getBit(JI)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 58
    .end local v0    # "count":I
    :goto_1
    return v0

    .line 56
    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x34

    goto :goto_1
.end method

.method public static signExpBits(J)J
    .locals 2
    .param p0, "num"    # J

    .prologue
    .line 35
    const/16 v0, 0x34

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static zeroLowerBits(JI)J
    .locals 10
    .param p0, "bits"    # J
    .param p2, "nBits"    # I

    .prologue
    const-wide/16 v8, 0x1

    .line 69
    shl-long v6, v8, p2

    sub-long v0, v6, v8

    .line 70
    .local v0, "invMask":J
    const-wide/16 v6, -0x1

    xor-long v2, v0, v6

    .line 71
    .local v2, "mask":J
    and-long v4, p0, v2

    .line 72
    .local v4, "zeroed":J
    return-wide v4
.end method


# virtual methods
.method public add(D)V
    .locals 7
    .param p1, "num"    # D

    .prologue
    .line 98
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 99
    .local v0, "numBits":J
    iget-boolean v4, p0, Lorg/locationtech/jts/precision/CommonBits;->isFirst:Z

    if-eqz v4, :cond_0

    .line 100
    iput-wide v0, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    .line 101
    iget-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    invoke-static {v4, v5}, Lorg/locationtech/jts/precision/CommonBits;->signExpBits(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonSignExp:J

    .line 102
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/locationtech/jts/precision/CommonBits;->isFirst:Z

    .line 117
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {v0, v1}, Lorg/locationtech/jts/precision/CommonBits;->signExpBits(J)J

    move-result-wide v2

    .line 107
    .local v2, "numSignExp":J
    iget-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonSignExp:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 108
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    goto :goto_0

    .line 114
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    invoke-static {v4, v5, v0, v1}, Lorg/locationtech/jts/precision/CommonBits;->numCommonMostSigMantissaBits(JJ)I

    move-result v4

    iput v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonMantissaBitsCount:I

    .line 115
    iget-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    iget v6, p0, Lorg/locationtech/jts/precision/CommonBits;->commonMantissaBitsCount:I

    add-int/lit8 v6, v6, 0xc

    rsub-int/lit8 v6, v6, 0x40

    invoke-static {v4, v5, v6}, Lorg/locationtech/jts/precision/CommonBits;->zeroLowerBits(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    goto :goto_0
.end method

.method public getCommon()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/locationtech/jts/precision/CommonBits;->commonBits:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(J)Ljava/lang/String;
    .locals 11
    .param p1, "bits"    # J

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 129
    .local v4, "x":D
    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "numStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "padStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x40

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "bitStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 133
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(exp) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "str":Ljava/lang/String;
    return-object v3
.end method
