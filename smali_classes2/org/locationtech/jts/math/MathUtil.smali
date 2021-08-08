.class public Lorg/locationtech/jts/math/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final LOG_10:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/jts/math/MathUtil;->LOG_10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static average(DD)D
    .locals 4
    .param p0, "x1"    # D
    .param p2, "x2"    # D

    .prologue
    .line 97
    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static clamp(DDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 31
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 33
    .end local p2    # "min":D
    :goto_0
    return-wide p2

    .line 32
    .restart local p2    # "min":D
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 33
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 45
    if-ge p0, p1, :cond_0

    .line 47
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 46
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 47
    goto :goto_0
.end method

.method public static log10(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 66
    .local v0, "ln":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    .end local v0    # "ln":D
    :cond_0
    :goto_0
    return-wide v0

    .line 67
    .restart local v0    # "ln":D
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    sget-wide v2, Lorg/locationtech/jts/math/MathUtil;->LOG_10:D

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public static max(DDD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "v3"    # D

    .prologue
    .line 102
    move-wide v0, p0

    .line 103
    .local v0, "max":D
    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    move-wide v0, p2

    .line 104
    :cond_0
    cmpl-double v2, p4, v0

    if-lez v2, :cond_1

    move-wide v0, p4

    .line 105
    :cond_1
    return-wide v0
.end method

.method public static max(DDDD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "v3"    # D
    .param p6, "v4"    # D

    .prologue
    .line 110
    move-wide v0, p0

    .line 111
    .local v0, "max":D
    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    move-wide v0, p2

    .line 112
    :cond_0
    cmpl-double v2, p4, v0

    if-lez v2, :cond_1

    move-wide v0, p4

    .line 113
    :cond_1
    cmpl-double v2, p6, v0

    if-lez v2, :cond_2

    move-wide v0, p6

    .line 114
    :cond_2
    return-wide v0
.end method

.method public static min(DDDD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "v3"    # D
    .param p6, "v4"    # D

    .prologue
    .line 119
    move-wide v0, p0

    .line 120
    .local v0, "min":D
    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide v0, p2

    .line 121
    :cond_0
    cmpg-double v2, p4, v0

    if-gez v2, :cond_1

    move-wide v0, p4

    .line 122
    :cond_1
    cmpg-double v2, p6, v0

    if-gez v2, :cond_2

    move-wide v0, p6

    .line 123
    :cond_2
    return-wide v0
.end method

.method public static wrap(II)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "max"    # I

    .prologue
    .line 82
    if-gez p0, :cond_0

    .line 83
    neg-int v0, p0

    rem-int/2addr v0, p1

    sub-int v0, p1, v0

    .line 85
    :goto_0
    return v0

    :cond_0
    rem-int v0, p0, p1

    goto :goto_0
.end method
