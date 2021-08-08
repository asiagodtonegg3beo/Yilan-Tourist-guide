.class public Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;
.super Lorg/locationtech/jts/shape/GeometricShapeBuilder;
.source "RandomPointsInGridBuilder.java"


# instance fields
.field private gutterFraction:D

.field private isConstrainedToCircle:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->isConstrainedToCircle:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->gutterFraction:D

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/locationtech/jts/shape/GeometricShapeBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->isConstrainedToCircle:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->gutterFraction:D

    .line 54
    return-void
.end method

.method private randomPointInCell(DDDD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "orgX"    # D
    .param p3, "orgY"    # D
    .param p5, "xLen"    # D
    .param p7, "yLen"    # D

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->isConstrainedToCircle:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static/range {p1 .. p8}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->randomPointInCircle(DDDD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p8}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->randomPointInGridCell(DDDD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    goto :goto_0
.end method

.method private static randomPointInCircle(DDDD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 28
    .param p0, "orgX"    # D
    .param p2, "orgY"    # D
    .param p4, "width"    # D
    .param p6, "height"    # D

    .prologue
    .line 136
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, p4, v24

    add-double v6, p0, v24

    .line 137
    .local v6, "centreX":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, p6, v24

    add-double v8, p2, v24

    .line 139
    .local v8, "centreY":D
    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v26

    mul-double v10, v24, v26

    .line 140
    .local v10, "rndAng":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    .line 142
    .local v12, "rndRadius":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 143
    .local v14, "rndRadius2":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, p4, v24

    mul-double v24, v24, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v16, v24, v26

    .line 144
    .local v16, "rndX":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, p6, v24

    mul-double v24, v24, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v18, v24, v26

    .line 146
    .local v18, "rndY":D
    add-double v20, v6, v16

    .line 147
    .local v20, "x0":D
    add-double v22, v8, v18

    .line 148
    .local v22, "y0":D
    new-instance v24, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v24
.end method

.method private randomPointInGridCell(DDDD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p1, "orgX"    # D
    .param p3, "orgY"    # D
    .param p5, "xLen"    # D
    .param p7, "yLen"    # D

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, p5

    add-double v0, p1, v4

    .line 130
    .local v0, "x":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, p7

    add-double v2, p3, v4

    .line 131
    .local v2, "y":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->createCoord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 32

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget v2, v0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->numPts:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v28, v0

    .line 91
    .local v28, "nCells":I
    mul-int v2, v28, v28

    move-object/from16 v0, p0

    iget v3, v0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->numPts:I

    if-ge v2, v3, :cond_0

    .line 92
    add-int/lit8 v28, v28, 0x1

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v14, v2, v30

    .line 95
    .local v14, "gridDX":D
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v16, v2, v30

    .line 97
    .local v16, "gridDY":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->gutterFraction:D

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lorg/locationtech/jts/math/MathUtil;->clamp(DDD)D

    move-result-wide v18

    .line 98
    .local v18, "gutterFrac":D
    mul-double v2, v14, v18

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v20, v2, v30

    .line 99
    .local v20, "gutterOffsetX":D
    mul-double v2, v16, v18

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v22, v2, v30

    .line 100
    .local v22, "gutterOffsetY":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v12, v2, v18

    .line 101
    .local v12, "cellFrac":D
    mul-double v8, v12, v14

    .line 102
    .local v8, "cellDX":D
    mul-double v10, v12, v16

    .line 104
    .local v10, "cellDY":D
    mul-int v2, v28, v28

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v29, v0

    .line 105
    .local v29, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/16 v25, 0x0

    .line 106
    .local v25, "index":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 107
    const/16 v27, 0x0

    .local v27, "j":I
    move/from16 v26, v25

    .end local v25    # "index":I
    .local v26, "index":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v14

    add-double v2, v2, v30

    add-double v4, v2, v20

    .line 109
    .local v4, "orgX":D
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->getExtent()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v16

    add-double v2, v2, v30

    add-double v6, v2, v22

    .line 110
    .local v6, "orgY":D
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "index":I
    .restart local v25    # "index":I
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->randomPointInCell(DDDD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v29, v26

    .line 107
    add-int/lit8 v27, v27, 0x1

    move/from16 v26, v25

    .end local v25    # "index":I
    .restart local v26    # "index":I
    goto :goto_1

    .line 106
    .end local v4    # "orgX":D
    .end local v6    # "orgY":D
    :cond_1
    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v26

    .end local v26    # "index":I
    .restart local v25    # "index":I
    goto :goto_0

    .line 113
    .end local v27    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v2

    return-object v2
.end method

.method public setConstrainedToCircle(Z)V
    .locals 0
    .param p1, "isConstrainedToCircle"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->isConstrainedToCircle:Z

    .line 68
    return-void
.end method

.method public setGutterFraction(D)V
    .locals 1
    .param p1, "gutterFraction"    # D

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/locationtech/jts/shape/random/RandomPointsInGridBuilder;->gutterFraction:D

    .line 80
    return-void
.end method
