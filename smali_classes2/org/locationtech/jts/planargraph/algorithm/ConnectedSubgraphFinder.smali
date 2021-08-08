.class public Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;
.super Ljava/lang/Object;
.source "ConnectedSubgraphFinder.java"


# instance fields
.field private graph:Lorg/locationtech/jts/planargraph/PlanarGraph;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/planargraph/PlanarGraph;)V
    .locals 0
    .param p1, "graph"    # Lorg/locationtech/jts/planargraph/PlanarGraph;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->graph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    .line 40
    return-void
.end method

.method private addEdges(Lorg/locationtech/jts/planargraph/Node;Ljava/util/Stack;Lorg/locationtech/jts/planargraph/Subgraph;)V
    .locals 4
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;
    .param p2, "nodeStack"    # Ljava/util/Stack;
    .param p3, "subgraph"    # Lorg/locationtech/jts/planargraph/Subgraph;

    .prologue
    .line 87
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/planargraph/Node;->setVisited(Z)V

    .line 88
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 90
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/locationtech/jts/planargraph/Subgraph;->add(Lorg/locationtech/jts/planargraph/Edge;)V

    .line 91
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    .line 92
    .local v2, "toNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Node;->isVisited()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v2    # "toNode":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    return-void
.end method

.method private addReachable(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Subgraph;)V
    .locals 3
    .param p1, "startNode"    # Lorg/locationtech/jts/planargraph/Node;
    .param p2, "subgraph"    # Lorg/locationtech/jts/planargraph/Subgraph;

    .prologue
    .line 72
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 73
    .local v1, "nodeStack":Ljava/util/Stack;
    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/Node;

    .line 76
    .local v0, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-direct {p0, v0, v1, p2}, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->addEdges(Lorg/locationtech/jts/planargraph/Node;Ljava/util/Stack;Lorg/locationtech/jts/planargraph/Subgraph;)V

    goto :goto_0

    .line 78
    .end local v0    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_0
    return-void
.end method

.method private findSubgraph(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Subgraph;
    .locals 2
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/planargraph/Subgraph;

    iget-object v1, p0, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->graph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/planargraph/Subgraph;-><init>(Lorg/locationtech/jts/planargraph/PlanarGraph;)V

    .line 60
    .local v0, "subgraph":Lorg/locationtech/jts/planargraph/Subgraph;
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->addReachable(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Subgraph;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public getConnectedSubgraphs()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "subgraphs":Ljava/util/List;
    iget-object v4, p0, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->graph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/locationtech/jts/planargraph/GraphComponent;->setVisited(Ljava/util/Iterator;Z)V

    .line 47
    iget-object v4, p0, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->graph:Lorg/locationtech/jts/planargraph/PlanarGraph;

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/PlanarGraph;->edgeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/Edge;

    .line 49
    .local v0, "e":Lorg/locationtech/jts/planargraph/Edge;
    invoke-virtual {v0, v5}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v2

    .line 50
    .local v2, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Node;->isVisited()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-direct {p0, v2}, Lorg/locationtech/jts/planargraph/algorithm/ConnectedSubgraphFinder;->findSubgraph(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Subgraph;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "e":Lorg/locationtech/jts/planargraph/Edge;
    .end local v2    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    return-object v3
.end method
