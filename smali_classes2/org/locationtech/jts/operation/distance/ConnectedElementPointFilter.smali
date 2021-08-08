.class public Lorg/locationtech/jts/operation/distance/ConnectedElementPointFilter;
.super Ljava/lang/Object;
.source "ConnectedElementPointFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private pts:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "pts"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/ConnectedElementPointFilter;->pts:Ljava/util/List;

    .line 53
    return-void
.end method

.method public static getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "pts":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/operation/distance/ConnectedElementPointFilter;

    invoke-direct {v1, v0}, Lorg/locationtech/jts/operation/distance/ConnectedElementPointFilter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/ConnectedElementPointFilter;->pts:Ljava/util/List;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    return-void
.end method
