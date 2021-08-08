.class public Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;
.super Ljava/lang/Object;
.source "OffsetCurveSetBuilder.java"


# instance fields
.field private curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

.field private curveList:Ljava/util/List;

.field private distance:D

.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;)V
    .locals 2
    .param p1, "inputGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D
    .param p4, "curveBuilder"    # Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveList:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 64
    iput-wide p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    .line 65
    iput-object p4, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    .line 66
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 103
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-void

    .line 105
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addPolygon(Lorg/locationtech/jts/geom/Polygon;)V

    goto :goto_0

    .line 107
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addLineString(Lorg/locationtech/jts/geom/LineString;)V

    goto :goto_0

    .line 108
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addPoint(Lorg/locationtech/jts/geom/Point;)V

    goto :goto_0

    .line 109
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 110
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 111
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 112
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 113
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 119
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method private addCurve([Lorg/locationtech/jts/geom/Coordinate;II)V
    .locals 4
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "leftLoc"    # I
    .param p3, "rightLoc"    # I

    .prologue
    .line 93
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lorg/locationtech/jts/noding/NodedSegmentString;

    new-instance v1, Lorg/locationtech/jts/geomgraph/Label;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lorg/locationtech/jts/geomgraph/Label;-><init>(IIII)V

    invoke-direct {v0, p1, v1}, Lorg/locationtech/jts/noding/NodedSegmentString;-><init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    .line 97
    .local v0, "e":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addLineString(Lorg/locationtech/jts/geom/LineString;)V
    .locals 6
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 138
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getBufferParameters()Lorg/locationtech/jts/operation/buffer/BufferParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 141
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    invoke-virtual {v2, v0, v4, v5}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getLineCurve([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 142
    .local v1, "curve":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCurve([Lorg/locationtech/jts/geom/Coordinate;II)V

    goto :goto_0
.end method

.method private addPoint(Lorg/locationtech/jts/geom/Point;)V
    .locals 6
    .param p1, "p"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 128
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 131
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    invoke-virtual {v2, v0, v4, v5}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getLineCurve([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 132
    .local v1, "curve":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCurve([Lorg/locationtech/jts/geom/Coordinate;II)V

    goto :goto_0
.end method

.method private addPolygon(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 18
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    .line 152
    .local v4, "offsetDistance":D
    const/4 v6, 0x1

    .line 153
    .local v6, "offsetSide":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    neg-double v4, v10

    .line 155
    const/4 v6, 0x2

    .line 158
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v17

    check-cast v17, Lorg/locationtech/jts/geom/LinearRing;

    .line 159
    .local v17, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 162
    .local v3, "shellCoord":[Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10, v11}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->isErodedCompletely(Lorg/locationtech/jts/geom/LinearRing;D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    :cond_1
    return-void

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gtz v2, :cond_3

    array-length v2, v3

    const/4 v7, 0x3

    if-lt v2, v7, :cond_1

    .line 168
    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addPolygonRing([Lorg/locationtech/jts/geom/Coordinate;DIII)V

    .line 175
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 177
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v15

    check-cast v15, Lorg/locationtech/jts/geom/LinearRing;

    .line 178
    .local v15, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v15}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v9

    .line 182
    .local v9, "holeCoord":[Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->distance:D

    neg-double v10, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v11}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->isErodedCompletely(Lorg/locationtech/jts/geom/LinearRing;D)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 191
    :cond_4
    invoke-static {v6}, Lorg/locationtech/jts/geomgraph/Position;->opposite(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v8, p0

    move-wide v10, v4

    .line 188
    invoke-direct/range {v8 .. v14}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addPolygonRing([Lorg/locationtech/jts/geom/Coordinate;DIII)V

    goto :goto_1
.end method

.method private addPolygonRing([Lorg/locationtech/jts/geom/Coordinate;DIII)V
    .locals 8
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "offsetDistance"    # D
    .param p4, "side"    # I
    .param p5, "cwLeftLoc"    # I
    .param p6, "cwRightLoc"    # I

    .prologue
    const/4 v6, 0x4

    .line 213
    const-wide/16 v4, 0x0

    cmpl-double v3, p2, v4

    if-nez v3, :cond_0

    array-length v3, p1

    if-ge v3, v6, :cond_0

    .line 226
    :goto_0
    return-void

    .line 216
    :cond_0
    move v1, p5

    .line 217
    .local v1, "leftLoc":I
    move v2, p6

    .line 218
    .local v2, "rightLoc":I
    array-length v3, p1

    if-lt v3, v6, :cond_1

    .line 219
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    move v1, p6

    .line 221
    move v2, p5

    .line 222
    invoke-static {p4}, Lorg/locationtech/jts/geomgraph/Position;->opposite(I)I

    move-result p4

    .line 224
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveBuilder:Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    invoke-virtual {v3, p1, p4, p2, p3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getRingCurve([Lorg/locationtech/jts/geom/Coordinate;ID)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 225
    .local v0, "curve":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v0, v1, v2}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->addCurve([Lorg/locationtech/jts/geom/Coordinate;II)V

    goto :goto_0
.end method

.method private isErodedCompletely(Lorg/locationtech/jts/geom/LinearRing;D)Z
    .locals 10
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "bufferDistance"    # D

    .prologue
    .line 239
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 240
    .local v1, "ringCoord":[Lorg/locationtech/jts/geom/Coordinate;
    const-wide/16 v4, 0x0

    .line 242
    .local v4, "minDiam":D
    array-length v6, v1

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 243
    const-wide/16 v6, 0x0

    cmpg-double v6, p2, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    .line 257
    :goto_0
    return v6

    .line 243
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 247
    :cond_1
    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 248
    invoke-direct {p0, v1, p2, p3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->isTriangleErodedCompletely([Lorg/locationtech/jts/geom/Coordinate;D)Z

    move-result v6

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 252
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 253
    .local v2, "envMinDimension":D
    const-wide/16 v6, 0x0

    cmpg-double v6, p2, v6

    if-gez v6, :cond_3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 254
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpl-double v6, v6, v2

    if-lez v6, :cond_3

    .line 255
    const/4 v6, 0x1

    goto :goto_0

    .line 257
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isTriangleErodedCompletely([Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 10
    .param p1, "triangleCoord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "bufferDistance"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 299
    new-instance v3, Lorg/locationtech/jts/geom/Triangle;

    aget-object v6, p1, v5

    aget-object v7, p1, v4

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-direct {v3, v6, v7, v8}, Lorg/locationtech/jts/geom/Triangle;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 300
    .local v3, "tri":Lorg/locationtech/jts/geom/Triangle;
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Triangle;->inCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 301
    .local v2, "inCentre":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v6, v3, Lorg/locationtech/jts/geom/Triangle;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v7, v3, Lorg/locationtech/jts/geom/Triangle;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v2, v6, v7}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 302
    .local v0, "distToCentre":D
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 78
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->curveList:Ljava/util/List;

    return-object v0
.end method
