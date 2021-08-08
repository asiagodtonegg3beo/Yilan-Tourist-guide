.class public Lorg/locationtech/jts/algorithm/Centroid;
.super Ljava/lang/Object;
.source "Centroid.java"


# instance fields
.field private areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

.field private areasum2:D

.field private cg3:Lorg/locationtech/jts/geom/Coordinate;

.field private lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

.field private ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

.field private ptCount:I

.field private totalLength:D

.field private triangleCent3:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 66
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    .line 67
    iput-wide v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    .line 71
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

    .line 72
    iput-wide v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    .line 75
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

    .line 82
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 83
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/Centroid;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 84
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    instance-of v3, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/Centroid;->addPoint(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 98
    :cond_2
    instance-of v3, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/Centroid;->addLineSegments([Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 101
    :cond_3
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 102
    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 103
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/Centroid;->add(Lorg/locationtech/jts/geom/Polygon;)V

    goto :goto_0

    .line 105
    .end local v2    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_4
    instance-of v3, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 107
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 108
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/Centroid;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private add(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 161
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/Centroid;->addShell([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/Centroid;->addHole([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method private addHole([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 180
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 181
    .local v1, "isPositiveArea":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/locationtech/jts/algorithm/Centroid;->addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/Centroid;->addLineSegments([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 185
    return-void
.end method

.method private addLineSegments([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 14
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 226
    const-wide/16 v2, 0x0

    .line 227
    .local v2, "lineLen":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 228
    aget-object v1, p1, v0

    add-int/lit8 v10, v0, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v1, v10}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 229
    .local v8, "segmentLen":D
    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-nez v1, :cond_0

    .line 227
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    add-double/2addr v2, v8

    .line 234
    aget-object v1, p1, v0

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v12, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v4, v10, v12

    .line 235
    .local v4, "midx":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v12, v8, v4

    add-double/2addr v10, v12

    iput-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 236
    aget-object v1, p1, v0

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v12, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v6, v10, v12

    .line 237
    .local v6, "midy":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double v12, v8, v6

    add-double/2addr v10, v12

    iput-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_1

    .line 239
    .end local v4    # "midx":D
    .end local v6    # "midy":D
    .end local v8    # "segmentLen":D
    :cond_1
    iget-wide v10, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    add-double/2addr v10, v2

    iput-wide v10, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    .line 240
    const-wide/16 v10, 0x0

    cmpl-double v1, v2, v10

    if-nez v1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 241
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/Centroid;->addPoint(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 242
    :cond_2
    return-void
.end method

.method private addPoint(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 250
    iget v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    .line 251
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 252
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 253
    return-void
.end method

.method private addShell([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v1, 0x0

    .line 169
    array-length v2, p1

    if-lez v2, :cond_0

    .line 170
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/Centroid;->setAreaBasePoint(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 171
    :cond_0
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 172
    .local v1, "isPositiveArea":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 173
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/locationtech/jts/algorithm/Centroid;->addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/Centroid;->addLineSegments([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 176
    return-void
.end method

.method private addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 12
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "isPositiveArea"    # Z

    .prologue
    .line 188
    if-eqz p4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 189
    .local v2, "sign":D
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, p2, p3, v4}, Lorg/locationtech/jts/algorithm/Centroid;->centroid3(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 190
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/Centroid;->area2(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 191
    .local v0, "area2":D
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v8, v2, v0

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/Centroid;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 192
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double v8, v2, v0

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/Centroid;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 193
    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    mul-double v6, v2, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    .line 194
    return-void

    .line 188
    .end local v0    # "area2":D
    .end local v2    # "sign":D
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method private static area2(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p3"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 213
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static centroid3(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 4
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 202
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 203
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 204
    return-void
.end method

.method public static getCentroid(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    new-instance v0, Lorg/locationtech/jts/algorithm/Centroid;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/algorithm/Centroid;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 62
    .local v0, "cent":Lorg/locationtech/jts/algorithm/Centroid;
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/Centroid;->getCentroid()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private setAreaBasePoint(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "basePt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/Centroid;->areaBasePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 157
    return-void
.end method


# virtual methods
.method public getCentroid()Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/16 v4, 0x0

    .line 126
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 127
    .local v0, "cent":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    div-double/2addr v2, v6

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 132
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    div-double/2addr v2, v6

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->areasum2:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 151
    .end local v0    # "cent":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "cent":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 138
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 139
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->lineCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/Centroid;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 141
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    if-lez v1, :cond_2

    .line 145
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 146
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCentSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget v1, p0, Lorg/locationtech/jts/algorithm/Centroid;->ptCount:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
