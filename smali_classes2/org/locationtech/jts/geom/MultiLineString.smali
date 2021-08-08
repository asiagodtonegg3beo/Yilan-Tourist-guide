.class public Lorg/locationtech/jts/geom/MultiLineString;
.super Lorg/locationtech/jts/geom/GeometryCollection;
.source "MultiLineString.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Lineal;


# static fields
.field private static final serialVersionUID:J = 0x7155d2ab4afa7f8dL


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "lineStrings"    # [Lorg/locationtech/jts/geom/LineString;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 56
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "lineStrings"    # [Lorg/locationtech/jts/geom/LineString;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 42
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/MultiLineString;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/locationtech/jts/geom/GeometryCollection;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lorg/locationtech/jts/operation/BoundaryOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/BoundaryOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/BoundaryOp;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiLineString;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "MultiLineString"

    return-object v0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x4

    return v0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiLineString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 82
    :goto_0
    return v1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/MultiLineString;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 78
    iget-object v1, p0, Lorg/locationtech/jts/geom/MultiLineString;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v1, v1, v0

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 79
    goto :goto_0

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    .line 108
    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiLineString;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v3

    .line 109
    .local v1, "nLines":I
    new-array v2, v1, [Lorg/locationtech/jts/geom/LineString;

    .line 110
    .local v2, "revLines":[Lorg/locationtech/jts/geom/LineString;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiLineString;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 111
    add-int/lit8 v3, v1, -0x1

    sub-int v4, v3, v0

    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiLineString;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    aput-object v3, v2, v4

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiLineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v3

    return-object v3
.end method
