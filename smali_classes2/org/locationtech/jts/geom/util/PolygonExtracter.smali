.class public Lorg/locationtech/jts/geom/util/PolygonExtracter;
.super Ljava/lang/Object;
.source "PolygonExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private comps:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "comps"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/PolygonExtracter;->comps:Ljava/util/List;

    .line 70
    return-void
.end method

.method public static getPolygons(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lorg/locationtech/jts/geom/util/PolygonExtracter;->getPolygons(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPolygons(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 41
    instance-of v0, p0, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_0
    return-object p1

    .line 44
    :cond_1
    instance-of v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lorg/locationtech/jts/geom/util/PolygonExtracter;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/util/PolygonExtracter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 74
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/util/PolygonExtracter;->comps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method
