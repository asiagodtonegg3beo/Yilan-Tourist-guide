.class public Lorg/locationtech/jts/index/bintree/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field public max:D

.field public min:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 27
    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 28
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/index/bintree/Interval;->init(DD)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/index/bintree/Interval;)V
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/index/bintree/Interval;->init(DD)V

    .line 37
    return-void
.end method


# virtual methods
.method public contains(D)Z
    .locals 3
    .param p1, "p"    # D

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(DD)Z
    .locals 3
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/locationtech/jts/index/bintree/Interval;)Z
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 69
    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/index/bintree/Interval;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public expandToInclude(Lorg/locationtech/jts/index/bintree/Interval;)V
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 53
    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 54
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 55
    :cond_1
    return-void
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public init(DD)V
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 41
    iput-wide p3, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 42
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    .line 43
    iput-wide p3, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    .line 44
    iput-wide p1, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    .line 46
    :cond_0
    return-void
.end method

.method public overlaps(DD)Z
    .locals 3
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    cmpl-double v0, v0, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public overlaps(Lorg/locationtech/jts/index/bintree/Interval;)Z
    .locals 4
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 58
    iget-wide v0, p1, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    iget-wide v2, p1, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/index/bintree/Interval;->overlaps(DD)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->min:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/index/bintree/Interval;->max:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
