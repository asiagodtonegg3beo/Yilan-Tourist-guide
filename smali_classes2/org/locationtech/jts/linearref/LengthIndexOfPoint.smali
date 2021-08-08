.class Lorg/locationtech/jts/linearref/LengthIndexOfPoint;
.super Ljava/lang/Object;
.source "LengthIndexOfPoint.java"


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
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 45
    return-void
.end method

.method public static indexOf(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 4
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 31
    new-instance v0, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 32
    .local v0, "locater":Lorg/locationtech/jts/linearref/LengthIndexOfPoint;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    return-wide v2
.end method

.method public static indexOfAfter(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;D)D
    .locals 4
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # D

    .prologue
    .line 37
    new-instance v0, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 38
    .local v0, "locater":Lorg/locationtech/jts/linearref/LengthIndexOfPoint;
    invoke-virtual {v0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;D)D

    move-result-wide v2

    return-wide v2
.end method

.method private indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;D)D
    .locals 14
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # D

    .prologue
    .line 93
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 95
    .local v2, "minDistance":D
    move-wide/from16 v4, p2

    .line 96
    .local v4, "ptMeasure":D
    const-wide/16 v10, 0x0

    .line 97
    .local v10, "segmentStartMeasure":D
    new-instance v1, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    .line 98
    .local v1, "seg":Lorg/locationtech/jts/geom/LineSegment;
    new-instance v0, Lorg/locationtech/jts/linearref/LinearIterator;

    iget-object v12, p0, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v12}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 99
    .local v0, "it":Lorg/locationtech/jts/linearref/LinearIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 100
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->isEndOfLine()Z

    move-result v12

    if-nez v12, :cond_1

    .line 101
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v12

    iput-object v12, v1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 102
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v12

    iput-object v12, v1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 103
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 104
    .local v6, "segDistance":D
    invoke-direct {p0, v1, p1, v10, v11}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->segmentNearestMeasure(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/Coordinate;D)D

    move-result-wide v8

    .line 105
    .local v8, "segMeasureToPt":D
    cmpg-double v12, v6, v2

    if-gez v12, :cond_0

    cmpl-double v12, v8, p2

    if-lez v12, :cond_0

    .line 107
    move-wide v4, v8

    .line 108
    move-wide v2, v6

    .line 110
    :cond_0
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 112
    .end local v6    # "segDistance":D
    .end local v8    # "segMeasureToPt":D
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->next()V

    goto :goto_0

    .line 114
    :cond_2
    return-wide v4
.end method

.method private segmentNearestMeasure(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/Coordinate;D)D
    .locals 5
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "segmentStartMeasure"    # D

    .prologue
    .line 121
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/LineSegment;->projectionFactor(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 122
    .local v0, "projFactor":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 127
    .end local p3    # "segmentStartMeasure":D
    :goto_0
    return-wide p3

    .line 124
    .restart local p3    # "segmentStartMeasure":D
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 125
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v2

    mul-double/2addr v2, v0

    add-double/2addr p3, v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineSegment;->getLength()D

    move-result-wide v2

    add-double/2addr p3, v2

    goto :goto_0
.end method


# virtual methods
.method public indexOf(Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 2
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 55
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfAfter(Lorg/locationtech/jts/geom/Coordinate;D)D
    .locals 6
    .param p1, "inputPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "minIndex"    # D

    .prologue
    .line 75
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gez v4, :cond_1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOf(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 88
    :cond_0
    :goto_0
    return-wide v2

    .line 78
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v2

    .line 79
    .local v2, "endIndex":D
    cmpg-double v4, v2, p2

    if-ltz v4, :cond_0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LengthIndexOfPoint;->indexOfFromStart(Lorg/locationtech/jts/geom/Coordinate;D)D

    move-result-wide v0

    .line 86
    .local v0, "closestAfter":D
    cmpl-double v4, v0, p2

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const-string v5, "computed index is before specified minimum index"

    invoke-static {v4, v5}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    move-wide v2, v0

    .line 88
    goto :goto_0

    .line 86
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
