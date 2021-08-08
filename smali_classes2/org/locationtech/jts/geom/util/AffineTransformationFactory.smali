.class public Lorg/locationtech/jts/geom/util/AffineTransformationFactory;
.super Ljava/lang/Object;
.source "AffineTransformationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromBaseLines(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 18
    .param p0, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "src1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "dest1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 157
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v12, v14

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-direct {v6, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 159
    .local v6, "rotPt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v6}, Lorg/locationtech/jts/algorithm/Angle;->angleBetweenOriented(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 161
    .local v2, "ang":D
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 162
    .local v10, "srcDist":D
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 165
    .local v4, "destDist":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_0

    .line 166
    new-instance v7, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v7}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 175
    :goto_0
    return-object v7

    .line 168
    :cond_0
    div-double v8, v4, v10

    .line 170
    .local v8, "scale":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    neg-double v14, v14

    invoke-static {v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v7

    .line 172
    .local v7, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v7, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(D)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 173
    invoke-virtual {v7, v8, v9, v8, v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 174
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v7, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    goto :goto_0
.end method

.method public static createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 8
    .param p0, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 99
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v4, v6

    .line 100
    .local v0, "dx":D
    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v4, v6

    .line 101
    .local v2, "dy":D
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v4

    return-object v4
.end method

.method public static createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 18
    .param p0, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "src1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "dest1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 65
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-direct {v6, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    .line 67
    .local v6, "rotPt":Lorg/locationtech/jts/geom/Coordinate;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v6}, Lorg/locationtech/jts/algorithm/Angle;->angleBetweenOriented(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 69
    .local v2, "ang":D
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v10

    .line 70
    .local v10, "srcDist":D
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 72
    .local v4, "destDist":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_0

    .line 73
    const/4 v7, 0x0

    .line 82
    :goto_0
    return-object v7

    .line 75
    :cond_0
    div-double v8, v4, v10

    .line 77
    .local v8, "scale":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    neg-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    neg-double v14, v14

    invoke-static {v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v7

    .line 79
    .local v7, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v7, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(D)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 80
    invoke-virtual {v7, v8, v9, v8, v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 81
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v7, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    goto :goto_0
.end method

.method public static createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 7
    .param p0, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "src1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "src2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "dest1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "dest2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 43
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 45
    .local v0, "builder":Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/util/AffineTransformationBuilder;->getTransformation()Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v1

    return-object v1
.end method

.method public static createFromControlVectors([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 6
    .param p0, "src"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "dest"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src and Dest arrays are not the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    array-length v0, p0

    if-gtz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few control points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many control points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    array-length v0, p0

    if-ne v0, v4, :cond_3

    .line 128
    aget-object v0, p0, v3

    aget-object v1, p1, v3

    invoke-static {v0, v1}, Lorg/locationtech/jts/geom/util/AffineTransformationFactory;->createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_3
    array-length v0, p0

    if-ne v0, v5, :cond_4

    .line 130
    aget-object v0, p0, v3

    aget-object v1, p0, v4

    aget-object v2, p1, v3

    aget-object v3, p1, v4

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformationFactory;->createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_4
    aget-object v0, p0, v3

    aget-object v1, p0, v4

    aget-object v2, p0, v5

    aget-object v3, p1, v3

    aget-object v4, p1, v4

    aget-object v5, p1, v5

    invoke-static/range {v0 .. v5}, Lorg/locationtech/jts/geom/util/AffineTransformationFactory;->createFromControlVectors(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    goto :goto_0
.end method
