.class public Lorg/locationtech/jts/algorithm/PointLocator;
.super Ljava/lang/Object;
.source "PointLocator.java"


# instance fields
.field private boundaryRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field private isIn:Z

.field private numBoundaries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/PointLocator;->boundaryRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 2
    .param p1, "boundaryRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/PointLocator;->boundaryRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rule must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/PointLocator;->boundaryRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 61
    return-void
.end method

.method private computeLocation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 109
    instance-of v7, p2, Lorg/locationtech/jts/geom/Point;

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 110
    check-cast v7, Lorg/locationtech/jts/geom/Point;

    invoke-direct {p0, p1, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Point;)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->updateLocationInfo(I)V

    .line 112
    :cond_0
    instance-of v7, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v7, :cond_2

    .line 113
    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->updateLocationInfo(I)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 115
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v7, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v7, :cond_3

    .line 116
    check-cast p2, Lorg/locationtech/jts/geom/Polygon;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->updateLocationInfo(I)V

    goto :goto_0

    .line 118
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v7, p2, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v7, :cond_4

    move-object v4, p2

    .line 119
    check-cast v4, Lorg/locationtech/jts/geom/MultiLineString;

    .line 120
    .local v4, "ml":Lorg/locationtech/jts/geom/MultiLineString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/locationtech/jts/geom/MultiLineString;->getNumGeometries()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 121
    invoke-virtual {v4, v2}, Lorg/locationtech/jts/geom/MultiLineString;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    .line 122
    .local v3, "l":Lorg/locationtech/jts/geom/LineString;
    invoke-direct {p0, p1, v3}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->updateLocationInfo(I)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "i":I
    .end local v3    # "l":Lorg/locationtech/jts/geom/LineString;
    .end local v4    # "ml":Lorg/locationtech/jts/geom/MultiLineString;
    :cond_4
    instance-of v7, p2, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v7, :cond_5

    move-object v5, p2

    .line 126
    check-cast v5, Lorg/locationtech/jts/geom/MultiPolygon;

    .line 127
    .local v5, "mpoly":Lorg/locationtech/jts/geom/MultiPolygon;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/MultiPolygon;->getNumGeometries()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 128
    invoke-virtual {v5, v2}, Lorg/locationtech/jts/geom/MultiPolygon;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/Polygon;

    .line 129
    .local v6, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, p1, v6}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/locationtech/jts/algorithm/PointLocator;->updateLocationInfo(I)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    .end local v2    # "i":I
    .end local v5    # "mpoly":Lorg/locationtech/jts/geom/MultiPolygon;
    .end local v6    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_5
    instance-of v7, p2, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v7, :cond_1

    .line 133
    new-instance v1, Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    move-object v7, p2

    check-cast v7, Lorg/locationtech/jts/geom/GeometryCollection;

    invoke-direct {v1, v7}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 134
    .local v1, "geomi":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 136
    .local v0, "g2":Lorg/locationtech/jts/geom/Geometry;
    if-eq v0, p2, :cond_6

    .line 137
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/algorithm/PointLocator;->computeLocation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_3
.end method

.method private locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "l"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 164
    .local v0, "pt":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 165
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    .line 166
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_3
    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isOnLine(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 171
    goto :goto_0
.end method

.method private locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Point;)I
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 152
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 153
    .local v0, "ptCoord":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)I
    .locals 8
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 185
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v5

    .line 187
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/LinearRing;

    .line 189
    .local v3, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0, p1, v3}, Lorg/locationtech/jts/algorithm/PointLocator;->locateInPolygonRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)I

    move-result v4

    .line 190
    .local v4, "shellLoc":I
    if-eq v4, v5, :cond_0

    .line 191
    if-ne v4, v6, :cond_2

    move v5, v6

    goto :goto_0

    .line 193
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 194
    invoke-virtual {p2, v2}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 195
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/algorithm/PointLocator;->locateInPolygonRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)I

    move-result v1

    .line 196
    .local v1, "holeLoc":I
    if-eqz v1, :cond_0

    .line 197
    if-ne v1, v6, :cond_3

    move v5, v6

    goto :goto_0

    .line 193
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    .end local v1    # "holeLoc":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private locateInPolygonRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LinearRing;)I
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ring"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 178
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method

.method private updateLocationInfo(I)V
    .locals 1
    .param p1, "loc"    # I

    .prologue
    const/4 v0, 0x1

    .line 144
    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/locationtech/jts/algorithm/PointLocator;->isIn:Z

    .line 145
    :cond_0
    if-ne p1, v0, :cond_1

    iget v0, p0, Lorg/locationtech/jts/algorithm/PointLocator;->numBoundaries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/algorithm/PointLocator;->numBoundaries:I

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I
    .locals 4
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return v0

    .line 89
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v2, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_2

    .line 90
    check-cast p2, Lorg/locationtech/jts/geom/LineString;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I

    move-result v0

    goto :goto_0

    .line 92
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v2, p2, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v2, :cond_3

    .line 93
    check-cast p2, Lorg/locationtech/jts/geom/Polygon;

    .end local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Polygon;)I

    move-result v0

    goto :goto_0

    .line 96
    .restart local p2    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    iput-boolean v1, p0, Lorg/locationtech/jts/algorithm/PointLocator;->isIn:Z

    .line 97
    iput v1, p0, Lorg/locationtech/jts/algorithm/PointLocator;->numBoundaries:I

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/algorithm/PointLocator;->computeLocation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)V

    .line 99
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/PointLocator;->boundaryRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    iget v3, p0, Lorg/locationtech/jts/algorithm/PointLocator;->numBoundaries:I

    invoke-interface {v2, v3}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->isInBoundary(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_4
    iget v2, p0, Lorg/locationtech/jts/algorithm/PointLocator;->numBoundaries:I

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lorg/locationtech/jts/algorithm/PointLocator;->isIn:Z

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    .line 102
    goto :goto_0
.end method
