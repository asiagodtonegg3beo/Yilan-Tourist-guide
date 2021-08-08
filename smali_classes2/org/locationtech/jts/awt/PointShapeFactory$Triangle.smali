.class public Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;
.super Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;
.source "PointShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/PointShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triangle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>()V

    .line 203
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>(D)V

    .line 213
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;
    .locals 8
    .param p1, "point"    # Ljava/awt/geom/Point2D;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 224
    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 225
    .local v0, "path":Ljava/awt/geom/GeneralPath;
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    .line 226
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 227
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 228
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Triangle;->size:D

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    .line 230
    return-object v0
.end method
