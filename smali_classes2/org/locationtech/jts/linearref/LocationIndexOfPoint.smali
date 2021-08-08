.class Lorg/locationtech/jts/linearref/LocationIndexOfPoint;
.super Ljava/lang/Object;
.source "LocationIndexOfPoint.java"


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
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 45
    return-void
.end method

.method public static indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 2
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 31
    new-instance v0, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 32
    .local v0, "locater":Lorg/locationtech/jts/linearref/LocationIndexOfPoint;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfAfter(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 2
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 37
    new-instance v0, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 38
    .local v0, "locater":Lorg/locationtech/jts/linearref/LocationIndexOfPoint;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    return-object v1
.end method

.method private indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 22
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 94
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 95
    .local v10, "minDistance":D
    const/4 v8, 0x0

    .line 96
    .local v8, "minComponentIndex":I
    const/4 v9, 0x0

    .line 97
    .local v9, "minSegmentIndex":I
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 99
    .local v12, "minFrac":D
    new-instance v14, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v14}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 100
    .local v14, "seg":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v6, Lorg/locationtech/jts/linearref/LinearIterator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v6, v15}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 101
    .local v6, "it":Lorg/locationtech/jts/linearref/LinearIterator;
    :goto_0
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 102
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->isEndOfLine()Z

    move-result v15

    if-nez v15, :cond_1

    .line 103
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v15

    iput-object v15, v14, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 104
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v15

    iput-object v15, v14, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 105
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v16

    .line 106
    .local v16, "segDistance":D
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/locationtech/jts/geom/LineSegment;->segmentFraction(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v18

    .line 108
    .local v18, "segFrac":D
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->getComponentIndex()I

    move-result v4

    .line 109
    .local v4, "candidateComponentIndex":I
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->getVertexIndex()I

    move-result v5

    .line 110
    .local v5, "candidateSegmentIndex":I
    cmpg-double v15, v16, v10

    if-gez v15, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 113
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1, v2}, Lorg/locationtech/jts/linearref/LinearLocation;->compareLocationValues(IID)I

    move-result v15

    if-gez v15, :cond_1

    .line 118
    :cond_0
    move v8, v4

    .line 119
    move v9, v5

    .line 120
    move-wide/from16 v12, v18

    .line 121
    move-wide/from16 v10, v16

    .line 101
    .end local v4    # "candidateComponentIndex":I
    .end local v5    # "candidateSegmentIndex":I
    .end local v16    # "segDistance":D
    .end local v18    # "segFrac":D
    :cond_1
    invoke-virtual {v6}, Lorg/locationtech/jts/linearref/LinearIterator;->next()V

    goto :goto_0

    .line 126
    :cond_2
    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v15, v10, v20

    if-nez v15, :cond_3

    .line 128
    new-instance v7, Lorg/locationtech/jts/linearref/LinearLocation;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(Lorg/locationtech/jts/linearref/LinearLocation;)V

    .line 132
    :goto_1
    return-object v7

    .line 131
    :cond_3
    new-instance v7, Lorg/locationtech/jts/linearref/LinearLocation;

    invoke-direct {v7, v8, v9, v12, v13}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    .line 132
    .local v7, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    goto :goto_1
.end method


# virtual methods
.method public indexOf(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 4
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 75
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    .line 89
    :cond_0
    :goto_0
    return-object v1

    .line 78
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v2}, Lorg/locationtech/jts/linearref/LinearLocation;->getEndLocation(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    .line 79
    .local v1, "endLoc":Lorg/locationtech/jts/linearref/LinearLocation;
    invoke-virtual {v1, p2}, Lorg/locationtech/jts/linearref/LinearLocation;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/linearref/LocationIndexOfPoint;->indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    .line 87
    .local v0, "closestAfter":Lorg/locationtech/jts/linearref/LinearLocation;
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/linearref/LinearLocation;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v3, "computed location is before specified minimum location"

    invoke-static {v2, v3}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    move-object v1, v0

    .line 89
    goto :goto_0

    .line 87
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
