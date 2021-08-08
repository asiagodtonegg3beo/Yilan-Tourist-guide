.class public Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;
.super Lorg/locationtech/jts/shape/GeometricShapeBuilder;
.source "SierpinskiCarpetBuilder.java"


# instance fields
.field private coordList:Lorg/locationtech/jts/geom/CoordinateList;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 31
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 36
    return-void
.end method

.method private addHoles(IDDDLjava/util/List;)V
    .locals 22
    .param p1, "n"    # I
    .param p2, "originX"    # D
    .param p4, "originY"    # D
    .param p6, "width"    # D
    .param p8, "holeList"    # Ljava/util/List;

    .prologue
    .line 67
    if-gez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 68
    :cond_0
    add-int/lit8 v3, p1, -0x1

    .line 69
    .local v3, "n2":I
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v8, p6, v4

    .line 70
    .local v8, "widthThird":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v20, v4, v6

    .line 71
    .local v20, "widthTwoThirds":D
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    div-double v18, p6, v4

    .local v18, "widthNinth":D
    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p8

    .line 72
    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 73
    add-double v4, p2, v8

    move-object/from16 v2, p0

    move-wide/from16 v6, p4

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 74
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double v4, v4, p2

    move-object/from16 v2, p0

    move-wide/from16 v6, p4

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 76
    add-double v6, p4, v8

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 77
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double v4, v4, p2

    add-double v6, p4, v8

    move-object/from16 v2, p0

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 79
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double v6, p4, v4

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 80
    add-double v4, p2, v8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double v6, v6, p4

    move-object/from16 v2, p0

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 81
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double v4, v4, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double v6, v6, p4

    move-object/from16 v2, p0

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 84
    add-double v12, p2, v8

    add-double v14, p4, v8

    move-object/from16 v11, p0

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->createSquareHole(DDD)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createSquareHole(DDD)Lorg/locationtech/jts/geom/LinearRing;
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D

    .prologue
    .line 89
    const/4 v1, 0x5

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    add-double v4, p1, p5

    invoke-direct {v2, v4, v5, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    add-double v4, p1, p5

    add-double v6, p3, p5

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    add-double v4, p3, p5

    invoke-direct {v2, p1, p2, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v0, v1

    .line 96
    .local v0, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    return-object v1
.end method

.method private getHoles(IDDD)[Lorg/locationtech/jts/geom/LinearRing;
    .locals 10
    .param p1, "n"    # I
    .param p2, "originX"    # D
    .param p4, "originY"    # D
    .param p6, "width"    # D

    .prologue
    .line 58
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "holeList":Ljava/util/List;
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 60
    invoke-direct/range {v0 .. v8}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->addHoles(IDDDLjava/util/List;)V

    .line 62
    invoke-static {v8}, Lorg/locationtech/jts/geom/GeometryFactory;->toLinearRingArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0
.end method

.method public static recursionLevelForSize(I)I
    .locals 8
    .param p0, "numPts"    # I

    .prologue
    .line 40
    div-int/lit8 v4, p0, 0x3

    int-to-double v2, v4

    .line 41
    .local v2, "pow4":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v0, v4, v6

    .line 42
    .local v0, "exp":D
    double-to-int v4, v0

    return v4
.end method


# virtual methods
.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 12

    .prologue
    .line 47
    iget v0, p0, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->numPts:I

    invoke-static {v0}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->recursionLevelForSize(I)I

    move-result v1

    .line 48
    .local v1, "level":I
    invoke-virtual {p0}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->getSquareBaseLine()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v8

    .line 49
    .local v8, "baseLine":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    .line 50
    .local v10, "origin":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v10, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, v10, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p0}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->getDiameter()D

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->getHoles(IDDD)[Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v9

    .line 51
    .local v9, "holes":[Lorg/locationtech/jts/geom/LinearRing;
    iget-object v0, p0, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {p0}, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->getSquareExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometry(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v11

    check-cast v11, Lorg/locationtech/jts/geom/LinearRing;

    .line 52
    .local v11, "shell":Lorg/locationtech/jts/geom/LinearRing;
    iget-object v0, p0, Lorg/locationtech/jts/shape/fractal/SierpinskiCarpetBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v0, v11, v9}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method
