.class public Lorg/locationtech/jts/shape/random/RandomPointsBuilder;
.super Lorg/locationtech/jts/shape/GeometricShapeBuilder;
.source "RandomPointsBuilder.java"


# instance fields
.field private extentLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

.field protected maskPoly:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->maskPoly:Lorg/locationtech/jts/geom/Geometry;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->maskPoly:Lorg/locationtech/jts/geom/Geometry;

    .line 56
    return-void
.end method


# virtual methods
.method protected createCoord(DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 95
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 96
    .local v0, "pt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 97
    return-object v0
.end method

.method protected createRandomCoord(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 103
    .local v0, "x":D
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v2, v4, v6

    .line 104
    .local v2, "y":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->createCoord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    return-object v4
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    .line 75
    iget v4, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->numPts:I

    new-array v3, v4, [Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    .local v3, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    :cond_0
    :goto_0
    iget v4, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->numPts:I

    if-ge v0, v4, :cond_2

    .line 78
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->createRandomCoord(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 79
    .local v2, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->extentLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->isInExtent(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v3, v0

    move v0, v1

    .line 82
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 83
    .end local v2    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v4

    return-object v4
.end method

.method protected isInExtent(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->extentLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->extentLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v0, p1}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method

.method public setExtent(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "mask"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 66
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only polygonal extents are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->maskPoly:Lorg/locationtech/jts/geom/Geometry;

    .line 69
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->setExtent(Lorg/locationtech/jts/geom/Envelope;)V

    .line 70
    new-instance v0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    iput-object v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsBuilder;->extentLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 71
    return-void
.end method
