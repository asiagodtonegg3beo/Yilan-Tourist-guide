.class public Lorg/locationtech/jts/awt/IdentityPointTransformation;
.super Ljava/lang/Object;
.source "IdentityPointTransformation.java"

# interfaces
.implements Lorg/locationtech/jts/awt/PointTransformation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lorg/locationtech/jts/geom/Coordinate;Ljava/awt/geom/Point2D;)V
    .locals 4
    .param p1, "model"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "view"    # Ljava/awt/geom/Point2D;

    .prologue
    .line 29
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    .line 30
    return-void
.end method
