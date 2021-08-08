.class Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;
.super Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;
.source "PreparedPolygonContains.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 0
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 54
    return-void
.end method

.method public static contains(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "prep"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 42
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 43
    .local v0, "polyInt":Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;->eval(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method protected fullTopologicalPredicate(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 76
    iget-object v1, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    .line 77
    .local v0, "isContained":Z
    return v0
.end method
