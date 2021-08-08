.class public Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;
.super Ljava/lang/Object;
.source "OffsetCurveBuilder.java"


# instance fields
.field private bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

.field private distance:D

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;Lorg/locationtech/jts/operation/buffer/BufferParameters;)V
    .locals 2
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p2, "bufParams"    # Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 44
    iput-object p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 45
    return-void
.end method

.method private computeLineBufferCurve([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V
    .locals 12
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segGen"    # Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 179
    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    invoke-direct {p0, v8, v9}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->simplifyTolerance(D)D

    move-result-wide v0

    .line 183
    .local v0, "distTol":D
    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 187
    .local v5, "simp1":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v5

    add-int/lit8 v3, v7, -0x1

    .line 188
    .local v3, "n1":I
    aget-object v7, v5, v11

    aget-object v8, v5, v10

    invoke-virtual {p2, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 189
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 190
    aget-object v7, v5, v2

    invoke-virtual {p2, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLastSegment()V

    .line 194
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v5, v7

    aget-object v8, v5, v3

    invoke-virtual {p2, v7, v8}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLineEndCap(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 198
    neg-double v8, v0

    invoke-static {p1, v8, v9}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 201
    .local v6, "simp2":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    .line 204
    .local v4, "n2":I
    aget-object v7, v6, v4

    add-int/lit8 v8, v4, -0x1

    aget-object v8, v6, v8

    invoke-virtual {p2, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 205
    add-int/lit8 v2, v4, -0x2

    :goto_1
    if-ltz v2, :cond_1

    .line 206
    aget-object v7, v6, v2

    invoke-virtual {p2, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 205
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLastSegment()V

    .line 210
    aget-object v7, v6, v10

    aget-object v8, v6, v11

    invoke-virtual {p2, v7, v8}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLineEndCap(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 212
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closeRing()V

    .line 213
    return-void
.end method

.method private computeOffsetCurve([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V
    .locals 11
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "isRightSide"    # Z
    .param p3, "segGen"    # Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    .prologue
    const/4 v10, 0x1

    .line 287
    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    invoke-direct {p0, v8, v9}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->simplifyTolerance(D)D

    move-result-wide v0

    .line 289
    .local v0, "distTol":D
    if-eqz p2, :cond_0

    .line 292
    neg-double v8, v0

    invoke-static {p1, v8, v9}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 295
    .local v6, "simp2":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    .line 298
    .local v4, "n2":I
    aget-object v7, v6, v4

    add-int/lit8 v8, v4, -0x1

    aget-object v8, v6, v8

    invoke-virtual {p3, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 299
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFirstSegment()V

    .line 300
    add-int/lit8 v2, v4, -0x2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 301
    aget-object v7, v6, v2

    invoke-virtual {p3, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 300
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 307
    .end local v2    # "i":I
    .end local v4    # "n2":I
    .end local v6    # "simp2":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 311
    .local v5, "simp1":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v5

    add-int/lit8 v3, v7, -0x1

    .line 312
    .local v3, "n1":I
    const/4 v7, 0x0

    aget-object v7, v5, v7

    aget-object v8, v5, v10

    invoke-virtual {p3, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 313
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFirstSegment()V

    .line 314
    const/4 v2, 0x2

    .restart local v2    # "i":I
    :goto_1
    if-gt v2, v3, :cond_1

    .line 315
    aget-object v7, v5, v2

    invoke-virtual {p3, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 318
    .end local v3    # "n1":I
    .end local v5    # "simp1":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLastSegment()V

    .line 319
    return-void
.end method

.method private computePointCurve(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segGen"    # Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getEndCapStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return-void

    .line 168
    :pswitch_1
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->createCircle(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->createSquare(Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private computeRingBufferCurve([Lorg/locationtech/jts/geom/Coordinate;ILorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V
    .locals 10
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "side"    # I
    .param p3, "segGen"    # Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 324
    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    invoke-direct {p0, v8, v9}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->simplifyTolerance(D)D

    move-result-wide v2

    .line 326
    .local v2, "distTol":D
    const/4 v8, 0x2

    if-ne p2, v8, :cond_0

    .line 327
    neg-double v2, v2

    .line 328
    :cond_0
    invoke-static {p1, v2, v3}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 331
    .local v5, "simp":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v5

    add-int/lit8 v4, v8, -0x1

    .line 332
    .local v4, "n":I
    add-int/lit8 v8, v4, -0x1

    aget-object v8, v5, v8

    aget-object v9, v5, v7

    invoke-virtual {p3, v8, v9, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 333
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v4, :cond_2

    .line 334
    if-eq v1, v6, :cond_1

    move v0, v6

    .line 335
    .local v0, "addStartPoint":Z
    :goto_1
    aget-object v8, v5, v1

    invoke-virtual {p3, v8, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "addStartPoint":Z
    :cond_1
    move v0, v7

    .line 334
    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closeRing()V

    .line 338
    return-void
.end method

.method private computeSingleSidedBufferCurve([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V
    .locals 12
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "isRightSide"    # Z
    .param p3, "segGen"    # Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 244
    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    invoke-direct {p0, v8, v9}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->simplifyTolerance(D)D

    move-result-wide v0

    .line 246
    .local v0, "distTol":D
    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {p3, p1, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addSegments([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 252
    neg-double v8, v0

    invoke-static {p1, v8, v9}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 255
    .local v6, "simp2":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    .line 258
    .local v4, "n2":I
    aget-object v7, v6, v4

    add-int/lit8 v8, v4, -0x1

    aget-object v8, v6, v8

    invoke-virtual {p3, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 259
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFirstSegment()V

    .line 260
    add-int/lit8 v2, v4, -0x2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 261
    aget-object v7, v6, v2

    invoke-virtual {p3, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 260
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    .end local v4    # "n2":I
    .end local v6    # "simp2":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-virtual {p3, p1, v11}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addSegments([Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 270
    invoke-static {p1, v0, v1}, Lorg/locationtech/jts/operation/buffer/BufferInputLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 274
    .local v5, "simp1":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v5

    add-int/lit8 v3, v7, -0x1

    .line 275
    .local v3, "n1":I
    aget-object v7, v5, v11

    aget-object v8, v5, v10

    invoke-virtual {p3, v7, v8, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->initSideSegments(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 276
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addFirstSegment()V

    .line 277
    const/4 v2, 0x2

    .restart local v2    # "i":I
    :goto_1
    if-gt v2, v3, :cond_1

    .line 278
    aget-object v7, v5, v2

    invoke-virtual {p3, v7, v10}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addNextSegment(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    .end local v3    # "n1":I
    .end local v5    # "simp1":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->addLastSegment()V

    .line 282
    invoke-virtual {p3}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->closeRing()V

    .line 283
    return-void
.end method

.method private static copyCoordinates([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 141
    array-length v2, p0

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 142
    .local v0, "copy":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 143
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method private getSegGen(D)Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    .locals 3
    .param p1, "distance"    # D

    .prologue
    .line 150
    new-instance v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;Lorg/locationtech/jts/operation/buffer/BufferParameters;D)V

    return-object v0
.end method

.method private simplifyTolerance(D)D
    .locals 3
    .param p1, "bufDistance"    # D

    .prologue
    .line 162
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->getSimplifyFactor()D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public getBufferParameters()Lorg/locationtech/jts/operation/buffer/BufferParameters;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    return-object v0
.end method

.method public getLineCurve([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "distance"    # D

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 70
    iput-wide p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    .line 73
    cmpg-double v6, p2, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v6}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided()Z

    move-result v6

    if-nez v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    cmpl-double v6, p2, v8

    if-eqz v6, :cond_0

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 77
    .local v2, "posDistance":D
    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getSegGen(D)Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    move-result-object v4

    .line 78
    .local v4, "segGen":Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    array-length v6, p1

    if-gt v6, v0, :cond_2

    .line 79
    aget-object v5, p1, v5

    invoke-direct {p0, v5, v4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computePointCurve(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    .line 90
    :goto_1
    invoke-virtual {v4}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 91
    .local v1, "lineCoord":[Lorg/locationtech/jts/geom/Coordinate;
    goto :goto_0

    .line 82
    .end local v1    # "lineCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-virtual {v6}, Lorg/locationtech/jts/operation/buffer/BufferParameters;->isSingleSided()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    cmpg-double v6, p2, v8

    if-gez v6, :cond_3

    .line 84
    .local v0, "isRightSide":Z
    :goto_2
    invoke-direct {p0, p1, v0, v4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computeSingleSidedBufferCurve([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    goto :goto_1

    .end local v0    # "isRightSide":Z
    :cond_3
    move v0, v5

    .line 83
    goto :goto_2

    .line 87
    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computeLineBufferCurve([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    goto :goto_1
.end method

.method public getOffsetCurve([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "distance"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 118
    iput-wide p2, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    .line 121
    cmpl-double v7, p2, v8

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    cmpg-double v7, p2, v8

    if-gez v7, :cond_2

    move v1, v5

    .line 124
    .local v1, "isRightSide":Z
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 125
    .local v2, "posDistance":D
    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getSegGen(D)Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    move-result-object v4

    .line 126
    .local v4, "segGen":Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    array-length v7, p1

    if-gt v7, v5, :cond_3

    .line 127
    aget-object v5, p1, v6

    invoke-direct {p0, v5, v4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computePointCurve(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    .line 132
    :goto_2
    invoke-virtual {v4}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 134
    .local v0, "curvePts":[Lorg/locationtech/jts/geom/Coordinate;
    if-eqz v1, :cond_0

    .line 135
    invoke-static {v0}, Lorg/locationtech/jts/geom/CoordinateArrays;->reverse([Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .end local v0    # "curvePts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "isRightSide":Z
    .end local v2    # "posDistance":D
    .end local v4    # "segGen":Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    :cond_2
    move v1, v6

    .line 123
    goto :goto_1

    .line 130
    .restart local v1    # "isRightSide":Z
    .restart local v2    # "posDistance":D
    .restart local v4    # "segGen":Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    :cond_3
    invoke-direct {p0, p1, v1, v4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computeOffsetCurve([Lorg/locationtech/jts/geom/Coordinate;ZLorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    goto :goto_2
.end method

.method public getRingCurve([Lorg/locationtech/jts/geom/Coordinate;ID)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "side"    # I
    .param p3, "distance"    # D

    .prologue
    .line 103
    iput-wide p3, p0, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->distance:D

    .line 104
    array-length v1, p1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 105
    invoke-virtual {p0, p1, p3, p4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getLineCurve([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 108
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    .line 109
    invoke-static {p1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->copyCoordinates([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->getSegGen(D)Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;

    move-result-object v0

    .line 112
    .local v0, "segGen":Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;
    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;->computeRingBufferCurve([Lorg/locationtech/jts/geom/Coordinate;ILorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;)V

    .line 113
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentGenerator;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0
.end method
