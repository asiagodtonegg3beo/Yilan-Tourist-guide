.class public Lorg/locationtech/jts/edgegraph/EdgeGraph;
.super Ljava/lang/Object;
.source "EdgeGraph.java"


# instance fields
.field private vertexMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private create(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 2
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->createEdge(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 60
    .local v0, "e0":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {p0, p2}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->createEdge(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    .line 61
    .local v1, "e1":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-static {v0, v1}, Lorg/locationtech/jts/edgegraph/HalfEdge;->init(Lorg/locationtech/jts/edgegraph/HalfEdge;Lorg/locationtech/jts/edgegraph/HalfEdge;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 62
    return-object v0
.end method

.method private insert(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/edgegraph/HalfEdge;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 4
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "eAdj"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->create(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .line 121
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->insert(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 129
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 130
    .local v1, "eAdjDest":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/edgegraph/HalfEdge;->insert(Lorg/locationtech/jts/edgegraph/HalfEdge;)V

    .line 136
    :goto_1
    return-object v0

    .line 126
    .end local v1    # "eAdjDest":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .restart local v1    # "eAdjDest":Lorg/locationtech/jts/edgegraph/HalfEdge;
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static isValidEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p0, "orig"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "dest"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 106
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 4
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 78
    invoke-static {p1, p2}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->isValidEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 95
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 86
    .local v1, "eAdj":Lorg/locationtech/jts/edgegraph/HalfEdge;
    const/4 v2, 0x0

    .line 87
    .local v2, "eSame":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1, p2}, Lorg/locationtech/jts/edgegraph/HalfEdge;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v2

    .line 90
    :cond_2
    if-nez v2, :cond_0

    .line 94
    invoke-direct {p0, p1, p2, v1}, Lorg/locationtech/jts/edgegraph/EdgeGraph;->insert(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/edgegraph/HalfEdge;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    move-object v2, v0

    .line 95
    goto :goto_0
.end method

.method protected createEdge(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 54
    new-instance v0, Lorg/locationtech/jts/edgegraph/HalfEdge;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method

.method public findEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 2
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "dest"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 153
    iget-object v1, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/edgegraph/HalfEdge;

    .line 154
    .local v0, "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/edgegraph/HalfEdge;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v1

    goto :goto_0
.end method

.method public getVertexEdges()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/locationtech/jts/edgegraph/EdgeGraph;->vertexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
