.class public Lorg/locationtech/jts/util/GeometricShapeFactory;
.super Ljava/lang/Object;
.source "GeometricShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;
    }
.end annotation


# instance fields
.field protected dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

.field protected geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field protected nPts:I

.field protected precModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field protected rotationAngle:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/util/GeometricShapeFactory;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 46
    new-instance v0, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;-><init>(Lorg/locationtech/jts/util/GeometricShapeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotationAngle:D

    .line 71
    iput-object p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 72
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 73
    return-void
.end method


# virtual methods
.method protected coord(DD)Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 381
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 382
    .local v0, "pt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->precModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 383
    return-object v0
.end method

.method protected coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "trans"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 388
    iget-wide v0, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v0, p1

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public createArc(DD)Lorg/locationtech/jts/geom/LineString;
    .locals 35
    .param p1, "startAng"    # D
    .param p3, "angExtent"    # D

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v16

    .line 315
    .local v16, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v24, v30, v32

    .line 316
    .local v24, "xRadius":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v28, v30, v32

    .line 318
    .local v28, "yRadius":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v30

    add-double v12, v30, v24

    .line 319
    .local v12, "centreX":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v30

    add-double v14, v30, v28

    .line 321
    .local v14, "centreY":D
    move-wide/from16 v10, p3

    .line 322
    .local v10, "angSize":D
    const-wide/16 v30, 0x0

    cmpg-double v30, v10, v30

    if-lez v30, :cond_0

    const-wide v30, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v30, v10, v30

    if-lez v30, :cond_1

    .line 323
    :cond_0
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v8, v10, v30

    .line 326
    .local v8, "angInc":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v21, v0

    .line 327
    .local v21, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/16 v18, 0x0

    .line 328
    .local v18, "iPt":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 329
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v8

    add-double v6, p1, v30

    .line 330
    .local v6, "ang":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v30, v30, v24

    add-double v22, v30, v12

    .line 331
    .local v22, "x":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v30, v30, v28

    add-double v26, v30, v14

    .line 332
    .local v26, "y":D
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "iPt":I
    .local v19, "iPt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v30

    aput-object v30, v21, v18

    .line 328
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v19

    .end local v19    # "iPt":I
    .restart local v18    # "iPt":I
    goto :goto_0

    .line 334
    .end local v6    # "ang":D
    .end local v22    # "x":D
    .end local v26    # "y":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v20

    .line 335
    .local v20, "line":Lorg/locationtech/jts/geom/LineString;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v30

    check-cast v30, Lorg/locationtech/jts/geom/LineString;

    return-object v30
.end method

.method public createArcPolygon(DD)Lorg/locationtech/jts/geom/Polygon;
    .locals 37
    .param p1, "startAng"    # D
    .param p3, "angExtent"    # D

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v16

    .line 349
    .local v16, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v26, v32, v34

    .line 350
    .local v26, "xRadius":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v30, v32, v34

    .line 352
    .local v30, "yRadius":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v32

    add-double v12, v32, v26

    .line 353
    .local v12, "centreX":D
    invoke-virtual/range {v16 .. v16}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v32

    add-double v14, v32, v30

    .line 355
    .local v14, "centreY":D
    move-wide/from16 v10, p3

    .line 356
    .local v10, "angSize":D
    const-wide/16 v32, 0x0

    cmpg-double v23, v10, v32

    if-lez v23, :cond_0

    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v23, v10, v32

    if-lez v23, :cond_1

    .line 357
    :cond_0
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v8, v10, v32

    .line 362
    .local v8, "angInc":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v21, v0

    .line 364
    .local v21, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/16 v18, 0x0

    .line 365
    .local v18, "iPt":I
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "iPt":I
    .local v19, "iPt":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v23

    aput-object v23, v21, v18

    .line 366
    const/16 v17, 0x0

    .local v17, "i":I
    move/from16 v18, v19

    .end local v19    # "iPt":I
    .restart local v18    # "iPt":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 367
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    add-double v6, p1, v32

    .line 369
    .local v6, "ang":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v32, v32, v26

    add-double v24, v32, v12

    .line 370
    .local v24, "x":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v32, v32, v30

    add-double v28, v32, v14

    .line 371
    .local v28, "y":D
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "iPt":I
    .restart local v19    # "iPt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v23

    aput-object v23, v21, v18

    .line 366
    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v19

    .end local v19    # "iPt":I
    .restart local v18    # "iPt":I
    goto :goto_0

    .line 373
    .end local v6    # "ang":D
    .end local v24    # "x":D
    .end local v28    # "y":D
    :cond_2
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "iPt":I
    .restart local v19    # "iPt":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v23

    aput-object v23, v21, v18

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v22

    .line 375
    .local v22, "ring":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v23, v0

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v20

    .line 376
    .local v20, "poly":Lorg/locationtech/jts/geom/Polygon;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v23

    check-cast v23, Lorg/locationtech/jts/geom/Polygon;

    return-object v23
.end method

.method public createCircle()Lorg/locationtech/jts/geom/Polygon;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/locationtech/jts/util/GeometricShapeFactory;->createEllipse()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public createEllipse()Lorg/locationtech/jts/geom/Polygon;
    .locals 34

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v12

    .line 215
    .local v12, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v12}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v22, v28, v30

    .line 216
    .local v22, "xRadius":D
    invoke-virtual {v12}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v28

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v26, v28, v30

    .line 218
    .local v26, "yRadius":D
    invoke-virtual {v12}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v28

    add-double v8, v28, v22

    .line 219
    .local v8, "centreX":D
    invoke-virtual {v12}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v28

    add-double v10, v28, v26

    .line 221
    .local v10, "centreY":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v17, v0

    .line 222
    .local v17, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v14, 0x0

    .line 223
    .local v14, "iPt":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    .line 224
    int-to-double v0, v13

    move-wide/from16 v28, v0

    const-wide v30, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    mul-double v6, v28, v30

    .line 225
    .local v6, "ang":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v22

    add-double v20, v28, v8

    .line 226
    .local v20, "x":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v26

    add-double v24, v28, v10

    .line 227
    .local v24, "y":D
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "iPt":I
    .local v15, "iPt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v19

    aput-object v19, v17, v14

    .line 223
    add-int/lit8 v13, v13, 0x1

    move v14, v15

    .end local v15    # "iPt":I
    .restart local v14    # "iPt":I
    goto :goto_0

    .line 229
    .end local v6    # "ang":D
    .end local v20    # "x":D
    .end local v24    # "y":D
    :cond_0
    new-instance v19, Lorg/locationtech/jts/geom/Coordinate;

    const/16 v28, 0x0

    aget-object v28, v17, v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v19, v17, v14

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v18

    .line 232
    .local v18, "ring":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v19, v0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v16

    .line 233
    .local v16, "poly":Lorg/locationtech/jts/geom/Polygon;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v19

    check-cast v19, Lorg/locationtech/jts/geom/Polygon;

    return-object v19
.end method

.method public createRectangle()Lorg/locationtech/jts/geom/Polygon;
    .locals 26

    .prologue
    .line 154
    const/4 v12, 0x0

    .line 155
    .local v12, "ipt":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    move/from16 v22, v0

    div-int/lit8 v14, v22, 0x4

    .line 156
    .local v14, "nSide":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v14, v0, :cond_0

    const/4 v14, 0x1

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v22

    int-to-double v0, v14

    move-wide/from16 v24, v0

    div-double v6, v22, v24

    .line 158
    .local v6, "XsegLen":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v22

    int-to-double v0, v14

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 160
    .local v8, "YsegLen":D
    mul-int/lit8 v22, v14, 0x4

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v16, v0

    .line 161
    .local v16, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getEnvelope()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v10

    .line 166
    .local v10, "env":Lorg/locationtech/jts/geom/Envelope;
    const/4 v11, 0x0

    .local v11, "i":I
    move v13, v12

    .end local v12    # "ipt":I
    .local v13, "ipt":I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 167
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v22

    int-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    add-double v18, v22, v24

    .line 168
    .local v18, "x":D
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v20

    .line 169
    .local v20, "y":D
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ipt":I
    .restart local v12    # "ipt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v22

    aput-object v22, v16, v13

    .line 166
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "ipt":I
    .restart local v13    # "ipt":I
    goto :goto_0

    .line 171
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_2

    .line 172
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v18

    .line 173
    .restart local v18    # "x":D
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v22

    int-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v24, v24, v8

    add-double v20, v22, v24

    .line 174
    .restart local v20    # "y":D
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ipt":I
    .restart local v12    # "ipt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v22

    aput-object v22, v16, v13

    .line 171
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "ipt":I
    .restart local v13    # "ipt":I
    goto :goto_1

    .line 176
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_3

    .line 177
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v22

    int-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    sub-double v18, v22, v24

    .line 178
    .restart local v18    # "x":D
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v20

    .line 179
    .restart local v20    # "y":D
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ipt":I
    .restart local v12    # "ipt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v22

    aput-object v22, v16, v13

    .line 176
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "ipt":I
    .restart local v13    # "ipt":I
    goto :goto_2

    .line 181
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_4

    .line 182
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v18

    .line 183
    .restart local v18    # "x":D
    invoke-virtual {v10}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v22

    int-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v24, v24, v8

    sub-double v20, v22, v24

    .line 184
    .restart local v20    # "y":D
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ipt":I
    .restart local v12    # "ipt":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coord(DD)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v22

    aput-object v22, v16, v13

    .line 181
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    .end local v12    # "ipt":I
    .restart local v13    # "ipt":I
    goto :goto_3

    .line 186
    .end local v18    # "x":D
    .end local v20    # "y":D
    :cond_4
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ipt":I
    .restart local v12    # "ipt":I
    new-instance v22, Lorg/locationtech/jts/geom/Coordinate;

    const/16 v23, 0x0

    aget-object v23, v16, v23

    invoke-direct/range {v22 .. v23}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v22, v16, v13

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v17

    .line 189
    .local v17, "ring":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v15

    .line 190
    .local v15, "poly":Lorg/locationtech/jts/geom/Polygon;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v22

    check-cast v22, Lorg/locationtech/jts/geom/Polygon;

    return-object v22
.end method

.method public createSquircle()Lorg/locationtech/jts/geom/Polygon;
    .locals 2

    .prologue
    .line 247
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/util/GeometricShapeFactory;->createSupercircle(D)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public createSupercircle(D)Lorg/locationtech/jts/geom/Polygon;
    .locals 37
    .param p1, "power"    # D

    .prologue
    .line 258
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v24, v12, p1

    .line 260
    .local v24, "recipPow":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v5}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getMinSize()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v22, v12, v14

    .line 261
    .local v22, "radius":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v5}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v10

    .line 263
    .local v10, "centre":Lorg/locationtech/jts/geom/Coordinate;
    move-wide/from16 v0, v22

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    .line 264
    .local v20, "r4":D
    move-wide/from16 v34, v22

    .line 266
    .local v34, "y0":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v20, v12

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    .line 268
    .local v32, "xyInt":D
    move-object/from16 v0, p0

    iget v5, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    div-int/lit8 v17, v5, 0x8

    .line 269
    .local v17, "nSegsInOct":I
    mul-int/lit8 v5, v17, 0x8

    add-int/lit8 v27, v5, 0x1

    .line 270
    .local v27, "totPts":I
    move/from16 v0, v27

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v19, v0

    .line 271
    .local v19, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    move/from16 v0, v17

    int-to-double v12, v0

    div-double v30, v32, v12

    .line 273
    .local v30, "xInc":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, v17

    if-gt v4, v0, :cond_1

    .line 274
    const-wide/16 v6, 0x0

    .line 275
    .local v6, "x":D
    move-wide/from16 v8, v34

    .line 276
    .local v8, "y":D
    if-eqz v4, :cond_0

    .line 277
    int-to-double v12, v4

    mul-double v6, v30, v12

    .line 278
    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    .line 279
    .local v28, "x4":D
    sub-double v12, v20, v28

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .end local v28    # "x4":D
    :cond_0
    move-object/from16 v5, p0

    .line 281
    invoke-virtual/range {v5 .. v10}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    aput-object v5, v19, v4

    .line 282
    mul-int/lit8 v5, v17, 0x2

    sub-int/2addr v5, v4

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide v14, v6

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 284
    mul-int/lit8 v5, v17, 0x2

    add-int/2addr v5, v4

    neg-double v14, v6

    move-object/from16 v11, p0

    move-wide v12, v8

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 285
    mul-int/lit8 v5, v17, 0x4

    sub-int/2addr v5, v4

    neg-double v14, v8

    move-object/from16 v11, p0

    move-wide v12, v6

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 287
    mul-int/lit8 v5, v17, 0x4

    add-int/2addr v5, v4

    neg-double v12, v6

    neg-double v14, v8

    move-object/from16 v11, p0

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 288
    mul-int/lit8 v5, v17, 0x6

    sub-int/2addr v5, v4

    neg-double v12, v8

    neg-double v14, v6

    move-object/from16 v11, p0

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 290
    mul-int/lit8 v5, v17, 0x6

    add-int/2addr v5, v4

    neg-double v12, v8

    move-object/from16 v11, p0

    move-wide v14, v6

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 291
    mul-int/lit8 v5, v17, 0x8

    sub-int/2addr v5, v4

    neg-double v12, v6

    move-object/from16 v11, p0

    move-wide v14, v8

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/locationtech/jts/util/GeometricShapeFactory;->coordTrans(DDLorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v11

    aput-object v11, v19, v5

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 293
    .end local v6    # "x":D
    .end local v8    # "y":D
    :cond_1
    move-object/from16 v0, v19

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-instance v11, Lorg/locationtech/jts/geom/Coordinate;

    const/4 v12, 0x0

    aget-object v12, v19, v12

    invoke-direct {v11, v12}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v11, v19, v5

    .line 295
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v26

    .line 296
    .local v26, "ring":Lorg/locationtech/jts/geom/LinearRing;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/locationtech/jts/util/GeometricShapeFactory;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v11, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v11}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v18

    .line 297
    .local v18, "poly":Lorg/locationtech/jts/geom/Polygon;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/geom/Polygon;

    return-object v5
.end method

.method protected rotate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotationAngle:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 138
    iget-wide v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotationAngle:D

    iget-object v2, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    .line 139
    invoke-virtual {v2}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v4, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v4}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->getCentre()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 138
    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v6

    .line 140
    .local v6, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 142
    .end local v6    # "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    :cond_0
    return-object p1
.end method

.method public setBase(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "base"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setBase(Lorg/locationtech/jts/geom/Coordinate;)V

    return-void
.end method

.method public setCentre(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "centre"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setCentre(Lorg/locationtech/jts/geom/Coordinate;)V

    return-void
.end method

.method public setEnvelope(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 1
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setEnvelope(Lorg/locationtech/jts/geom/Envelope;)V

    .line 78
    return-void
.end method

.method public setHeight(D)V
    .locals 1
    .param p1, "height"    # D

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setHeight(D)V

    return-void
.end method

.method public setNumPoints(I)V
    .locals 0
    .param p1, "nPts"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->nPts:I

    return-void
.end method

.method public setRotation(D)V
    .locals 1
    .param p1, "radians"    # D

    .prologue
    .line 132
    iput-wide p1, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->rotationAngle:D

    .line 133
    return-void
.end method

.method public setSize(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 108
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setSize(D)V

    return-void
.end method

.method public setWidth(D)V
    .locals 1
    .param p1, "width"    # D

    .prologue
    .line 115
    iget-object v0, p0, Lorg/locationtech/jts/util/GeometricShapeFactory;->dim:Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/util/GeometricShapeFactory$Dimensions;->setWidth(D)V

    return-void
.end method
