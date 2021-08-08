.class public Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;
.super Ljava/lang/Object;
.source "LastFoundQuadEdgeLocator.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;


# instance fields
.field private lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

.field private subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V
    .locals 1
    .param p1, "subdiv"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 29
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .line 30
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->init()V

    .line 31
    return-void
.end method

.method private findEdge()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getEdges()Ljava/util/Collection;

    move-result-object v0

    .line 40
    .local v0, "edges":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->findEdge()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 35
    return-void
.end method


# virtual methods
.method public locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 3
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 48
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->isLive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->init()V

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->subdiv:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v1, p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locateFromEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 53
    .local v0, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;->lastEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 54
    return-object v0
.end method
