.class public Lorg/locationtech/jts/algorithm/CentroidArea;
.super Ljava/lang/Object;
.source "CentroidArea.java"


# instance fields
.field private areasum2:D

.field private basePt:Lorg/locationtech/jts/geom/Coordinate;

.field private centSum:Lorg/locationtech/jts/geom/Coordinate;

.field private cg3:Lorg/locationtech/jts/geom/Coordinate;

.field private totalLength:D

.field private triangleCent3:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 39
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    .line 40
    iput-wide v2, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    .line 41
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    .line 44
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    .line 45
    iput-wide v2, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->totalLength:D

    .line 49
    iput-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 50
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 2
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addShell([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addHole([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method private addHole([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 124
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 125
    .local v1, "isPositiveArea":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addLinearSegments([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 129
    return-void
.end method

.method private addLinearSegments([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 14
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 173
    aget-object v1, p1, v0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v1, v8}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 174
    .local v6, "segmentLen":D
    iget-wide v8, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->totalLength:D

    add-double/2addr v8, v6

    iput-wide v8, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->totalLength:D

    .line 176
    aget-object v1, p1, v0

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v8, v10

    div-double v2, v8, v12

    .line 177
    .local v2, "midx":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v10, v6, v2

    add-double/2addr v8, v10

    iput-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 178
    aget-object v1, p1, v0

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v8, v10

    div-double v4, v8, v12

    .line 179
    .local v4, "midy":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double v10, v6, v4

    add-double/2addr v8, v10

    iput-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "midx":D
    .end local v4    # "midy":D
    .end local v6    # "segmentLen":D
    :cond_0
    return-void
.end method

.method private addShell([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 116
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 117
    .local v1, "isPositiveArea":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    .end local v1    # "isPositiveArea":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "isPositiveArea":Z
    :cond_1
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addLinearSegments([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 121
    return-void
.end method

.method private addTriangle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 12
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "isPositiveArea"    # Z

    .prologue
    .line 132
    if-eqz p4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 133
    .local v2, "sign":D
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, p2, p3, v4}, Lorg/locationtech/jts/algorithm/CentroidArea;->centroid3(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 134
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CentroidArea;->area2(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 135
    .local v0, "area2":D
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double v8, v2, v0

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 136
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double v8, v2, v0

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->triangleCent3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 137
    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    mul-double v6, v2, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    .line 138
    return-void

    .line 132
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
    .line 157
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
    .line 146
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 147
    iget-wide v0, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 148
    return-void
.end method

.method private setBasePoint(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "basePt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->basePt:Lorg/locationtech/jts/geom/Coordinate;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 60
    instance-of v3, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 61
    check-cast v2, Lorg/locationtech/jts/geom/Polygon;

    .line 62
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidArea;->setBasePoint(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 63
    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/CentroidArea;->add(Lorg/locationtech/jts/geom/Polygon;)V

    .line 71
    .end local v2    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    return-void

    .line 65
    :cond_1
    instance-of v3, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .line 67
    .local v0, "gc":Lorg/locationtech/jts/geom/GeometryCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/algorithm/CentroidArea;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public add([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "ring"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 81
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/CentroidArea;->setBasePoint(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 82
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/CentroidArea;->addShell([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 83
    return-void
.end method

.method public getCentroid()Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 87
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 88
    .local v0, "cent":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    div-double/2addr v2, v6

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 90
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->cg3:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    div-double/2addr v2, v6

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->areasum2:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 95
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->centSum:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/algorithm/CentroidArea;->totalLength:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    goto :goto_0
.end method
