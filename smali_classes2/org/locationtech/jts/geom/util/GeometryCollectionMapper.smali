.class public Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;
.super Ljava/lang/Object;
.source "GeometryCollectionMapper.java"


# instance fields
.field private mapOp:Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)V
    .locals 1
    .param p1, "mapOp"    # Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;->mapOp:Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;->mapOp:Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .line 43
    return-void
.end method

.method public static map(Lorg/locationtech/jts/geom/GeometryCollection;Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 2
    .param p0, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;
    .param p1, "op"    # Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    .prologue
    .line 35
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;-><init>(Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;)V

    .line 36
    .local v0, "mapper":Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;->map(Lorg/locationtech/jts/geom/GeometryCollection;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public map(Lorg/locationtech/jts/geom/GeometryCollection;)Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 5
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "mapped":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 49
    iget-object v3, p0, Lorg/locationtech/jts/geom/util/GeometryCollectionMapper;->mapOp:Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/locationtech/jts/geom/util/GeometryMapper$MapOp;->map(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 50
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v3

    .line 54
    invoke-static {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v3

    return-object v3
.end method
