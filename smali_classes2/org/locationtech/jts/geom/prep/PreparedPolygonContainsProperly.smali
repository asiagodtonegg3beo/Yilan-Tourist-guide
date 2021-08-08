.class Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;
.super Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;
.source "PreparedPolygonContainsProperly.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V
    .locals 0
    .param p1, "prepPoly"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonPredicate;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 64
    return-void
.end method

.method public static containsProperly(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "prep"    # Lorg/locationtech/jts/geom/prep/PreparedPolygon;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 52
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;-><init>(Lorg/locationtech/jts/geom/prep/PreparedPolygon;)V

    .line 53
    .local v0, "polyInt":Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->isAllTestComponentsInTargetInterior(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    .line 81
    .local v0, "isAllInPrepGeomAreaInterior":Z
    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    invoke-static {p1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, "lineSegStr":Ljava/util/List;
    iget-object v5, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->intersects(Ljava/util/Collection;)Z

    move-result v3

    .line 88
    .local v3, "segsIntersect":Z
    if-nez v3, :cond_0

    .line 96
    instance-of v5, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v5, :cond_2

    .line 98
    iget-object v5, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->prepPoly:Lorg/locationtech/jts/geom/prep/PreparedPolygon;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getRepresentativePoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->isAnyTargetComponentInAreaTest(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Z

    move-result v1

    .line 99
    .local v1, "isTargetGeomInTestArea":Z
    if-nez v1, :cond_0

    .line 102
    .end local v1    # "isTargetGeomInTestArea":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
