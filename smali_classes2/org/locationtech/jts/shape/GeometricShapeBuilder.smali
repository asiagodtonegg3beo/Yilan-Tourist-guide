.class public abstract Lorg/locationtech/jts/shape/GeometricShapeBuilder;
.super Ljava/lang/Object;
.source "GeometricShapeBuilder.java"


# instance fields
.field protected extent:Lorg/locationtech/jts/geom/Envelope;

.field protected geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field protected numPts:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 10
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    move-wide v6, v2

    move-wide v8, v4

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    iput-object v1, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->numPts:I

    .line 29
    iput-object p1, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 30
    return-void
.end method


# virtual methods
.method protected createCoord(DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 88
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 89
    .local v0, "pt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 90
    return-object v0
.end method

.method public getCentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->centre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getDiameter()D
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v0

    iget-object v2, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtent()Lorg/locationtech/jts/geom/Envelope;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    return-object v0
.end method

.method public abstract getGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public getRadius()D
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->getDiameter()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSquareBaseLine()Lorg/locationtech/jts/geom/LineSegment;
    .locals 10

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->getRadius()D

    move-result-wide v4

    .line 61
    .local v4, "radius":D
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->getCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 62
    .local v0, "centre":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v6, v4

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v4

    invoke-direct {v1, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 63
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v6, v4

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v8, v4

    invoke-direct {v2, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 64
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v3, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v3, v1, v2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v3
.end method

.method public getSquareExtent()Lorg/locationtech/jts/geom/Envelope;
    .locals 12

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->getRadius()D

    move-result-wide v10

    .line 71
    .local v10, "radius":D
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->getCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 72
    .local v0, "centre":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v10

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v10

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v10

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    return-object v1
.end method

.method public setExtent(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 0
    .param p1, "extent"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->extent:Lorg/locationtech/jts/geom/Envelope;

    .line 35
    return-void
.end method

.method public setNumPoints(I)V
    .locals 0
    .param p1, "numPts"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/locationtech/jts/shape/GeometricShapeBuilder;->numPts:I

    return-void
.end method
