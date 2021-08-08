.class public abstract Lorg/locationtech/jts/planargraph/PlanarGraph;
.super Ljava/lang/Object;
.source "PlanarGraph.java"


# instance fields
.field protected dirEdges:Ljava/util/Set;

.field protected edges:Ljava/util/Set;

.field protected nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    .line 42
    new-instance v0, Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-direct {v0}, Lorg/locationtech/jts/planargraph/NodeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    .line 49
    return-void
.end method


# virtual methods
.method protected add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "dirEdge"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method protected add(Lorg/locationtech/jts/planargraph/Edge;)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/planargraph/PlanarGraph;->add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/planargraph/PlanarGraph;->add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 85
    return-void
.end method

.method protected add(Lorg/locationtech/jts/planargraph/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/NodeMap;->add(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Node;

    .line 73
    return-void
.end method

.method public contains(Lorg/locationtech/jts/planargraph/DirectedEdge;)Z
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/locationtech/jts/planargraph/Edge;)Z
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dirEdgeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public edgeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public findNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/NodeMap;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    return-object v0
.end method

.method public findNodesOfDegree(I)Ljava/util/List;
    .locals 4
    .param p1, "degree"    # I

    .prologue
    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, "nodesFound":Ljava/util/List;
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/Node;

    .line 214
    .local v1, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 215
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v1    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    return-object v2
.end method

.method public getEdges()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    return-object v0
.end method

.method public getNodes()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/NodeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 2
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 171
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v0

    .line 172
    .local v0, "sym":Lorg/locationtech/jts/planargraph/DirectedEdge;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->setSym(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 174
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/planargraph/Node;->remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 175
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->remove()V

    .line 176
    iget-object v1, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public remove(Lorg/locationtech/jts/planargraph/Edge;)V
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/planargraph/PlanarGraph;->remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/planargraph/Edge;->getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/planargraph/PlanarGraph;->remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 160
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Edge;->remove()V

    .line 162
    return-void
.end method

.method public remove(Lorg/locationtech/jts/planargraph/Node;)V
    .locals 7
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 186
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "outEdges":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 189
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;

    move-result-object v4

    .line 191
    .local v4, "sym":Lorg/locationtech/jts/planargraph/DirectedEdge;
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lorg/locationtech/jts/planargraph/PlanarGraph;->remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 193
    :cond_1
    iget-object v5, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->dirEdges:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v1

    .line 196
    .local v1, "edge":Lorg/locationtech/jts/planargraph/Edge;
    if-eqz v1, :cond_0

    .line 197
    iget-object v5, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->edges:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v1    # "edge":Lorg/locationtech/jts/planargraph/Edge;
    .end local v4    # "sym":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_2
    iget-object v5, p0, Lorg/locationtech/jts/planargraph/PlanarGraph;->nodeMap:Lorg/locationtech/jts/planargraph/NodeMap;

    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/planargraph/NodeMap;->remove(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    .line 203
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->remove()V

    .line 204
    return-void
.end method
