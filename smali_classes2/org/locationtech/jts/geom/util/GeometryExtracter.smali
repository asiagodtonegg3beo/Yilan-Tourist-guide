.class public Lorg/locationtech/jts/geom/util/GeometryExtracter;
.super Ljava/lang/Object;
.source "GeometryExtracter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/GeometryFilter;


# instance fields
.field private clz:Ljava/lang/Class;

.field private comps:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .param p1, "clz"    # Ljava/lang/Class;
    .param p2, "comps"    # Ljava/util/List;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/GeometryExtracter;->clz:Ljava/lang/Class;

    .line 80
    iput-object p2, p0, Lorg/locationtech/jts/geom/util/GeometryExtracter;->comps:Ljava/util/List;

    .line 81
    return-void
.end method

.method public static extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static extract(Lorg/locationtech/jts/geom/Geometry;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "clz"    # Ljava/lang/Class;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->isOfClass(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    :goto_0
    return-object p2

    .line 49
    :cond_1
    instance-of v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryExtracter;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryExtracter;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryFilter;)V

    goto :goto_0
.end method

.method protected static isOfClass(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryExtracter;->clz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryExtracter;->clz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/locationtech/jts/geom/util/GeometryExtracter;->isOfClass(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryExtracter;->comps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    return-void
.end method
