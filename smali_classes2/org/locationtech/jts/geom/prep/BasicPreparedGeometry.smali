.class Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;
.super Ljava/lang/Object;
.source "BasicPreparedGeometry.java"

# interfaces
.implements Lorg/locationtech/jts/geom/prep/PreparedGeometry;


# instance fields
.field private final baseGeom:Lorg/locationtech/jts/geom/Geometry;

.field private final representativePts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 43
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->representativePts:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->contains(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public containsProperly(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    const-string v1, "T**FF*FF*"

    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/geom/Geometry;->relate(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->coveredBy(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public covers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->covers(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public crosses(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->crosses(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public disjoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected envelopeCovers(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->covers(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected envelopesIntersect(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getRepresentativePoints()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->representativePts:Ljava/util/List;

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isAnyTargetComponentInTest(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 4
    .param p1, "testGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 73
    new-instance v1, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v1}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    .line 74
    .local v1, "locator":Lorg/locationtech/jts/algorithm/PointLocator;
    iget-object v3, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->representativePts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 76
    .local v2, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v2, p1}, Lorg/locationtech/jts/algorithm/PointLocator;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x1

    .line 79
    .end local v2    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public overlaps(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->overlaps(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touches(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->touches(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public within(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/locationtech/jts/geom/prep/BasicPreparedGeometry;->baseGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Geometry;->within(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method
