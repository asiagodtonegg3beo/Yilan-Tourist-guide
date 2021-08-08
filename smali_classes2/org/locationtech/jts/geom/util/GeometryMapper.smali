.class public Lorg/locationtech/jts/geom/util/GeometryMapper;
.super Ljava/lang/Object;
.source "GeometryMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Ljava/util/Collection;Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)Ljava/util/Collection;
    .locals 5
    .param p0, "geoms"    # Ljava/util/Collection;
    .param p1, "op"    # Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .prologue
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "mapped":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 60
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-interface {p1, v0}, Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;->map(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 61
    .local v1, "gr":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v1    # "gr":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    return-object v3
.end method

.method public static map(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "op"    # Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "mapped":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;->map(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 49
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    return-object v3
.end method
