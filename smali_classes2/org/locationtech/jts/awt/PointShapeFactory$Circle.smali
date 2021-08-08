.class public Lorg/locationtech/jts/awt/PointShapeFactory$Circle;
.super Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;
.source "PointShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/PointShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>()V

    .line 241
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>(D)V

    .line 251
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;
    .locals 12
    .param p1, "point"    # Ljava/awt/geom/Point2D;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v2, 0x0

    .line 261
    new-instance v1, Ljava/awt/geom/Ellipse2D$Double;

    iget-wide v6, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Circle;->size:D

    iget-wide v8, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Circle;->size:D

    move-wide v4, v2

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    .line 267
    .local v1, "pointMarker":Ljava/awt/geom/Ellipse2D$Double;
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Circle;->size:D

    div-double/2addr v4, v10

    sub-double/2addr v2, v4

    iput-wide v2, v1, Ljava/awt/geom/Ellipse2D$Double;->x:D

    .line 268
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/locationtech/jts/awt/PointShapeFactory$Circle;->size:D

    div-double/2addr v4, v10

    sub-double/2addr v2, v4

    iput-wide v2, v1, Ljava/awt/geom/Ellipse2D$Double;->y:D

    .line 270
    return-object v1
.end method
