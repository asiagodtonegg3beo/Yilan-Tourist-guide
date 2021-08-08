.class public abstract Lorg/locationtech/jts/algorithm/LineIntersector;
.super Ljava/lang/Object;
.source "LineIntersector.java"


# static fields
.field public static final COLLINEAR:I = 0x2

.field public static final COLLINEAR_INTERSECTION:I = 0x2

.field public static final DONT_INTERSECT:I = 0x0

.field public static final DO_INTERSECT:I = 0x1

.field public static final NO_INTERSECTION:I = 0x0

.field public static final POINT_INTERSECTION:I = 0x1


# instance fields
.field protected inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

.field protected intLineIndex:[[I

.field protected intPt:[Lorg/locationtech/jts/geom/Coordinate;

.field protected isProper:Z

.field protected pa:Lorg/locationtech/jts/geom/Coordinate;

.field protected pb:Lorg/locationtech/jts/geom/Coordinate;

.field protected precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field protected result:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    filled-new-array {v3, v3}, [I

    move-result-object v0

    const-class v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    .line 145
    new-array v0, v3, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 162
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v1, v0, v2

    .line 163
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    aput-object v1, v0, v4

    .line 165
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->pa:Lorg/locationtech/jts/geom/Coordinate;

    .line 166
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v4

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->pb:Lorg/locationtech/jts/geom/Coordinate;

    .line 167
    iput v2, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    .line 168
    return-void
.end method

.method public static computeEdgeDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 16
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 96
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 97
    .local v4, "dx":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 99
    .local v6, "dy":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 100
    .local v2, "dist":D
    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 101
    const-wide/16 v2, 0x0

    .line 123
    :cond_0
    :goto_0
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_1
    const/4 v12, 0x1

    :goto_1
    const-string v13, "Bad distance calculation"

    invoke-static {v12, v13}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 124
    return-wide v2

    .line 103
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 104
    cmpl-double v12, v4, v6

    if-lez v12, :cond_3

    .line 105
    move-wide v2, v4

    goto :goto_0

    .line 107
    :cond_3
    move-wide v2, v6

    goto :goto_0

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 111
    .local v8, "pdx":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 112
    .local v10, "pdy":D
    cmpl-double v12, v4, v6

    if-lez v12, :cond_5

    .line 113
    move-wide v2, v8

    .line 118
    :goto_2
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 120
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    .line 115
    :cond_5
    move-wide v2, v10

    goto :goto_2

    .line 123
    .end local v8    # "pdx":D
    .end local v10    # "pdy":D
    :cond_6
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private getTopologySummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "catBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->isEndPoint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " endpoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-boolean v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper:Z

    if-eqz v1, :cond_1

    const-string v1, " proper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->isCollinear()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " collinear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static nonRobustComputeEdgeDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 10
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 136
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v2, v6, v8

    .line 137
    .local v2, "dx":D
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v4, v6, v8

    .line 138
    .local v4, "dy":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 139
    .local v0, "dist":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const-string v7, "Invalid distance calculation"

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 140
    return-wide v0

    .line 139
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected computeIntLineIndex()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 292
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    if-nez v0, :cond_0

    .line 293
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntLineIndex(I)V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntLineIndex(I)V

    .line 297
    :cond_0
    return-void
.end method

.method protected computeIntLineIndex(I)V
    .locals 7
    .param p1, "segmentIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    invoke-virtual {p0, p1, v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->getEdgeDistance(II)D

    move-result-wide v0

    .line 394
    .local v0, "dist0":D
    invoke-virtual {p0, p1, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->getEdgeDistance(II)D

    move-result-wide v2

    .line 395
    .local v2, "dist1":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 396
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v4, v4, p1

    aput v5, v4, v5

    .line 397
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v4, v4, p1

    aput v6, v4, v6

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v4, v4, p1

    aput v6, v4, v5

    .line 401
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v4, v4, p1

    aput v5, v4, v6

    goto :goto_0
.end method

.method protected abstract computeIntersect(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
.end method

.method public abstract computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
.end method

.method public computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "p4"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v1

    aput-object p1, v0, v1

    .line 225
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v1

    aput-object p2, v0, v2

    .line 226
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    aput-object p3, v0, v1

    .line 227
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, v2

    aput-object p4, v0, v2

    .line 228
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersect(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    .line 230
    return-void
.end method

.method public getEdgeDistance(II)D
    .locals 6
    .param p1, "segmentIndex"    # I
    .param p2, "intIndex"    # I

    .prologue
    .line 414
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, p2

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeEdgeDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 416
    .local v0, "dist":D
    return-wide v0
.end method

.method public getEndpoint(II)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "segmentIndex"    # I
    .param p2, "ptIndex"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getIndexAlongSegment(II)I
    .locals 1
    .param p1, "segmentIndex"    # I
    .param p2, "intIndex"    # I

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntLineIndex()V

    .line 389
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "intIndex"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIntersectionAlongSegment(II)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "segmentIndex"    # I
    .param p2, "intIndex"    # I

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntLineIndex()V

    .line 375
    iget-object v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intLineIndex:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntersectionNum()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    return v0
.end method

.method public hasIntersection()Z
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCollinear()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEndPoint()Z
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteriorIntersection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public isInteriorIntersection(I)Z
    .locals 5
    .param p1, "inputLineIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    if-ge v0, v3, :cond_1

    .line 337
    iget-object v3, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, p1

    aget-object v4, v4, v1

    .line 338
    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    :goto_1
    return v1

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 342
    goto :goto_1
.end method

.method public isIntersection(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->result:I

    if-ge v0, v1, :cond_1

    .line 310
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 314
    :goto_1
    return v1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isProper()Z
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMakePrecise(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 0
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 178
    return-void
.end method

.method public setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 0
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v3

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/locationtech/jts/algorithm/LineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    .line 249
    invoke-static {v1, v2}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;->getTopologySummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method
