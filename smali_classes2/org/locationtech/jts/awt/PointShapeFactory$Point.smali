.class public Lorg/locationtech/jts/awt/PointShapeFactory$Point;
.super Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;
.source "PointShapeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/awt/PointShapeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "size"    # D

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/awt/PointShapeFactory$BasePointShapeFactory;-><init>(D)V

    .line 93
    return-void
.end method


# virtual methods
.method public createPoint(Ljava/awt/geom/Point2D;)Ljava/awt/Shape;
    .locals 10
    .param p1, "point"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 103
    new-instance v1, Ljava/awt/geom/Line2D$Double;

    .line 105
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    .line 106
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    .line 107
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    .line 108
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 109
    .local v1, "pointMarker":Ljava/awt/geom/Line2D$Double;
    return-object v1
.end method
