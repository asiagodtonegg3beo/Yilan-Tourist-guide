.class public Lorg/locationtech/jts/geom/util/LineStringExtracter;
.super Ljava/lang/Object;
.source "LineStringExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private comps:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "comps"    # Ljava/util/List;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/LineStringExtracter;->comps:Ljava/util/List;

    .line 86
    return-void
.end method

.method public static getGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-static {p0}, Lorg/locationtech/jts/geom/util/LineStringExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lorg/locationtech/jts/geom/util/LineStringExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLines(Lorg/locationtech/jts/geom/Geometry;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "lines"    # Ljava/util/List;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/locationtech/jts/geom/LineString;

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
    new-instance v0, Lorg/locationtech/jts/geom/util/LineStringExtracter;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/util/LineStringExtracter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 90
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/util/LineStringExtracter;->comps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method
