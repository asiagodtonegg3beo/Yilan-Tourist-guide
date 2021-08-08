.class public Lorg/locationtech/jts/triangulate/quadedge/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# static fields
.field public static final BEHIND:I = 0x3

.field public static final BETWEEN:I = 0x4

.field public static final BEYOND:I = 0x2

.field public static final DESTINATION:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final ORIGIN:I = 0x5

.field public static final RIGHT:I = 0x1


# instance fields
.field private p:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "_x"    # D
    .param p3, "_y"    # D

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 52
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "_x"    # D
    .param p3, "_y"    # D
    .param p5, "_z"    # D

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    iput-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "_p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 60
    return-void
.end method

.method private bisector(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/algorithm/HCoordinate;
    .locals 14
    .param p1, "a"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "b"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 234
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v6

    sub-double v10, v4, v6

    .line 235
    .local v10, "dx":D
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v6

    sub-double v12, v4, v6

    .line 236
    .local v12, "dy":D
    new-instance v1, Lorg/locationtech/jts/algorithm/HCoordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v10, v6

    add-double v2, v4, v6

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v12, v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(DDD)V

    .line 237
    .local v1, "l1":Lorg/locationtech/jts/algorithm/HCoordinate;
    new-instance v3, Lorg/locationtech/jts/algorithm/HCoordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    sub-double/2addr v4, v12

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v10, v6

    add-double/2addr v4, v6

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v6

    add-double/2addr v6, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v12, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(DDD)V

    .line 238
    .local v3, "l2":Lorg/locationtech/jts/algorithm/HCoordinate;
    new-instance v0, Lorg/locationtech/jts/algorithm/HCoordinate;

    invoke-direct {v0, v1, v3}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(Lorg/locationtech/jts/algorithm/HCoordinate;Lorg/locationtech/jts/algorithm/HCoordinate;)V

    return-object v0
.end method

.method private distance(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D
    .locals 8
    .param p1, "v1"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "v2"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 242
    invoke-virtual {p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 243
    invoke-virtual {p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static interpolateZ(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 12
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 367
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    .line 368
    .local v6, "segLen":D
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 369
    .local v2, "ptLen":D
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double v0, v8, v10

    .line 370
    .local v0, "dz":D
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    div-double v10, v2, v6

    mul-double/2addr v10, v0

    add-double v4, v8, v10

    .line 371
    .local v4, "pz":D
    return-wide v4
.end method

.method public static interpolateZ(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 32
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "v0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "v1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "v2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 343
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    .line 344
    .local v20, "x0":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 345
    .local v22, "y0":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v2, v26, v20

    .line 346
    .local v2, "a":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v4, v26, v20

    .line 347
    .local v4, "b":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v6, v26, v22

    .line 348
    .local v6, "c":D
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v8, v26, v22

    .line 349
    .local v8, "d":D
    mul-double v26, v2, v8

    mul-double v28, v4, v6

    sub-double v10, v26, v28

    .line 350
    .local v10, "det":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    sub-double v12, v26, v20

    .line 351
    .local v12, "dx":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v26, v0

    sub-double v14, v26, v22

    .line 352
    .local v14, "dy":D
    mul-double v26, v8, v12

    mul-double v28, v4, v14

    sub-double v26, v26, v28

    div-double v16, v26, v10

    .line 353
    .local v16, "t":D
    neg-double v0, v6

    move-wide/from16 v26, v0

    mul-double v26, v26, v12

    mul-double v28, v2, v14

    add-double v26, v26, v28

    div-double v18, v26, v10

    .line 354
    .local v18, "u":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v28, v28, v16

    add-double v26, v26, v28

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v28, v28, v18

    add-double v24, v26, v28

    .line 355
    .local v24, "z":D
    return-wide v24
.end method


# virtual methods
.method public circleCenter(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 12
    .param p1, "b"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "c"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 292
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v10

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    .line 294
    .local v0, "a":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->bisector(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/algorithm/HCoordinate;

    move-result-object v1

    .line 296
    .local v1, "cab":Lorg/locationtech/jts/algorithm/HCoordinate;
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->bisector(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/algorithm/HCoordinate;

    move-result-object v2

    .line 298
    .local v2, "cbc":Lorg/locationtech/jts/algorithm/HCoordinate;
    new-instance v5, Lorg/locationtech/jts/algorithm/HCoordinate;

    invoke-direct {v5, v1, v2}, Lorg/locationtech/jts/algorithm/HCoordinate;-><init>(Lorg/locationtech/jts/algorithm/HCoordinate;Lorg/locationtech/jts/algorithm/HCoordinate;)V

    .line 299
    .local v5, "hcc":Lorg/locationtech/jts/algorithm/HCoordinate;
    const/4 v3, 0x0

    .line 301
    .local v3, "cc":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :try_start_0
    new-instance v4, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/HCoordinate;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/HCoordinate;->getY()D

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V
    :try_end_0
    .catch Lorg/locationtech/jts/algorithm/NotRepresentableException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "cc":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .local v4, "cc":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    move-object v3, v4

    .line 306
    .end local v4    # "cc":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .restart local v3    # "cc":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :goto_0
    return-object v3

    .line 302
    :catch_0
    move-exception v6

    .line 303
    .local v6, "nre":Lorg/locationtech/jts/algorithm/NotRepresentableException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  b: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  c: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public circumRadiusRatio(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D
    .locals 10
    .param p1, "b"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "c"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->circleCenter(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    .line 258
    .local v6, "x":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-direct {p0, v6, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->distance(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D

    move-result-wide v4

    .line 259
    .local v4, "radius":D
    invoke-direct {p0, p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->distance(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D

    move-result-wide v0

    .line 260
    .local v0, "edgeLength":D
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->distance(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D

    move-result-wide v2

    .line 261
    .local v2, "el":D
    cmpg-double v7, v2, v0

    if-gez v7, :cond_0

    .line 262
    move-wide v0, v2

    .line 264
    :cond_0
    invoke-direct {p0, p2, p0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->distance(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D

    move-result-wide v2

    .line 265
    cmpg-double v7, v2, v0

    if-gez v7, :cond_1

    .line 266
    move-wide v0, v2

    .line 268
    :cond_1
    div-double v8, v4, v0

    return-wide v8
.end method

.method public classify(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)I
    .locals 12
    .param p1, "p0"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "p1"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    const-wide/16 v10, 0x0

    .line 103
    move-object v2, p0

    .line 104
    .local v2, "p2":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->sub(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    .line 105
    .local v0, "a":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {v2, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->sub(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    .line 106
    .local v1, "b":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->crossProduct(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D

    move-result-wide v4

    .line 107
    .local v4, "sa":D
    cmpl-double v3, v4, v10

    if-lez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    .line 119
    :goto_0
    return v3

    .line 109
    :cond_0
    cmpg-double v3, v4, v10

    if-gez v3, :cond_1

    .line 110
    const/4 v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpg-double v3, v6, v10

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpg-double v3, v6, v10

    if-gez v3, :cond_3

    .line 112
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->magn()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->magn()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_4

    .line 114
    const/4 v3, 0x2

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    const/4 v3, 0x5

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p2, v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 118
    const/4 v3, 0x6

    goto :goto_0

    .line 119
    :cond_6
    const/4 v3, 0x4

    goto :goto_0
.end method

.method cross()Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 6

    .prologue
    .line 169
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v4, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    return-object v0
.end method

.method crossProduct(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method dot(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z
    .locals 4
    .param p1, "_x"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;D)Z
    .locals 2
    .param p1, "_x"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "tolerance"    # D

    .prologue
    .line 95
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    return-wide v0
.end method

.method public interpolateZValue(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)D
    .locals 32
    .param p1, "v0"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "v1"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p3, "v2"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 314
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v20

    .line 315
    .local v20, "x0":D
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v22

    .line 316
    .local v22, "y0":D
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v26

    sub-double v2, v26, v20

    .line 317
    .local v2, "a":D
    invoke-virtual/range {p3 .. p3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v26

    sub-double v4, v26, v20

    .line 318
    .local v4, "b":D
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v26

    sub-double v6, v26, v22

    .line 319
    .local v6, "c":D
    invoke-virtual/range {p3 .. p3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v26

    sub-double v8, v26, v22

    .line 320
    .local v8, "d":D
    mul-double v26, v2, v8

    mul-double v28, v4, v6

    sub-double v10, v26, v28

    .line 321
    .local v10, "det":D
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v26

    sub-double v12, v26, v20

    .line 322
    .local v12, "dx":D
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v26

    sub-double v14, v26, v22

    .line 323
    .local v14, "dy":D
    mul-double v26, v8, v12

    mul-double v28, v4, v14

    sub-double v26, v26, v28

    div-double v16, v26, v10

    .line 324
    .local v16, "t":D
    neg-double v0, v6

    move-wide/from16 v26, v0

    mul-double v26, v26, v12

    mul-double v28, v2, v14

    add-double v26, v26, v28

    div-double v18, v26, v10

    .line 325
    .local v18, "u":D
    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v26

    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v30

    sub-double v28, v28, v30

    mul-double v28, v28, v16

    add-double v26, v26, v28

    invoke-virtual/range {p3 .. p3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v30

    sub-double v28, v28, v30

    mul-double v28, v28, v18

    add-double v24, v26, v28

    .line 326
    .local v24, "z":D
    return-wide v24
.end method

.method public final isCCW(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z
    .locals 8
    .param p1, "b"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "c"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 215
    iget-object v0, p1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iget-object v2, p2, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    iget-object v4, p2, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCircle(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z
    .locals 4
    .param p1, "a"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "b"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p3, "c"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 188
    iget-object v0, p1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p2, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p3, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->isInCircleRobust(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method public final leftOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 229
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->isCCW(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v0

    return v0
.end method

.method magn()D
    .locals 6

    .prologue
    .line 164
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public midPoint(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 12
    .param p1, "a"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 278
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v8

    add-double/2addr v0, v8

    div-double v2, v0, v10

    .line 279
    .local v2, "xm":D
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v8

    add-double/2addr v0, v8

    div-double v4, v0, v10

    .line 280
    .local v4, "ym":D
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getZ()D

    move-result-wide v8

    add-double/2addr v0, v8

    div-double v6, v0, v10

    .line 281
    .local v6, "zm":D
    new-instance v1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DDD)V

    return-object v1
.end method

.method public final rightOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 225
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->isCCW(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v0

    return v0
.end method

.method public setZ(D)V
    .locals 1
    .param p1, "_z"    # D

    .prologue
    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iput-wide p1, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 76
    return-void
.end method

.method sub(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 8
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 159
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    return-object v0
.end method

.method sum(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 8
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 154
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    return-object v0
.end method

.method times(D)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 7
    .param p1, "c"    # D

    .prologue
    .line 149
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v4, p1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POINT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
