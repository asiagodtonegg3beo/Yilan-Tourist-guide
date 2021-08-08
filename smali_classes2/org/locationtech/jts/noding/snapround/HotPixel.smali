.class public Lorg/locationtech/jts/noding/snapround/HotPixel;
.super Ljava/lang/Object;
.source "HotPixel.java"


# static fields
.field private static final SAFE_ENV_EXPANSION_FACTOR:D = 0.75


# instance fields
.field private corner:[Lorg/locationtech/jts/geom/Coordinate;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private maxx:D

.field private maxy:D

.field private minx:D

.field private miny:D

.field private originalPt:Lorg/locationtech/jts/geom/Coordinate;

.field private p0Scaled:Lorg/locationtech/jts/geom/Coordinate;

.field private p1Scaled:Lorg/locationtech/jts/geom/Coordinate;

.field private pt:Lorg/locationtech/jts/geom/Coordinate;

.field private ptScaled:Lorg/locationtech/jts/geom/Coordinate;

.field private safeEnv:Lorg/locationtech/jts/geom/Envelope;

.field private scaleFactor:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 6
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "scaleFactor"    # D
    .param p4, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->safeEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 72
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 74
    iput-wide p2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->scaleFactor:D

    .line 75
    iput-object p4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 77
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scale factor must be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/noding/snapround/HotPixel;->scale(D)D

    move-result-wide v2

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {p0, v4, v5}, Lorg/locationtech/jts/noding/snapround/HotPixel;->scale(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 81
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p0Scaled:Lorg/locationtech/jts/geom/Coordinate;

    .line 82
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p1Scaled:Lorg/locationtech/jts/geom/Coordinate;

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/snapround/HotPixel;->initCorners(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 85
    return-void
.end method

.method private copyScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "pScaled"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 155
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->scale(D)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 156
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->scale(D)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 157
    return-void
.end method

.method private initCorners(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 118
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 119
    .local v0, "tolerance":D
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->minx:D

    .line 120
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxx:D

    .line 121
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->miny:D

    .line 122
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxy:D

    .line 124
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x0

    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxx:D

    iget-wide v8, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxy:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v4, v2, v3

    .line 125
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x1

    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->minx:D

    iget-wide v8, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxy:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v4, v2, v3

    .line 126
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x2

    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->minx:D

    iget-wide v8, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->miny:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v4, v2, v3

    .line 127
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x3

    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxx:D

    iget-wide v8, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->miny:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v4, v2, v3

    .line 128
    return-void
.end method

.method private intersectsPixelClosure(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 7
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 262
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 263
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 265
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v5

    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v6

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 267
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, v3, v6

    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 269
    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v2}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 271
    goto :goto_0
.end method

.method private intersectsScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 16
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 161
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 162
    .local v8, "segMinx":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 163
    .local v4, "segMaxx":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 164
    .local v10, "segMiny":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 166
    .local v6, "segMaxy":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxx:D

    cmpg-double v12, v12, v8

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/noding/snapround/HotPixel;->minx:D

    cmpl-double v12, v12, v4

    if-gtz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/noding/snapround/HotPixel;->maxy:D

    cmpg-double v12, v12, v10

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/noding/snapround/HotPixel;->miny:D

    cmpl-double v12, v12, v6

    if-lez v12, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 170
    .local v3, "isOutsidePixelEnv":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 171
    const/4 v2, 0x0

    .line 197
    :goto_1
    return v2

    .line 166
    .end local v3    # "isOutsidePixelEnv":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 172
    .restart local v3    # "isOutsidePixelEnv":Z
    :cond_2
    invoke-direct/range {p0 .. p2}, Lorg/locationtech/jts/noding/snapround/HotPixel;->intersectsToleranceSquare(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 192
    .local v2, "intersects":Z
    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const/4 v12, 0x1

    :goto_2
    const-string v13, "Found bad envelope test"

    invoke-static {v12, v13}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private intersectsToleranceSquare(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 9
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "intersectsLeft":Z
    const/4 v0, 0x0

    .line 227
    .local v0, "intersectsBottom":Z
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v2

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 228
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v2

    .line 230
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v7

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 231
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 234
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v7

    iget-object v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v8

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 235
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 238
    :cond_3
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->corner:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v6, v6, v3

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 239
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    .line 243
    :cond_4
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 246
    goto :goto_0
.end method

.method private scale(D)D
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->scaleFactor:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method


# virtual methods
.method public addSnappedNode(Lorg/locationtech/jts/noding/NodedSegmentString;I)Z
    .locals 3
    .param p1, "segStr"    # Lorg/locationtech/jts/noding/NodedSegmentString;
    .param p2, "segIndex"    # I

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 288
    .local v0, "p0":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 290
    .local v1, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/locationtech/jts/noding/snapround/HotPixel;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersection(Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 295
    const/4 v2, 0x1

    .line 297
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getSafeEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 12

    .prologue
    .line 105
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->safeEnv:Lorg/locationtech/jts/geom/Envelope;

    if-nez v0, :cond_0

    .line 106
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iget-wide v2, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->scaleFactor:D

    div-double v10, v0, v2

    .line 107
    .local v10, "safeTolerance":D
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v2, v10

    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v4, v10

    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v10

    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->originalPt:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/geom/Envelope;-><init>(DDDD)V

    iput-object v1, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->safeEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 113
    .end local v10    # "safeTolerance":D
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->safeEnv:Lorg/locationtech/jts/geom/Envelope;

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->scaleFactor:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/noding/snapround/HotPixel;->intersectsScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p0Scaled:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/noding/snapround/HotPixel;->copyScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 149
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p1Scaled:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, p2, v0}, Lorg/locationtech/jts/noding/snapround/HotPixel;->copyScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 150
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p0Scaled:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/HotPixel;->p1Scaled:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->intersectsScaled(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method
