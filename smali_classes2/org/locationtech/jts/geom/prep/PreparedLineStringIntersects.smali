.class Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;
.super Ljava/lang/Object;
.source "PreparedLineStringIntersects.java"


# instance fields
.field protected prepLine:Lorg/locationtech/jts/geom/prep/PreparedLineString;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/prep/PreparedLineString;)V
    .locals 0
    .param p1, "prepLine"    # Lorg/locationtech/jts/geom/prep/PreparedLineString;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->prepLine:Lorg/locationtech/jts/geom/prep/PreparedLineString;

    .line 59
    return-void
.end method

.method public static intersects(Lorg/locationtech/jts/geom/prep/PreparedLineString;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "prep"    # Lorg/locationtech/jts/geom/prep/PreparedLineString;
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 45
    new-instance v0, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;-><init>(Lorg/locationtech/jts/geom/prep/PreparedLineString;)V

    .line 46
    .local v0, "op":Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-static {p1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "lineSegStr":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 75
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->prepLine:Lorg/locationtech/jts/geom/prep/PreparedLineString;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/prep/PreparedLineString;->getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;->intersects(Ljava/util/Collection;)Z

    move-result v1

    .line 78
    .local v1, "segsIntersect":Z
    if-eqz v1, :cond_1

    .line 98
    .end local v1    # "segsIntersect":Z
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->prepLine:Lorg/locationtech/jts/geom/prep/PreparedLineString;

    .line 90
    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineString;->isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    if-nez v2, :cond_4

    .line 96
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->isAnyTestPointInTarget(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 98
    goto :goto_0
.end method

.method protected isAnyTestPointInTarget(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 5
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 115
    new-instance v2, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v2}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    .line 116
    .local v2, "locator":Lorg/locationtech/jts/algorithm/PointLocator;
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "coords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 119
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->prepLine:Lorg/locationtech/jts/geom/prep/PreparedLineString;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/prep/PreparedLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/locationtech/jts/algorithm/PointLocator;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const/4 v4, 0x1

    .line 122
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
