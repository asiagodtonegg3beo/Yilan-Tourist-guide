.class Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
.super Ljava/lang/Object;
.source "BufferSubgraph.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private dirEdgeList:Ljava/util/List;

.field private env:Lorg/locationtech/jts/geom/Envelope;

.field private finder:Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

.field private nodes:Ljava/util/List;

.field private rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->nodes:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    .line 55
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 59
    new-instance v0, Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->finder:Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

    .line 60
    return-void
.end method

.method private add(Lorg/locationtech/jts/geomgraph/Node;Ljava/util/Stack;)V
    .locals 5
    .param p1, "node"    # Lorg/locationtech/jts/geomgraph/Node;
    .param p2, "nodeStack"    # Ljava/util/Stack;

    .prologue
    .line 131
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geomgraph/Node;->setVisited(Z)V

    .line 132
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->nodes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 135
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v2

    .line 137
    .local v2, "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v3

    .line 143
    .local v3, "symNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Node;->isVisited()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v3    # "symNode":Lorg/locationtech/jts/geomgraph/Node;
    :cond_1
    return-void
.end method

.method private addReachable(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 3
    .param p1, "startNode"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 116
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 117
    .local v1, "nodeStack":Ljava/util/Stack;
    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 120
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->add(Lorg/locationtech/jts/geomgraph/Node;Ljava/util/Stack;)V

    goto :goto_0

    .line 122
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method private clearVisitedEdges()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 151
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    goto :goto_0

    .line 153
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    return-void
.end method

.method private computeDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 9
    .param p1, "startEdge"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 177
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v5, "nodesVisited":Ljava/util/Set;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v4, "nodeQueue":Ljava/util/LinkedList;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v6

    .line 181
    .local v6, "startNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 182
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    .line 185
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 187
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/Node;

    .line 188
    .local v3, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->computeNodeDepth(Lorg/locationtech/jts/geomgraph/Node;)V

    .line 194
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v8

    check-cast v8, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v8}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 196
    .local v1, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v7

    .line 197
    .local v7, "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v7}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v8

    if-nez v8, :cond_1

    .line 198
    invoke-virtual {v7}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    .line 199
    .local v0, "adjNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 200
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 201
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v0    # "adjNode":Lorg/locationtech/jts/geomgraph/Node;
    .end local v1    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "n":Lorg/locationtech/jts/geomgraph/Node;
    .end local v7    # "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_2
    return-void
.end method

.method private computeNodeDepth(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 6
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, "startEdge":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 213
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isVisited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    :cond_1
    move-object v2, v0

    .line 222
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_2
    if-nez v2, :cond_3

    .line 223
    new-instance v3, Lorg/locationtech/jts/geom/TopologyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find edge to compute depths at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_3
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->computeDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 228
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 230
    .restart local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setVisited(Z)V

    .line 231
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->copySymDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    goto :goto_0

    .line 233
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_4
    return-void
.end method

.method private copySymDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 4
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 237
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getSym()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 238
    .local v0, "sym":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setDepth(II)V

    .line 239
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setDepth(II)V

    .line 240
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 283
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;

    .line 284
    .local v0, "graph":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, v0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 285
    const/4 v1, -0x1

    .line 290
    :goto_0
    return v1

    .line 287
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v1, v0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeDepth(I)V
    .locals 4
    .param p1, "outsideDepth"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->clearVisitedEdges()V

    .line 159
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->finder:Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

    invoke-virtual {v3}, Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;->getEdge()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 160
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v2

    .line 161
    .local v2, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    .line 163
    .local v1, "label":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setEdgeDepths(II)V

    .line 164
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->copySymDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 167
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->computeDepths(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 168
    return-void
.end method

.method public create(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->addReachable(Lorg/locationtech/jts/geomgraph/Node;)V

    .line 104
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->finder:Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;->findEdge(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->finder:Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/buffer/RightmostEdgeFinder;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    .line 106
    return-void
.end method

.method public findResultEdges()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 252
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 262
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 263
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getDepth(I)I

    move-result v2

    if-gtz v2, :cond_0

    .line 264
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isInteriorAreaEdge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setInResult(Z)V

    goto :goto_0

    .line 269
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_1
    return-void
.end method

.method public getDirectedEdges()Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    return-object v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 6

    .prologue
    .line 73
    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->env:Lorg/locationtech/jts/geom/Envelope;

    if-nez v5, :cond_2

    .line 74
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 75
    .local v1, "edgeEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->dirEdgeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 77
    .local v0, "dirEdge":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 78
    .local v4, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 79
    aget-object v5, v4, v2

    invoke-virtual {v1, v5}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "dirEdge":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "i":I
    .end local v4    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->env:Lorg/locationtech/jts/geom/Envelope;

    .line 84
    .end local v1    # "edgeEnv":Lorg/locationtech/jts/geom/Envelope;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->env:Lorg/locationtech/jts/geom/Envelope;

    return-object v5
.end method

.method public getNodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public getRightmostCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->rightMostCoord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
