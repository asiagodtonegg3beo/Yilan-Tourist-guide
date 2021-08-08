.class public Lorg/locationtech/jts/operation/buffer/BufferOp;
.super Ljava/lang/Object;
.source "BufferOp.java"


# static fields
.field public static final CAP_BUTT:I = 0x2

.field public static final CAP_FLAT:I = 0x2

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x3

.field private static MAX_PRECISION_DIGITS:I


# instance fields
.field private argGeom:Lorg/locationtech/jts/geom/Geometry;

.field private bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

.field private distance:D

.field private resultGeometry:Lorg/locationtech/jts/geom/Geometry;

.field private saveException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0xc

    sput v0, Lorg/locationtech/jts/operation/buffer/BufferOp;->MAX_PRECISION_DIGITS:I

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 254
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 255
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/operation/buffer/BufferParameters;)V
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "bufParams"    # Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 265
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 266
    iput-object p2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 267
    return-void
.end method

.method private bufferFixedPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 6
    .param p1, "fixedPM"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 362
    new-instance v1, Lorg/locationtech/jts/noding/ScaledNoder;

    new-instance v2, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;

    new-instance v3, Lorg/locationtech/jts/geom/PrecisionModel;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>(D)V

    invoke-direct {v2, v3}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 363
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lorg/locationtech/jts/noding/ScaledNoder;-><init>(Lorg/locationtech/jts/noding/Noder;D)V

    .line 365
    .local v1, "noder":Lorg/locationtech/jts/noding/Noder;
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v0, v2}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;-><init>(Lorg/locationtech/jts/operation/buffer/BufferParameters;)V

    .line 366
    .local v0, "bufBuilder":Lorg/locationtech/jts/operation/buffer/BufferBuilder;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->setWorkingPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 367
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->setNoder(Lorg/locationtech/jts/noding/Noder;)V

    .line 369
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->distance:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    .line 370
    return-void
.end method

.method public static bufferOp(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D

    .prologue
    .line 175
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 176
    .local v0, "gBuf":Lorg/locationtech/jts/operation/buffer/BufferOp;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferOp;->getResultGeometry(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 179
    .local v1, "geomBuf":Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method public static bufferOp(Lorg/locationtech/jts/geom/Geometry;DI)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "quadrantSegments"    # I

    .prologue
    .line 211
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 212
    .local v0, "bufOp":Lorg/locationtech/jts/operation/buffer/BufferOp;
    invoke-virtual {v0, p3}, Lorg/locationtech/jts/operation/buffer/BufferOp;->setQuadrantSegments(I)V

    .line 213
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferOp;->getResultGeometry(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 214
    .local v1, "geomBuf":Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method public static bufferOp(Lorg/locationtech/jts/geom/Geometry;DII)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "quadrantSegments"    # I
    .param p4, "endCapStyle"    # I

    .prologue
    .line 233
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 234
    .local v0, "bufOp":Lorg/locationtech/jts/operation/buffer/BufferOp;
    invoke-virtual {v0, p3}, Lorg/locationtech/jts/operation/buffer/BufferOp;->setQuadrantSegments(I)V

    .line 235
    invoke-virtual {v0, p4}, Lorg/locationtech/jts/operation/buffer/BufferOp;->setEndCapStyle(I)V

    .line 236
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferOp;->getResultGeometry(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 237
    .local v1, "geomBuf":Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method public static bufferOp(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/operation/buffer/BufferParameters;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "params"    # Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .prologue
    .line 194
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferOp;

    invoke-direct {v0, p0, p3}, Lorg/locationtech/jts/operation/buffer/BufferOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/operation/buffer/BufferParameters;)V

    .line 195
    .local v0, "bufOp":Lorg/locationtech/jts/operation/buffer/BufferOp;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/operation/buffer/BufferOp;->getResultGeometry(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 196
    .local v1, "geomBuf":Lorg/locationtech/jts/geom/Geometry;
    return-object v1
.end method

.method private bufferOriginalPrecision()V
    .locals 6

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v0, v2}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;-><init>(Lorg/locationtech/jts/operation/buffer/BufferParameters;)V

    .line 340
    .local v0, "bufBuilder":Lorg/locationtech/jts/operation/buffer/BufferBuilder;
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->distance:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "bufBuilder":Lorg/locationtech/jts/operation/buffer/BufferBuilder;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "ex":Ljava/lang/RuntimeException;
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->saveException:Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private bufferReducedPrecision()V
    .locals 3

    .prologue
    .line 319
    sget v1, Lorg/locationtech/jts/operation/buffer/BufferOp;->MAX_PRECISION_DIGITS:I

    .local v1, "precDigits":I
    :goto_0
    if-ltz v1, :cond_1

    .line 321
    :try_start_0
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferReducedPrecision(I)V
    :try_end_0
    .catch Lorg/locationtech/jts/geom/TopologyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    if-eqz v2, :cond_0

    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Lorg/locationtech/jts/geom/TopologyException;
    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->saveException:Ljava/lang/RuntimeException;

    goto :goto_1

    .line 319
    .end local v0    # "ex":Lorg/locationtech/jts/geom/TopologyException;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->saveException:Ljava/lang/RuntimeException;

    throw v2
.end method

.method private bufferReducedPrecision(I)V
    .locals 6
    .param p1, "precisionDigits"    # I

    .prologue
    .line 353
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->distance:D

    invoke-static {v1, v4, v5, p1}, Lorg/locationtech/jts/operation/buffer/BufferOp;->precisionScaleFactor(Lorg/locationtech/jts/geom/Geometry;DI)D

    move-result-wide v2

    .line 356
    .local v2, "sizeBasedScaleFactor":D
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v0, v2, v3}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>(D)V

    .line 357
    .local v0, "fixedPM":Lorg/locationtech/jts/geom/PrecisionModel;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferFixedPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 358
    return-void
.end method

.method private computeGeometry()V
    .locals 3

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferOriginalPrecision()V

    .line 307
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    if-eqz v1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->argGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    .line 310
    .local v0, "argPM":Lorg/locationtech/jts/geom/PrecisionModel;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/PrecisionModel;->getType()Lorg/locationtech/jts/geom/PrecisionModel$Type;

    move-result-object v1

    sget-object v2, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v1, v2, :cond_1

    .line 311
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferFixedPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufferReducedPrecision()V

    goto :goto_0
.end method

.method private static precisionScaleFactor(Lorg/locationtech/jts/geom/Geometry;DI)D
    .locals 23
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D
    .param p3, "maxPrecisionDigits"    # I

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v13

    .line 130
    .local v13, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v13}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 131
    invoke-virtual {v13}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 132
    invoke-virtual {v13}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 133
    invoke-virtual {v13}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 129
    invoke-static/range {v2 .. v9}, Lorg/locationtech/jts/math/MathUtil;->max(DDDD)D

    move-result-wide v14

    .line 136
    .local v14, "envMax":D
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    move-wide/from16 v16, p1

    .line 137
    .local v16, "expandByDistance":D
    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v16

    add-double v10, v14, v2

    .line 140
    .local v10, "bufEnvMax":D
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v12, v2

    .line 141
    .local v12, "bufEnvPrecisionDigits":I
    sub-int v18, p3, v12

    .line 143
    .local v18, "minUnitLog10":I
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    move/from16 v0, v18

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    .line 144
    .local v20, "scaleFactor":D
    return-wide v20

    .line 136
    .end local v10    # "bufEnvMax":D
    .end local v12    # "bufEnvPrecisionDigits":I
    .end local v16    # "expandByDistance":D
    .end local v18    # "minUnitLog10":I
    .end local v20    # "scaleFactor":D
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getResultGeometry(D)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 299
    iput-wide p1, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->distance:D

    .line 300
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferOp;->computeGeometry()V

    .line 301
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->resultGeometry:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public setEndCapStyle(I)V
    .locals 1
    .param p1, "endCapStyle"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setEndCapStyle(I)V

    .line 279
    return-void
.end method

.method public setQuadrantSegments(I)V
    .locals 1
    .param p1, "quadrantSegments"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferOp;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->setQuadrantSegments(I)V

    .line 289
    return-void
.end method
