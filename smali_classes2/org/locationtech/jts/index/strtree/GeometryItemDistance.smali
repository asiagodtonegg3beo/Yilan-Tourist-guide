.class public Lorg/locationtech/jts/index/strtree/GeometryItemDistance;
.super Ljava/lang/Object;
.source "GeometryItemDistance.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/ItemDistance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distance(Lorg/locationtech/jts/index/strtree/ItemBoundable;Lorg/locationtech/jts/index/strtree/ItemBoundable;)D
    .locals 4
    .param p1, "item1"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;
    .param p2, "item2"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .prologue
    .line 38
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 39
    .local v0, "g1":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    .line 40
    .local v1, "g2":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    return-wide v2
.end method
