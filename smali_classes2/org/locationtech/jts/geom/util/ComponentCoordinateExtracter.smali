.class public Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;
.super Ljava/lang/Object;
.source "ComponentCoordinateExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryComponentFilter;


# instance fields
.field private coords:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "coords"    # Ljava/util/List;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->coords:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static getCoordinates(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "coords":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;

    invoke-direct {v1, v0}, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 63
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/ComponentCoordinateExtracter;->coords:Ljava/util/List;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    return-void
.end method
