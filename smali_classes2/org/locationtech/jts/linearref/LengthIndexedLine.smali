.class public Lorg/locationtech/jts/linearref/LengthIndexedLine;
.super Ljava/lang/Object;
.source "LengthIndexedLine.java"


# instance fields
.field private linearGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 41
    return-void
.end method

.method private locationOf(D)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "index"    # D

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method private locationOf(DZ)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "index"    # D
    .param p3, "resolveLower"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(Lorg/locationtech/jts/geom/Geometry;DZ)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method private positiveIndex(D)D
    .locals 3
    .param p1, "index"    # D

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 251
    .end local p1    # "index":D
    :goto_0
    return-wide p1

    .restart local p1    # "index":D
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v0

    add-double/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public clampIndex(D)D
    .locals 7
    .param p1, "index"    # D

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->positiveIndex(D)D

    move-result-wide v2

    .line 239
    .local v2, "posIndex":D
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->getStartIndex()D

    move-result-wide v4

    .line 240
    .local v4, "startIndex":D
    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 245
    .end local v4    # "startIndex":D
    :goto_0
    return-wide v4

    .line 242
    .restart local v4    # "startIndex":D
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->getEndIndex()D

    move-result-wide v0

    .line 243
    .local v0, "endIndex":D
    cmpl-double v6, v2, v0

    if-lez v6, :cond_1

    move-wide v4, v0

    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 245
    goto :goto_0
.end method

.method public extractLine(DD)Lorg/locationtech/jts/geom/Geometry;
    .locals 9
    .param p1, "startIndex"    # D
    .param p3, "endIndex"    # D

    .prologue
    .line 95
    new-instance v3, Lorg/locationtech/jts/linearref/LocationIndexedLine;

    iget-object v8, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v3, v8}, Lorg/locationtech/jts/linearref/LocationIndexedLine;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 96
    .local v3, "lil":Lorg/locationtech/jts/linearref/LocationIndexedLine;
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->clampIndex(D)D

    move-result-wide v6

    .line 97
    .local v6, "startIndex2":D
    invoke-virtual {p0, p3, p4}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->clampIndex(D)D

    move-result-wide v0

    .line 99
    .local v0, "endIndex2":D
    cmpl-double v8, v6, v0

    if-nez v8, :cond_0

    const/4 v4, 0x1

    .line 100
    .local v4, "resolveStartLower":Z
    :goto_0
    invoke-direct {p0, v6, v7, v4}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->locationOf(DZ)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v5

    .line 103
    .local v5, "startLoc":Lorg/locationtech/jts/linearref/LinearLocation;
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->locationOf(D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v2

    .line 104
    .local v2, "endLoc":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v8, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v8, v5, v2}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->extract(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v8

    return-object v8

    .line 99
    .end local v2    # "endLoc":Lorg/locationtech/jts/linearref/LinearLocation;
    .end local v4    # "resolveStartLower":Z
    .end local v5    # "startLoc":Lorg/locationtech/jts/linearref/LinearLocation;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public extractPoint(D)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "index"    # D

    .prologue
    .line 56
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v1, p1, p2}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    .line 57
    .local v0, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method public extractPoint(DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p1, "index"    # D
    .param p3, "offsetDistance"    # D

    .prologue
    .line 78
    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v2, p1, p2}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    .line 79
    .local v0, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/linearref/LinearLocation;->toLowest(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    .line 80
    .local v1, "locLow":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegment(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v2

    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p3, p4}, Lorg/locationtech/jts/geom/LineSegment;->pointAlongOffset(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method

.method public getEndIndex()D
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStartIndex()D
    .locals 2

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public indexOf(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;D)D
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # D

    .prologue
    .line 163
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOfAfter(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public indicesOf(Lorg/locationtech/jts/geom/Geometry;)[D
    .locals 6
    .param p1, "subLine"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v2, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfLine;->indicesOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    .line 178
    .local v1, "locIndex":[Lorg/locationtech/jts/linearref/LinearLocation;
    const/4 v2, 0x2

    new-array v0, v2, [D

    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v1, v4

    .line 179
    invoke-static {v2, v3}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLength(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;)D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v2, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    aget-object v3, v1, v5

    .line 180
    invoke-static {v2, v3}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLength(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;)D

    move-result-wide v2

    aput-wide v2, v0, v5

    .line 182
    .local v0, "index":[D
    return-object v0
.end method

.method public isValidIndex(D)Z
    .locals 3
    .param p1, "index"    # D

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->getStartIndex()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LengthIndexedLine;->getEndIndex()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public project(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LengthIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    return-wide v0
.end method
