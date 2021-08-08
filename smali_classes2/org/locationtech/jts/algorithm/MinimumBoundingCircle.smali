.class public Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;
.super Ljava/lang/Object;
.source "MinimumBoundingCircle.java"


# instance fields
.field private centre:Lorg/locationtech/jts/geom/Coordinate;

.field private extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

.field private input:Lorg/locationtech/jts/geom/Geometry;

.field private radius:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 64
    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->radius:D

    .line 75
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    .line 76
    return-void
.end method

.method private compute()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->computeCirclePoints()V

    .line 212
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->computeCentre()V

    .line 213
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->radius:D

    goto :goto_0
.end method

.method private computeCentre()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v6

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 196
    :pswitch_2
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v6

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v7

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v6

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v7

    iget-wide v6, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v6

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private computeCirclePoints()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 220
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    new-array v7, v10, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 289
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->getNumPoints()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 225
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 226
    .local v6, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    new-array v7, v9, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v9, v6, v10

    invoke-direct {v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v10

    iput-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 234
    .end local v6    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/Geometry;->convexHull()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 236
    .local v3, "convexHull":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 239
    .local v4, "hullPts":[Lorg/locationtech/jts/geom/Coordinate;
    move-object v6, v4

    .line 240
    .restart local v6    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    aget-object v7, v4, v10

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 241
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    new-array v6, v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 242
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v10, v6, v10, v7}, Lorg/locationtech/jts/geom/CoordinateArrays;->copyDeep([Lorg/locationtech/jts/geom/Coordinate;I[Lorg/locationtech/jts/geom/Coordinate;II)V

    .line 248
    :cond_2
    array-length v7, v6

    if-gt v7, v11, :cond_3

    .line 249
    invoke-static {v6}, Lorg/locationtech/jts/geom/CoordinateArrays;->copyDeep([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    iput-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {v6}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->lowestPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 257
    .local v0, "P":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v6, v0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->pointWitMinAngleWithX([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 266
    .local v1, "Q":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_7

    .line 267
    invoke-static {v6, v0, v1}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->pointWithMinAngleWithSegment([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 270
    .local v2, "R":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0, v2, v1}, Lorg/locationtech/jts/algorithm/Angle;->isObtuse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 271
    new-array v7, v11, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v10

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v9

    iput-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 275
    :cond_4
    invoke-static {v2, v0, v1}, Lorg/locationtech/jts/algorithm/Angle;->isObtuse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 276
    move-object v0, v2

    .line 266
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 280
    :cond_5
    invoke-static {v2, v1, v0}, Lorg/locationtech/jts/algorithm/Angle;->isObtuse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 281
    move-object v1, v2

    .line 282
    goto :goto_2

    .line 285
    :cond_6
    const/4 v7, 0x3

    new-array v7, v7, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v10

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v9

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v11

    iput-object v7, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    goto/16 :goto_0

    .line 288
    .end local v2    # "R":Lorg/locationtech/jts/geom/Coordinate;
    :cond_7
    const-string v7, "Logic failure in Minimum Bounding Circle algorithm!"

    invoke-static {v7}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static lowestPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 293
    const/4 v2, 0x0

    aget-object v1, p0, v2

    .line 294
    .local v1, "min":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 295
    aget-object v2, p0, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 296
    aget-object v1, p0, v0

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    return-object v1
.end method

.method private static pointWitMinAngleWithX([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 20
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "P"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 303
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 304
    .local v10, "minSin":D
    const/4 v7, 0x0

    .line 305
    .local v7, "minAngPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v13, v0

    if-ge v6, v13, :cond_3

    .line 307
    aget-object v12, p0, v6

    .line 308
    .local v12, "p":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_1

    .line 305
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 313
    :cond_1
    iget-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v2, v16, v18

    .line 314
    .local v2, "dx":D
    iget-wide v0, v12, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v4, v16, v18

    .line 315
    .local v4, "dy":D
    const-wide/16 v16, 0x0

    cmpg-double v13, v4, v16

    if-gez v13, :cond_2

    neg-double v4, v4

    .line 316
    :cond_2
    mul-double v16, v2, v2

    mul-double v18, v4, v4

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 317
    .local v8, "len":D
    div-double v14, v4, v8

    .line 319
    .local v14, "sin":D
    cmpg-double v13, v14, v10

    if-gez v13, :cond_0

    .line 320
    move-wide v10, v14

    .line 321
    move-object v7, v12

    goto :goto_1

    .line 324
    .end local v2    # "dx":D
    .end local v4    # "dy":D
    .end local v8    # "len":D
    .end local v12    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .end local v14    # "sin":D
    :cond_3
    return-object v7
.end method

.method private static pointWithMinAngleWithSegment([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "P"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "Q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 329
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 330
    .local v4, "minAng":D
    const/4 v3, 0x0

    .line 331
    .local v3, "minAngPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_2

    .line 333
    aget-object v6, p0, v2

    .line 334
    .local v6, "p":Lorg/locationtech/jts/geom/Coordinate;
    if-ne v6, p1, :cond_1

    .line 331
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    if-eq v6, p2, :cond_0

    .line 337
    invoke-static {p1, v6, p2}, Lorg/locationtech/jts/algorithm/Angle;->angleBetween(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 338
    .local v0, "ang":D
    cmpg-double v7, v0, v4

    if-gez v7, :cond_0

    .line 339
    move-wide v4, v0

    .line 340
    move-object v3, v6

    goto :goto_1

    .line 343
    .end local v0    # "ang":D
    .end local v6    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public getCentre()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 172
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getCircle()Lorg/locationtech/jts/geom/Geometry;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 95
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    .line 98
    .local v0, "centrePoint":Lorg/locationtech/jts/geom/Point;
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->radius:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 100
    iget-wide v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->radius:D

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/Point;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method

.method public getDiameter()Lorg/locationtech/jts/geom/Geometry;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 136
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    packed-switch v2, :pswitch_data_0

    .line 144
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v2, v4

    .line 145
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v2, v5

    .line 146
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    .end local v0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v2

    .line 138
    :pswitch_0
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExtremalPoints()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 160
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getFarthestPoints()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 115
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    packed-switch v2, :pswitch_data_0

    .line 121
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v2, v4

    .line 122
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->extremalPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 123
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    .end local v0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v1    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v2

    .line 117
    :pswitch_0
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->centre:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->compute()V

    .line 183
    iget-wide v0, p0, Lorg/locationtech/jts/algorithm/MinimumBoundingCircle;->radius:D

    return-wide v0
.end method
