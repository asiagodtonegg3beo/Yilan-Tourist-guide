.class Lorg/locationtech/jts/linearref/LocationIndexOfLine;
.super Ljava/lang/Object;
.source "LocationIndexOfLine.java"


# instance fields
.field private linearGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LocationIndexOfLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 45
    return-void
.end method

.method public static indicesOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 2
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "subLine"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 37
    new-instance v0, Lorg/locationtech/jts/linearref/LocationIndexOfLine;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LocationIndexOfLine;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 38
    .local v0, "locater":Lorg/locationtech/jts/linearref/LocationIndexOfLine;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfLine;->indicesOf(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public indicesOf(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 12
    .param p1, "subLine"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    invoke-virtual {p1, v10}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v5, v10}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 50
    .local v3, "startPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 51
    .local v1, "lastLine":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 53
    .local v0, "endPt":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;

    iget-object v5, p0, Lorg/locationtech/jts/linearref/LocationIndexOfLine;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v2, v5}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 54
    .local v2, "locPt":Lorg/locationtech/jts/linearref/LocationIndexOfPoint;
    const/4 v5, 0x2

    new-array v4, v5, [Lorg/locationtech/jts/linearref/LinearLocation;

    .line 55
    .local v4, "subLineLoc":[Lorg/locationtech/jts/linearref/LinearLocation;
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v5

    aput-object v5, v4, v10

    .line 58
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_0

    .line 59
    aget-object v5, v4, v10

    invoke-virtual {v5}, Lorg/locationtech/jts/linearref/LinearLocation;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/linearref/LinearLocation;

    aput-object v5, v4, v11

    .line 64
    :goto_0
    return-object v4

    .line 62
    :cond_0
    aget-object v5, v4, v10

    invoke-virtual {v2, v0, v5}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v5

    aput-object v5, v4, v11

    goto :goto_0
.end method
