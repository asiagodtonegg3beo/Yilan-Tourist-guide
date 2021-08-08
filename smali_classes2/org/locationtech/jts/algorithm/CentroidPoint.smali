.class public Lorg/locationtech/jts/algorithm/CentroidPoint;
.super Ljava/lang/Object;
.source "CentroidPoint.java"


# instance fields
.field private centSum:Lorg/locationtech/jts/geom/Coordinate;

.field private ptCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->ptCount:I

    .line 31
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 61
    iget v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->ptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->ptCount:I

    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 64
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 44
    instance-of v2, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/algorithm/CentroidPoint;->add(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 49
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/algorithm/CentroidPoint;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCentroid()Lorg/locationtech/jts/geom/Coordinate;
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 69
    .local v0, "cent":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget v1, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->ptCount:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 70
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget v1, p0, Lorg/locationtech/jts/algorithm/CentroidPoint;->ptCount:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 71
    return-object v0
.end method
