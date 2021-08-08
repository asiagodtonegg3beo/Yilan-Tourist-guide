.class public Lorg/locationtech/jts/awt/PointShapeFactory$Cross;
.super Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;
.source "PointShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/PointShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cross"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>()V

    .line 281
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>(D)V

    .line 291
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;
    .locals 18
    .param p1, "point"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-float v3, v12

    .line 303
    .local v3, "x1":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-float v4, v12

    .line 304
    .local v4, "x2":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v5, v12

    .line 305
    .local v5, "x3":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v6, v12

    .line 307
    .local v6, "x4":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-float v7, v12

    .line 308
    .local v7, "y1":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-float v8, v12

    .line 309
    .local v8, "y2":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v9, v12

    .line 310
    .local v9, "y3":F
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/awt/PointShapeFactory$Cross;->size:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v10, v12

    .line 312
    .local v10, "y4":F
    new-instance v2, Ljava/awt/geom/GeneralPath;

    invoke-direct {v2}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 313
    .local v2, "path":Ljava/awt/geom/GeneralPath;
    invoke-virtual {v2, v4, v7}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 314
    invoke-virtual {v2, v5, v7}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 315
    invoke-virtual {v2, v5, v8}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 316
    invoke-virtual {v2, v6, v8}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 317
    invoke-virtual {v2, v6, v9}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 318
    invoke-virtual {v2, v5, v9}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 319
    invoke-virtual {v2, v5, v10}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 320
    invoke-virtual {v2, v4, v10}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 321
    invoke-virtual {v2, v4, v9}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 322
    invoke-virtual {v2, v3, v9}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 323
    invoke-virtual {v2, v3, v8}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 324
    invoke-virtual {v2, v4, v8}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 325
    invoke-virtual {v2, v4, v7}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 327
    return-object v2
.end method
