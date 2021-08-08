.class public Lorg/locationtech/jts/geom/MultiPolygon;
.super Lorg/locationtech/jts/geom/GeometryCollection;
.source "MultiPolygon.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Polygonal;


# static fields
.field private static final serialVersionUID:J = -0x7a5aa1369171983L


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "polygons"    # [Lorg/locationtech/jts/geom/Polygon;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 67
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "polygons"    # [Lorg/locationtech/jts/geom/Polygon;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 51
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/geom/MultiPolygon;-><init>([Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 2
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/MultiPolygon;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/locationtech/jts/geom/GeometryCollection;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 8

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiPolygon;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiPolygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v6

    .line 106
    :goto_0
    return-object v6

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "allRings":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lorg/locationtech/jts/geom/MultiPolygon;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 99
    iget-object v6, p0, Lorg/locationtech/jts/geom/MultiPolygon;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v4, v6, v2

    check-cast v4, Lorg/locationtech/jts/geom/Polygon;

    .line 100
    .local v4, "polygon":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Polygon;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 101
    .local v5, "rings":Lorg/locationtech/jts/geom/Geometry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 102
    invoke-virtual {v5, v3}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "j":I
    .end local v4    # "polygon":Lorg/locationtech/jts/geom/Polygon;
    .end local v5    # "rings":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Lorg/locationtech/jts/geom/LineString;

    .line 106
    .local v1, "allRingsArray":[Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiPolygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/locationtech/jts/geom/LineString;

    check-cast v6, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v7, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v6

    goto :goto_0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "MultiPolygon"

    return-object v0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x6

    return v0
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 4

    .prologue
    .line 125
    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiPolygon;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v1, v3

    .line 126
    .local v1, "n":I
    new-array v2, v1, [Lorg/locationtech/jts/geom/Polygon;

    .line 127
    .local v2, "revGeoms":[Lorg/locationtech/jts/geom/Polygon;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiPolygon;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 128
    iget-object v3, p0, Lorg/locationtech/jts/geom/MultiPolygon;->geometries:[Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    aput-object v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/MultiPolygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v3

    return-object v3
.end method
