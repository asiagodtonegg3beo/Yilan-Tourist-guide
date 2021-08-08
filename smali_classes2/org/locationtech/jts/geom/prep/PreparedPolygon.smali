.class public Lorg/locationtech/jts/geom/prep/PreparedPolygon;
.super Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;
.source "PreparedPolygon.java"


# instance fields
.field private final isRectangle:Z

.field private pia:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

.field private segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygonal;)V
    .locals 1
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygonal;

    .prologue
    const/4 v0, 0x0

    .line 47
    check-cast p1, Lorg/locationtech/jts/geom/Geometry;

    .end local p1    # "poly":Lorg/locationtech/jts/geom/Polygonal;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 43
    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    .line 44
    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->pia:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 48
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isRectangle()Z

    move-result v0

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->isRectangle:Z

    .line 49
    return-void
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->envelopeCovers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-boolean v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->isRectangle:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Polygon;

    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleContains;->contains(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContains;->contains(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->envelopeCovers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonContainsProperly;->containsProperly(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->envelopeCovers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->isRectangle:Z

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonCovers;->covers(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic crosses(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->crosses(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disjoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->disjoint(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-static {v1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPointLocator()Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->pia:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->pia:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->pia:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getRepresentativePoints()Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getRepresentativePoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->envelopesIntersect(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-boolean v0, p0, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->isRectangle:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Polygon;

    invoke-static {v0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->intersects(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPolygonIntersects;->intersects(Lorg/locationtech/jts/geom/prep/PreparedPolygon;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic overlaps(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->overlaps(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touches(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->touches(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic within(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->within(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method
