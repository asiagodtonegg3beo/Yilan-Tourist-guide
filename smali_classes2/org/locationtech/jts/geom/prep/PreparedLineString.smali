.class public Lorg/locationtech/jts/geom/prep/PreparedLineString;
.super Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;
.source "PreparedLineString.java"


# instance fields
.field private segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Lineal;)V
    .locals 1
    .param p1, "line"    # Lorg/locationtech/jts/geom/Lineal;

    .prologue
    .line 33
    check-cast p1, Lorg/locationtech/jts/geom/Geometry;

    .end local p1    # "line":Lorg/locationtech/jts/geom/Lineal;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedLineString;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic crosses(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->crosses(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disjoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->disjoint(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIntersectionFinder()Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedLineString;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/prep/PreparedLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-static {v1}, Lorg/locationtech/jts/noding/SegmentStringUtil;->extractSegmentStrings(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedLineString;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/PreparedLineString;->segIntFinder:Lorg/locationtech/jts/noding/FastSegmentSetIntersectionFinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getRepresentativePoints()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getRepresentativePoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineString;->envelopesIntersect(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedLineStringIntersects;->intersects(Lorg/locationtech/jts/geom/prep/PreparedLineString;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic overlaps(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->overlaps(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touches(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->touches(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic within(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->within(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method
