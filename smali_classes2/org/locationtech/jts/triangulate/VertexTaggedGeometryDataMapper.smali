.class public Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;
.super Ljava/lang/Object;
.source "VertexTaggedGeometryDataMapper.java"


# instance fields
.field private coordDataMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->coordDataMap:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private loadVertices([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V
    .locals 3
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->coordDataMap:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getCoordinates()Ljava/util/List;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->coordDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public loadSourceGeometries(Ljava/util/Collection;)V
    .locals 4
    .param p1, "geoms"    # Ljava/util/Collection;

    .prologue
    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 52
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->loadVertices([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public loadSourceGeometries(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "geomColl"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 60
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->loadVertices([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public transferData(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "targetGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 89
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 90
    .local v2, "vertexKey":Lorg/locationtech/jts/geom/Coordinate;
    if-nez v2, :cond_0

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/VertexTaggedGeometryDataMapper;->coordDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/Geometry;->setUserData(Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v2    # "vertexKey":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-void
.end method
