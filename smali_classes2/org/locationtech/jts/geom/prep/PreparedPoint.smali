.class public Lorg/locationtech/jts/geom/prep/PreparedPoint;
.super Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;
.source "PreparedPoint.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Puntal;)V
    .locals 0
    .param p1, "point"    # Lorg/locationtech/jts/geom/Puntal;

    .prologue
    .line 30
    check-cast p1, Lorg/locationtech/jts/geom/Geometry;

    .end local p1    # "point":Lorg/locationtech/jts/geom/Puntal;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic crosses(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->crosses(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disjoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->disjoint(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRepresentativePoints()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->getRepresentativePoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPoint;->envelopesIntersect(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/PreparedPoint;->isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic overlaps(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->overlaps(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touches(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->touches(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic within(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->within(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method
