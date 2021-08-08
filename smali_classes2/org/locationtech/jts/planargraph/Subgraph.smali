.class public Lorg/locationtech/jts/planargraph/Subgraph;
.super Ljava/lang/Object;
.source "Subgraph.java"


# instance fields
.field protected dirEdges:Ljava/util/List;

.field protected edges:Ljava/util/Set;

.field protected nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

.field protected parentGraph:Lorg/locationtech/jts/planargraph/PlanarGraph;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/planargraph/PlanarGraph;)V
    .locals 1
    .param p1, "parentGraph"    # Lorg/locationtech/jts/planargraph/PlanarGraph;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->edges:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->dirEdges:Ljava/util/List;

    .line 35
    new-instance v0, Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-direct {v0}, Lorg/locationtech/jts/planargraph/NodeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/Subgraph;->parentGraph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    .line 44
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/planargraph/Edge;)V
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->dirEdges:Ljava/util/List;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->dirEdges:Ljava/util/List;

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/planargraph/NodeMap;->add(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Node;

    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/planargraph/NodeMap;->add(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Node;

    goto :goto_0
.end method

.method public contains(Lorg/locationtech/jts/planargraph/Edge;)Z
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dirEdgeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->dirEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public edgeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->edges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/locationtech/jts/planargraph/PlanarGraph;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->parentGraph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    return-object v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Subgraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
