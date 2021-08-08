.class public Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;
.super Ljava/lang/Object;
.source "ConnectedElementLocationFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private locations:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "locations"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;->locations:Ljava/util/List;

    .line 55
    return-void
.end method

.method public static getLocations(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "locations":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;

    invoke-direct {v1, v0}, Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 59
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/ConnectedElementLocationFilter;->locations:Ljava/util/List;

    new-instance v1, Lorg/locationtech/jts/operation/distance/GeometryLocation;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-void
.end method
