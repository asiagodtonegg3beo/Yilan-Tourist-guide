.class public Lorg/locationtech/jts/index/quadtree/IntervalSize;
.super Ljava/lang/Object;
.source "IntervalSize.java"


# static fields
.field public static final MIN_BINARY_EXPONENT:I = -0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isZeroWidth(DD)Z
    .locals 12
    .param p0, "min"    # D
    .param p2, "max"    # D

    .prologue
    const/4 v1, 0x1

    .line 44
    sub-double v6, p2, p0

    .line 45
    .local v6, "width":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 48
    .local v2, "maxAbs":D
    div-double v4, v6, v2

    .line 49
    .local v4, "scaledInterval":D
    invoke-static {v4, v5}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->exponent(D)I

    move-result v0

    .line 50
    .local v0, "level":I
    const/16 v8, -0x32

    if-le v0, v8, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
