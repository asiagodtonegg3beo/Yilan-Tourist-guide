.class public Lorg/locationtech/jts/operation/union/PointGeometryUnion;
.super Ljava/lang/Object;
.source "PointGeometryUnion.java"


# instance fields
.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private otherGeom:Lorg/locationtech/jts/geom/Geometry;

.field private pointGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Puntal;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "pointGeom"    # Lorg/locationtech/jts/geom/Puntal;
    .param p2, "otherGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    check-cast p1, Lorg/locationtech/jts/geom/Geometry;

    .end local p1    # "pointGeom":Lorg/locationtech/jts/geom/Puntal;
    iput-object p1, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->pointGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 51
    iput-object p2, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->otherGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 52
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 53
    return-void
.end method

.method public static union(Lorg/locationtech/jts/geom/Puntal;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "pointGeom"    # Lorg/locationtech/jts/geom/Puntal;
    .param p1, "otherGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 40
    new-instance v0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/operation/union/PointGeometryUnion;-><init>(Lorg/locationtech/jts/geom/Puntal;Lorg/locationtech/jts/geom/Geometry;)V

    .line 41
    .local v0, "unioner":Lorg/locationtech/jts/operation/union/PointGeometryUnion;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->union()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public union()Lorg/locationtech/jts/geom/Geometry;
    .locals 10

    .prologue
    .line 57
    new-instance v5, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v5}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    .line 59
    .local v5, "locater":Lorg/locationtech/jts/algorithm/PointLocator;
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 61
    .local v2, "exteriorCoords":Ljava/util/Set;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->pointGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v8}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 62
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->pointGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v8, v3}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/Point;

    .line 63
    .local v6, "point":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 64
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->otherGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5, v0, v8}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v4

    .line 65
    .local v4, "loc":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    .line 66
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "coord":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "loc":I
    .end local v6    # "point":Lorg/locationtech/jts/geom/Point;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 71
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->otherGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 84
    :goto_1
    return-object v8

    .line 74
    :cond_2
    const/4 v7, 0x0

    .line 75
    .local v7, "ptComp":Lorg/locationtech/jts/geom/Geometry;
    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 76
    .local v1, "coords":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 77
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v7

    .line 84
    :goto_2
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->otherGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v7, v8}, Lorg/locationtech/jts/geom/util/GeometryCombiner;->combine(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v8

    goto :goto_1

    .line 80
    :cond_3
    iget-object v8, p0, Lorg/locationtech/jts/operation/union/PointGeometryUnion;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v8, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v7

    goto :goto_2
.end method
