.class public Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;
.super Ljava/lang/Object;
.source "IncrementalDelaunayTriangulator.java"


# instance fields
.field private isUsingTolerance:Z

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V
    .locals 6
    .param p1, "subdiv"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->isUsingTolerance:Z

    .line 44
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 45
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTolerance()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->isUsingTolerance:Z

    .line 47
    return-void
.end method


# virtual methods
.method public insertSite(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 7
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 83
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v4, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 85
    .local v1, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v4, v1, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isVertexOfEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 116
    :cond_0
    return-object v0

    .line 89
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isOnEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 93
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->delete(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 100
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 101
    .local v0, "base":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-static {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 102
    move-object v2, v0

    .line 104
    .local v2, "startEdge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_3
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->connect(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 111
    :goto_0
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    .line 112
    .local v3, "t":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->rightOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v5

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->isInCircle(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    invoke-static {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->swap(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 114
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    if-eq v4, v2, :cond_0

    .line 118
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    goto :goto_0
.end method

.method public insertSites(Ljava/util/Collection;)V
    .locals 3
    .param p1, "vertices"    # Ljava/util/Collection;

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 62
    .local v1, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/triangulate/IncrementalDelaunayTriangulator;->insertSite(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    goto :goto_0

    .line 64
    .end local v1    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_0
    return-void
.end method
