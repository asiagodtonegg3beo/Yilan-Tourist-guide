.class Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;
.super Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;
.source "PreparedPolygonCovers.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 1
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/AbstractPreparedPolygonContains;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;->requireSomePointInInterior:Z

    .line 54
    return-void
.end method

.method public static covers(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "prep"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 42
    .local v0, "polyInt":Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;->eval(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method protected fullTopologicalPredicate(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 76
    iget-object v1, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Geometry;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    .line 77
    .local v0, "result":Z
    return v0
.end method
