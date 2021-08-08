.class public Lorg/locationtech/jts/index/quadtree/Key;
.super Ljava/lang/Object;
.source "Key.java"


# instance fields
.field private env:Lorg/locationtech/jts/geom/Envelope;

.field private level:I

.field private pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 1
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 44
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/index/quadtree/Key;->computeKey(Lorg/locationtech/jts/geom/Envelope;)V

    .line 45
    return-void
.end method

.method private computeKey(ILorg/locationtech/jts/geom/Envelope;)V
    .locals 12
    .param p1, "level"    # I
    .param p2, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 76
    invoke-static {p1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->powerOf2(I)D

    move-result-wide v10

    .line 77
    .local v10, "quadSize":D
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 79
    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v10

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v8, v10

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;->init(DDDD)V

    .line 80
    return-void
.end method

.method public static computeQuadLevel(Lorg/locationtech/jts/geom/Envelope;)I
    .locals 8
    .param p0, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    .line 30
    .local v2, "dx":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v4

    .line 31
    .local v4, "dy":D
    cmpl-double v7, v2, v4

    if-lez v7, :cond_0

    move-wide v0, v2

    .line 32
    .local v0, "dMax":D
    :goto_0
    invoke-static {v0, v1}, Lorg/locationtech/jts/index/quadtree/DoubleBits;->exponent(D)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 33
    .local v6, "level":I
    return v6

    .end local v0    # "dMax":D
    .end local v6    # "level":I
    :cond_0
    move-wide v0, v4

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public computeKey(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 1
    .param p1, "itemEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 64
    invoke-static {p1}, Lorg/locationtech/jts/index/quadtree/Key;->computeQuadLevel(Lorg/locationtech/jts/geom/Envelope;)I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    .line 65
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 66
    iget v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/index/quadtree/Key;->computeKey(ILorg/locationtech/jts/geom/Envelope;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    .line 70
    iget v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/index/quadtree/Key;->computeKey(ILorg/locationtech/jts/geom/Envelope;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public getCentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 53
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 54
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 55
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    iget-object v1, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 53
    return-object v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->env:Lorg/locationtech/jts/geom/Envelope;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->level:I

    return v0
.end method

.method public getPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/index/quadtree/Key;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
