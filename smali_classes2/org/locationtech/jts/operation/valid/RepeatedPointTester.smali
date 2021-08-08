.class public Lorg/locationtech/jts/operation/valid/RepeatedPointTester;
.super Ljava/lang/Object;
.source "RepeatedPointTester.java"


# instance fields
.field private repeatedCoord:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private hasRepeatedPoint(Lorg/locationtech/jts/geom/GeometryCollection;)Z
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 75
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 77
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :goto_1
    return v2

    .line 73
    .restart local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasRepeatedPoint(Lorg/locationtech/jts/geom/Polygon;)Z
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->repeatedCoord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasRepeatedPoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return v0

    .line 44
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/Point;

    if-nez v1, :cond_0

    .line 45
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-nez v1, :cond_0

    .line 47
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0

    .line 48
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint(Lorg/locationtech/jts/geom/Polygon;)Z

    move-result v0

    goto :goto_0

    .line 49
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->hasRepeatedPoint(Lorg/locationtech/jts/geom/GeometryCollection;)Z

    move-result v0

    goto :goto_0

    .line 50
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRepeatedPoint([Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 55
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 56
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/locationtech/jts/operation/valid/RepeatedPointTester;->repeatedCoord:Lorg/locationtech/jts/geom/Coordinate;

    .line 58
    const/4 v1, 0x1

    .line 61
    :goto_1
    return v1

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
