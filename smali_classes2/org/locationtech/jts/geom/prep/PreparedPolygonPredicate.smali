.class abstract Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;
.super Ljava/lang/Object;
.source "PreparedPolygonPredicate.java"


# instance fields
.field protected prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

.field private targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 1
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .line 45
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getPointLocator()Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 46
    return-void
.end method


# virtual methods
.method protected isAllTestComponentsInTarget(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 58
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "coords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 61
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v4, v3}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 62
    .local v2, "loc":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 63
    const/4 v4, 0x0

    .line 65
    .end local v2    # "loc":I
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isAllTestComponentsInTargetInterior(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 78
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "coords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 81
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v4, v3}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 82
    .local v2, "loc":I
    if-eqz v2, :cond_0

    .line 83
    const/4 v4, 0x0

    .line 85
    .end local v2    # "loc":I
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isAnyTargetComponentInAreaTest(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "targetRepPts"    # Ljava/util/List;

    .prologue
    .line 139
    new-instance v3, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;

    invoke-direct {v3, p1}, Lorg/locationtech/jts/algorithm/locate/SimplePointInAreaLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 140
    .local v3, "piaLoc":Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 142
    .local v2, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {v3, v2}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    .line 143
    .local v1, "loc":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 144
    const/4 v4, 0x1

    .line 146
    .end local v1    # "loc":I
    .end local v2    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isAnyTestComponentInTarget(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 98
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "coords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 101
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v4, v3}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 102
    .local v2, "loc":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 103
    const/4 v4, 0x1

    .line 105
    .end local v2    # "loc":I
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isAnyTestComponentInTargetInterior(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 118
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "coords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 121
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;->targetPointLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v4, v3}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 122
    .local v2, "loc":I
    if-nez v2, :cond_0

    .line 123
    const/4 v4, 0x1

    .line 125
    .end local v2    # "loc":I
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
