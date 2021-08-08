.class public Lorg/locationtech/jts/linearref/LocationIndexedLine;
.super Ljava/lang/Object;
.source "LocationIndexedLine.java"


# instance fields
.field private linearGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 38
    invoke-direct {p0}, Lorg/locationtech/jts/linearref/LocationIndexedLine;->checkGeometryType()V

    .line 39
    return-void
.end method

.method private checkGeometryType()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/LineString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/MultiLineString;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input geometry must be linear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public clampIndex(Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 2
    .param p1, "index"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 210
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/linearref/LinearLocation;

    .line 211
    .local v0, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/linearref/LinearLocation;->clamp(Lorg/locationtech/jts/geom/Geometry;)V

    .line 212
    return-object v0
.end method

.method public extractLine(Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "startIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "endIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/linearref/ExtractLineByLocation;->extract(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public extractPoint(Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "index"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/linearref/LinearLocation;->getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public extractPoint(Lorg/locationtech/jts/linearref/LinearLocation;D)Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "index"    # Lorg/locationtech/jts/linearref/LinearLocation;
    .param p2, "offsetDistance"    # D

    .prologue
    .line 80
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/linearref/LinearLocation;->toLowest(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    .line 81
    .local v0, "indexLow":Lorg/locationtech/jts/linearref/LinearLocation;
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegment(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2, p3}, Lorg/locationtech/jts/geom/LineSegment;->pointAlongOffset(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method public getEndIndex()Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0}, Lorg/locationtech/jts/linearref/LinearLocation;->getEndLocation(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lorg/locationtech/jts/linearref/LinearLocation;

    invoke-direct {v0}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>()V

    return-object v0
.end method

.method public indexOf(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1, p2}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOfAfter(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public indicesOf(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "subLine"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfLine;->indicesOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public isValidIndex(Lorg/locationtech/jts/linearref/LinearLocation;)Z
    .locals 1
    .param p1, "index"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/linearref/LinearLocation;->isValid(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public project(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LocationIndexedLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method
