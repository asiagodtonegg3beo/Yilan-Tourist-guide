.class public Lorg/locationtech/jts/geom/util/AffineTransformation;
.super Ljava/lang/Object;
.source "AffineTransformation.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# instance fields
.field private m00:D

.field private m01:D

.field private m02:D

.field private m10:D

.field private m11:D

.field private m12:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToIdentity()Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 256
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual/range {p0 .. p12}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setTransformation(DDDDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 295
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "src0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "src1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "src2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "dest0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "dest1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p6, "dest2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/util/AffineTransformation;)V
    .locals 0
    .param p1, "trans"    # Lorg/locationtech/jts/geom/util/AffineTransformation;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setTransformation(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 306
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .param p1, "matrix"    # [D

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    .line 269
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    .line 270
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 271
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    .line 272
    const/4 v0, 0x4

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    .line 273
    const/4 v0, 0x5

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 274
    return-void
.end method

.method public static reflectionInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 106
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 107
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToReflection(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 108
    return-object v0
.end method

.method public static reflectionInstance(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 10
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D

    .prologue
    .line 91
    new-instance v1, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .local v1, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 92
    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToReflection(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 93
    return-object v1
.end method

.method public static rotationInstance(D)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 4
    .param p0, "theta"    # D

    .prologue
    .line 123
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    return-object v0
.end method

.method public static rotationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p0, "sinTheta"    # D
    .param p2, "cosTheta"    # D

    .prologue
    .line 139
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 140
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToRotation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 141
    return-object v0
.end method

.method public static rotationInstance(DDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 8
    .param p0, "theta"    # D
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 157
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    return-object v0
.end method

.method public static rotationInstance(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 10
    .param p0, "sinTheta"    # D
    .param p2, "cosTheta"    # D
    .param p4, "x"    # D
    .param p6, "y"    # D

    .prologue
    .line 175
    new-instance v1, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .local v1, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 176
    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToRotation(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 177
    return-object v1
.end method

.method public static scaleInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p0, "xScale"    # D
    .param p2, "yScale"    # D

    .prologue
    .line 189
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 190
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToScale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 191
    return-object v0
.end method

.method public static scaleInstance(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 6
    .param p0, "xScale"    # D
    .param p2, "yScale"    # D
    .param p4, "x"    # D
    .param p6, "y"    # D

    .prologue
    .line 205
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 206
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    neg-double v2, p4

    neg-double v4, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 207
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 208
    invoke-virtual {v0, p4, p5, p6, p7}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 209
    return-object v0
.end method

.method public static shearInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p0, "xShear"    # D
    .param p2, "yShear"    # D

    .prologue
    .line 222
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 223
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToShear(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 224
    return-object v0
.end method

.method public static translationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 236
    new-instance v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>()V

    .line 237
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToTranslation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 238
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1091
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1095
    :goto_0
    return-object v1

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere()V

    .line 1095
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 20
    .param p1, "trans"    # Lorg/locationtech/jts/geom/util/AffineTransformation;

    .prologue
    .line 911
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 912
    .local v2, "mp00":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v4, v14, v16

    .line 913
    .local v4, "mp01":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    add-double v6, v14, v16

    .line 914
    .local v6, "mp02":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v8, v14, v16

    .line 915
    .local v8, "mp10":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 916
    .local v10, "mp11":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .line 917
    .local v12, "mp12":D
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    .line 918
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    .line 919
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 920
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    .line 921
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    .line 922
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 923
    return-object p0
.end method

.method public composeBefore(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 20
    .param p1, "trans"    # Lorg/locationtech/jts/geom/util/AffineTransformation;

    .prologue
    .line 942
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 943
    .local v2, "mp00":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v4, v14, v16

    .line 944
    .local v4, "mp01":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    add-double v6, v14, v16

    .line 945
    .local v6, "mp02":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v8, v14, v16

    .line 946
    .local v8, "mp10":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 947
    .local v10, "mp11":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .line 948
    .local v12, "mp12":D
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    .line 949
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    .line 950
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 951
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    .line 952
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    .line 953
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 954
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1053
    if-nez p1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return v1

    .line 1054
    :cond_1
    instance-of v2, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1057
    check-cast v0, Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 1058
    .local v0, "trans":Lorg/locationtech/jts/geom/util/AffineTransformation;
    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    iget-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 0
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    .line 1012
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geom/util/AffineTransformation;->transform(Lorg/locationtech/jts/geom/CoordinateSequence;I)V

    .line 1013
    return-void
.end method

.method public getDeterminant()D
    .locals 6

    .prologue
    .line 421
    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getInverse()Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/geom/util/NoninvertibleTransformationException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->getDeterminant()D

    move-result-wide v16

    .line 467
    .local v16, "det":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_0

    .line 468
    new-instance v2, Lorg/locationtech/jts/geom/util/NoninvertibleTransformationException;

    const-string v3, "Transformation is non-invertible"

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/util/NoninvertibleTransformationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    div-double v4, v2, v16

    .line 471
    .local v4, "im00":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    neg-double v2, v2

    div-double v10, v2, v16

    .line 472
    .local v10, "im10":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    neg-double v2, v2

    div-double v6, v2, v16

    .line 473
    .local v6, "im01":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    div-double v12, v2, v16

    .line 474
    .local v12, "im11":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v2, v2, v18

    div-double v8, v2, v16

    .line 475
    .local v8, "im02":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    move-wide/from16 v18, v0

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v2, v2, v18

    div-double v14, v2, v16

    .line 477
    .local v14, "im12":D
    new-instance v3, Lorg/locationtech/jts/geom/util/AffineTransformation;

    invoke-direct/range {v3 .. v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;-><init>(DDDDDD)V

    return-object v3
.end method

.method public getMatrixEntries()[D
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public isIdentity()Z
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 1038
    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reflect(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 777
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->reflectionInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 778
    return-object p0
.end method

.method public reflect(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D

    .prologue
    .line 762
    invoke-static/range {p1 .. p8}, Lorg/locationtech/jts/geom/util/AffineTransformation;->reflectionInstance(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 763
    return-object p0
.end method

.method public rotate(D)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "theta"    # D

    .prologue
    .line 793
    invoke-static {p1, p2}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(D)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 794
    return-object p0
.end method

.method public rotate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "sinTheta"    # D
    .param p3, "cosTheta"    # D

    .prologue
    .line 809
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 810
    return-object p0
.end method

.method public rotate(DDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "theta"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 827
    invoke-static/range {p1 .. p6}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 828
    return-object p0
.end method

.method public rotate(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "sinTheta"    # D
    .param p3, "cosTheta"    # D
    .param p5, "x"    # D
    .param p7, "y"    # D

    .prologue
    .line 845
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 846
    return-object p0
.end method

.method public scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "xScale"    # D
    .param p3, "yScale"    # D

    .prologue
    .line 860
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scaleInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 861
    return-object p0
.end method

.method public setToIdentity()Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 342
    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 343
    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 344
    return-object p0
.end method

.method public setToReflection(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 558
    const-wide/16 v6, 0x0

    cmpl-double v6, p1, v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v6, p3, v6

    if-nez v6, :cond_0

    .line 559
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Reflection vector must be non-zero"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 566
    :cond_0
    cmpl-double v6, p1, p3

    if-nez v6, :cond_1

    .line 567
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    .line 568
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    .line 569
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 570
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    .line 571
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    .line 572
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 585
    :goto_0
    return-object p0

    .line 577
    :cond_1
    mul-double v6, p1, p1

    mul-double v8, p3, p3

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 578
    .local v2, "d":D
    div-double v4, p3, v2

    .line 579
    .local v4, "sin":D
    div-double v0, p1, v2

    .line 580
    .local v0, "cos":D
    neg-double v6, v4

    invoke-virtual {p0, v6, v7, v0, v1}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 582
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 584
    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    goto :goto_0
.end method

.method public setToReflection(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 17
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D

    .prologue
    .line 517
    cmpl-double v12, p1, p5

    if-nez v12, :cond_0

    cmpl-double v12, p3, p7

    if-nez v12, :cond_0

    .line 518
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Reflection line points must be distinct"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 521
    :cond_0
    move-wide/from16 v0, p1

    neg-double v12, v0

    move-wide/from16 v0, p3

    neg-double v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToTranslation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 524
    sub-double v6, p5, p1

    .line 525
    .local v6, "dx":D
    sub-double v8, p7, p3

    .line 526
    .local v8, "dy":D
    mul-double v12, v6, v6

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 527
    .local v4, "d":D
    div-double v10, v8, v4

    .line 528
    .local v10, "sin":D
    div-double v2, v6, v4

    .line 529
    .local v2, "cos":D
    neg-double v12, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 531
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/locationtech/jts/geom/util/AffineTransformation;->scale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 533
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->rotate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 535
    invoke-virtual/range {p0 .. p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 536
    return-object p0
.end method

.method public setToReflectionBasic(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 23
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D

    .prologue
    .line 490
    cmpl-double v18, p1, p5

    if-nez v18, :cond_0

    cmpl-double v18, p3, p7

    if-nez v18, :cond_0

    .line 491
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Reflection line points must be distinct"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 493
    :cond_0
    sub-double v12, p5, p1

    .line 494
    .local v12, "dx":D
    sub-double v14, p7, p3

    .line 495
    .local v14, "dy":D
    mul-double v18, v12, v12

    mul-double v20, v14, v14

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 496
    .local v10, "d":D
    div-double v16, v14, v10

    .line 497
    .local v16, "sin":D
    div-double v6, v12, v10

    .line 498
    .local v6, "cos":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v16

    mul-double v8, v18, v6

    .line 499
    .local v8, "cs2":D
    mul-double v18, v6, v6

    mul-double v20, v16, v16

    sub-double v4, v18, v20

    .line 500
    .local v4, "c2s2":D
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 501
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    neg-double v0, v4

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 502
    return-object p0
.end method

.method public setToRotation(D)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 5
    .param p1, "theta"    # D

    .prologue
    .line 606
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToRotation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 607
    return-object p0
.end method

.method public setToRotation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 5
    .param p1, "sinTheta"    # D
    .param p3, "cosTheta"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 627
    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    neg-double v0, p1

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 628
    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 629
    return-object p0
.end method

.method public setToRotation(DDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 11
    .param p1, "theta"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 653
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Lorg/locationtech/jts/geom/util/AffineTransformation;->setToRotation(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 654
    return-object p0
.end method

.method public setToRotation(DDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 5
    .param p1, "sinTheta"    # D
    .param p3, "cosTheta"    # D
    .param p5, "x"    # D
    .param p7, "y"    # D

    .prologue
    .line 678
    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    neg-double v0, p1

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    mul-double v0, p5, p3

    sub-double v0, p5, v0

    mul-double v2, p7, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 679
    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    mul-double v0, p5, p1

    sub-double v0, p7, v0

    mul-double v2, p7, p3

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 680
    return-object p0
.end method

.method public setToScale(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 3
    .param p1, "xScale"    # D
    .param p3, "yScale"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 699
    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 700
    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 701
    return-object p0
.end method

.method public setToShear(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 5
    .param p1, "xShear"    # D
    .param p3, "yShear"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 724
    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 725
    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 726
    return-object p0
.end method

.method public setToTranslation(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 5
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 744
    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 745
    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 746
    return-object p0
.end method

.method public setTransformation(DDDDDD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D

    .prologue
    .line 365
    iput-wide p1, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    .line 366
    iput-wide p3, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    .line 367
    iput-wide p5, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 368
    iput-wide p7, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    .line 369
    iput-wide p9, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    .line 370
    iput-wide p11, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 371
    return-object p0
.end method

.method public setTransformation(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 2
    .param p1, "trans"    # Lorg/locationtech/jts/geom/util/AffineTransformation;

    .prologue
    .line 382
    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    .line 383
    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iget-wide v0, p1, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    iput-wide v0, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    .line 384
    return-object p0
.end method

.method public shear(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "xShear"    # D
    .param p3, "yShear"    # D

    .prologue
    .line 875
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->shearInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 876
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AffineTransformation[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "src"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 968
    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    add-double v0, v4, v6

    .line 969
    .local v0, "xp":D
    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    add-double v2, v4, v6

    .line 970
    .local v2, "yp":D
    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 971
    iput-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 972
    return-object p2
.end method

.method public transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 984
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 985
    .local v0, "g2":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 986
    return-object v0
.end method

.method public transform(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 12
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 998
    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m00:D

    invoke-interface {p1, p2, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m01:D

    invoke-interface {p1, p2, v11}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m02:D

    add-double v0, v4, v6

    .line 999
    .local v0, "xp":D
    iget-wide v4, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m10:D

    invoke-interface {p1, p2, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m11:D

    invoke-interface {p1, p2, v11}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/locationtech/jts/geom/util/AffineTransformation;->m12:D

    add-double v2, v4, v6

    .line 1000
    .local v2, "yp":D
    invoke-interface {p1, p2, v10, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 1001
    invoke-interface {p1, p2, v11, v2, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    .line 1002
    return-void
.end method

.method public translate(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 890
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/util/AffineTransformation;->translationInstance(DD)Lorg/locationtech/jts/geom/util/AffineTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/util/AffineTransformation;->compose(Lorg/locationtech/jts/geom/util/AffineTransformation;)Lorg/locationtech/jts/geom/util/AffineTransformation;

    .line 891
    return-object p0
.end method
