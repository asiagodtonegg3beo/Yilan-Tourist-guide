.class public Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;
.super Ljava/lang/Object;
.source "PointPairDistance.java"


# instance fields
.field private distance:D

.field private isNull:Z

.field private pt:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    .line 24
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    .line 25
    iput-boolean v3, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    .line 29
    return-void
.end method

.method private initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "distance"    # D

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 51
    iput-wide p3, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    .line 52
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    return-wide v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    return-void
.end method

.method public initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 36
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 37
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    .line 38
    iput-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    .line 39
    return-void
.end method

.method public setMaximum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 68
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 73
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V

    goto :goto_0
.end method

.method public setMaximum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 3
    .param p1, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 63
    iget-object v0, p1, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMaximum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 64
    return-void
.end method

.method public setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 84
    iget-boolean v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->isNull:Z

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 89
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->distance:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 90
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V

    goto :goto_0
.end method

.method public setMinimum(Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;)V
    .locals 3
    .param p1, "ptDist"    # Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;

    .prologue
    .line 79
    iget-object v0, p1, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/operation/buffer/validate/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 80
    return-void
.end method
