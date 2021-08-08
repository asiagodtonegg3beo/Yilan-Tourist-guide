.class public Lorg/locationtech/jts/geom/util/PointExtracter;
.super Ljava/lang/Object;
.source "PointExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private pts:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "pts"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/PointExtracter;->pts:Ljava/util/List;

    .line 74
    return-void
.end method

.method public static getPoints(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 61
    instance-of v0, p0, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lorg/locationtech/jts/geom/util/PointExtracter;->getPoints(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPoints(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    :goto_0
    return-object p1

    .line 46
    :cond_1
    instance-of v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lorg/locationtech/jts/geom/util/PointExtracter;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/util/PointExtracter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 78
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/util/PointExtracter;->pts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method
