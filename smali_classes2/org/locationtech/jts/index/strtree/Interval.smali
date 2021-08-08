.class public Lorg/locationtech/jts/index/strtree/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field private max:D

.field private min:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 31
    iput-wide p1, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    .line 32
    iput-wide p3, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    .line 33
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/locationtech/jts/index/strtree/Interval;)V
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/index/strtree/Interval;

    .prologue
    .line 26
    iget-wide v0, p1, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/index/strtree/Interval;-><init>(DD)V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Lorg/locationtech/jts/index/strtree/Interval;

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 54
    check-cast v0, Lorg/locationtech/jts/index/strtree/Interval;

    .line 55
    .local v0, "other":Lorg/locationtech/jts/index/strtree/Interval;
    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    iget-wide v4, v0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    iget-wide v4, v0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public expandToInclude(Lorg/locationtech/jts/index/strtree/Interval;)Lorg/locationtech/jts/index/strtree/Interval;
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/index/strtree/Interval;

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    .line 45
    iget-wide v0, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    .line 46
    return-object p0
.end method

.method public getCentre()D
    .locals 4

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public intersects(Lorg/locationtech/jts/index/strtree/Interval;)Z
    .locals 4
    .param p1, "other"    # Lorg/locationtech/jts/index/strtree/Interval;

    .prologue
    .line 50
    iget-wide v0, p1, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/index/strtree/Interval;->max:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/strtree/Interval;->min:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
