.class public Lorg/locationtech/jts/geom/MultiPoint;
.super Lorg/locationtech/jts/geom/GeometryCollection;
.source "MultiPoint.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Puntal;


# static fields
.field private static final serialVersionUID:J = -0x6fb1ed4162e0fa39L


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "points"    # [Lorg/locationtech/jts/geom/Point;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 53
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "points"    # [Lorg/locationtech/jts/geom/Point;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 43
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 44
    return-void
.end method


# virtual methods
.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/MultiPoint;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/locationtech/jts/geom/GeometryCollection;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiPoint;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method protected getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/geom/MultiPoint;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v0, v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "MultiPoint"

    return-object v0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
