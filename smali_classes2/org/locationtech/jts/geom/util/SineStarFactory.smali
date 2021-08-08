.class public Lorg/locationtech/jts/geom/util/SineStarFactory;
.super Lorg/locationtech/jts/util/GeometricShapeFactory;
.source "SineStarFactory.java"


# instance fields
.field protected armLengthRatio:D

.field protected numArms:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/locationtech/jts/util/GeometricShapeFactory;-><init>()V

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->numArms:I

    .line 36
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->armLengthRatio:D

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/locationtech/jts/util/GeometricShapeFactory;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->numArms:I

    .line 36
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->armLengthRatio:D

    .line 56
    return-void
.end method


# virtual methods
.method public createSineStar()Lorg/locationtech/jts/geom/Geometry;
    .locals 48

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v24

    .line 88
    .local v24, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v42

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v34, v42, v44

    .line 90
    .local v34, "radius":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->armLengthRatio:D

    move-wide/from16 v16, v0

    .line 91
    .local v16, "armRatio":D
    const-wide/16 v42, 0x0

    cmpg-double v37, v16, v42

    if-gez v37, :cond_0

    .line 92
    const-wide/16 v16, 0x0

    .line 93
    :cond_0
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    cmpl-double v37, v16, v42

    if-lez v37, :cond_1

    .line 94
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 96
    :cond_1
    mul-double v14, v16, v34

    .line 97
    .local v14, "armMaxLen":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v42, v42, v16

    mul-double v28, v42, v34

    .line 99
    .local v28, "insideRadius":D
    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v42

    add-double v18, v42, v34

    .line 100
    .local v18, "centreX":D
    invoke-virtual/range {v24 .. v24}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v42

    add-double v20, v42, v34

    .line 102
    .local v20, "centreY":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->nPts:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v31, v0

    .line 103
    .local v31, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/16 v26, 0x0

    .line 104
    .local v26, "iPt":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->nPts:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_2

    .line 106
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->nPts:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->numArms:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v32, v42, v44

    .line 107
    .local v32, "ptArcFrac":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v42

    sub-double v10, v32, v42

    .line 111
    .local v10, "armAngFrac":D
    const-wide v42, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v8, v42, v10

    .line 113
    .local v8, "armAng":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    add-double v42, v42, v44

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v12, v42, v44

    .line 116
    .local v12, "armLenFrac":D
    mul-double v42, v14, v12

    add-double v22, v28, v42

    .line 119
    .local v22, "curveRadius":D
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide v44, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->nPts:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    mul-double v6, v42, v44

    .line 120
    .local v6, "ang":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    mul-double v42, v42, v22

    add-double v38, v42, v18

    .line 121
    .local v38, "x":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    mul-double v42, v42, v22

    add-double v40, v42, v20

    .line 122
    .local v40, "y":D
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "iPt":I
    .local v27, "iPt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/util/SineStarFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v37

    aput-object v37, v31, v26

    .line 104
    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v27

    .end local v27    # "iPt":I
    .restart local v26    # "iPt":I
    goto/16 :goto_0

    .line 124
    .end local v6    # "ang":D
    .end local v8    # "armAng":D
    .end local v10    # "armAngFrac":D
    .end local v12    # "armLenFrac":D
    .end local v22    # "curveRadius":D
    .end local v32    # "ptArcFrac":D
    .end local v38    # "x":D
    .end local v40    # "y":D
    :cond_2
    new-instance v37, Lorg/locationtech/jts/geom/Coordinate;

    const/16 v42, 0x0

    aget-object v42, v31, v42

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v37, v31, v26

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v36

    .line 127
    .local v36, "ring":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/geom/util/SineStarFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v37, v0

    const/16 v42, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v30

    .line 128
    .local v30, "poly":Lorg/locationtech/jts/geom/Polygon;
    return-object v30
.end method

.method public setArmLengthRatio(D)V
    .locals 1
    .param p1, "armLengthRatio"    # D

    .prologue
    .line 77
    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->armLengthRatio:D

    .line 78
    return-void
.end method

.method public setNumArms(I)V
    .locals 0
    .param p1, "numArms"    # I

    .prologue
    .line 65
    iput p1, p0, Lorg/locationtech/jts/geom/util/SineStarFactory;->numArms:I

    .line 66
    return-void
.end method
