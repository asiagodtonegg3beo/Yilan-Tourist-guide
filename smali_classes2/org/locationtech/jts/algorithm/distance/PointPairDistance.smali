.class public Lorg/locationtech/jts/algorithm/distance/PointPairDistance;
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    .line 26
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    .line 27
    iput-boolean v3, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    .line 31
    return-void
.end method

.method private initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "distance"    # D

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 52
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 53
    iput-wide p3, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    .line 54
    iput-boolean v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    .line 55
    return-void
.end method


# virtual methods
.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    return-wide v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    return-void
.end method

.method public initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 38
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->setCoordinate(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 39
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    .line 40
    iput-boolean v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    .line 41
    return-void
.end method

.method public setMaximum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 3
    .param p1, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 65
    iget-object v0, p1, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMaximum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 66
    return-void
.end method

.method public setMaximum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 70
    iget-boolean v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 75
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 76
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V

    goto :goto_0
.end method

.method public setMinimum(Lorg/locationtech/jts/algorithm/distance/PointPairDistance;)V
    .locals 3
    .param p1, "ptDist"    # Lorg/locationtech/jts/algorithm/distance/PointPairDistance;

    .prologue
    .line 81
    iget-object v0, p1, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 82
    return-void
.end method

.method public setMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 86
    iget-boolean v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->isNull:Z

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 91
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->distance:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 92
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->initialize(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/distance/PointPairDistance;->pt:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
