.class Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;
.super Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;
.source "PreparedPolygonIntersects.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 0
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 52
    return-void
.end method

.method public static intersects(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "prep"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 40
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 41
    .local v0, "polyInt":Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 8
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->isAnyTestComponentInTarget(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    .line 69
    .local v0, "isInPrepGeomArea":Z
    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v4

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 76
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "lineSegStr":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 84
    iget-object v6, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->intersects(Ljava/util/Collection;)Z

    move-result v3

    .line 86
    .local v3, "segsIntersect":Z
    if-nez v3, :cond_0

    .line 95
    .end local v3    # "segsIntersect":Z
    :cond_3
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 97
    iget-object v6, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .line 98
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getRepresentativePoints()Ljava/util/List;

    move-result-object v6

    .line 97
    invoke-virtual {p0, p1, v6}, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->isAnyTargetComponentInAreaTest(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Z

    move-result v1

    .line 99
    .local v1, "isPrepGeomInArea":Z
    if-nez v1, :cond_0

    .end local v1    # "isPrepGeomInArea":Z
    :cond_4
    move v4, v5

    .line 103
    goto :goto_0
.end method
