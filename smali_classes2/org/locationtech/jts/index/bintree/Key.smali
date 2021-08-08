.class public Lorg/locationtech/jts/index/bintree/Key;
.super Ljava/lang/Object;
.source "Key.java"


# instance fields
.field private interval:Lorg/locationtech/jts/index/bintree/Interval;

.field private level:I

.field private pt:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/index/bintree/Interval;)V
    .locals 2
    .param p1, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/index/bintree/Key;->pt:D

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    .line 45
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/bintree/Key;->computeKey(Lorg/locationtech/jts/index/bintree/Interval;)V

    .line 46
    return-void
.end method

.method private computeInterval(ILorg/locationtech/jts/index/bintree/Interval;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 70
    invoke-static {p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->powerOf2(I)D

    move-result-wide v0

    .line 72
    .local v0, "size":D
    invoke-virtual {p2}, Lorg/locationtech/jts/index/bintree/Interval;->getMin()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/index/bintree/Key;->pt:D

    .line 73
    iget-object v2, p0, Lorg/locationtech/jts/index/bintree/Key;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    iget-wide v4, p0, Lorg/locationtech/jts/index/bintree/Key;->pt:D

    iget-wide v6, p0, Lorg/locationtech/jts/index/bintree/Key;->pt:D

    add-double/2addr v6, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/index/bintree/Interval;->init(DD)V

    .line 74
    return-void
.end method

.method public static computeLevel(Lorg/locationtech/jts/index/bintree/Interval;)I
    .locals 4
    .param p0, "interval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/locationtech/jts/index/bintree/Interval;->getWidth()D

    move-result-wide v0

    .line 32
    .local v0, "dx":D
    invoke-static {v0, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->exponent(D)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 33
    .local v2, "level":I
    return v2
.end method


# virtual methods
.method public computeKey(Lorg/locationtech/jts/index/bintree/Interval;)V
    .locals 1
    .param p1, "itemInterval"    # Lorg/locationtech/jts/index/bintree/Interval;

    .prologue
    .line 58
    invoke-static {p1}, Lorg/locationtech/jts/index/bintree/Key;->computeLevel(Lorg/locationtech/jts/index/bintree/Interval;)I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    .line 59
    new-instance v0, Lorg/locationtech/jts/index/bintree/Interval;

    invoke-direct {v0}, Lorg/locationtech/jts/index/bintree/Interval;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/bintree/Key;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    .line 60
    iget v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/index/bintree/Key;->computeInterval(ILorg/locationtech/jts/index/bintree/Interval;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Key;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/index/bintree/Interval;->contains(Lorg/locationtech/jts/index/bintree/Interval;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    .line 64
    iget v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/index/bintree/Key;->computeInterval(ILorg/locationtech/jts/index/bintree/Interval;)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public getInterval()Lorg/locationtech/jts/index/bintree/Interval;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/index/bintree/Key;->interval:Lorg/locationtech/jts/index/bintree/Interval;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/locationtech/jts/index/bintree/Key;->level:I

    return v0
.end method

.method public getPoint()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/locationtech/jts/index/bintree/Key;->pt:D

    return-wide v0
.end method
