.class public Lorg/locationtech/jts/geomgraph/PlanarGraph;
.super Ljava/lang/Object;
.source "PlanarGraph.java"


# instance fields
.field protected edgeEndList:Ljava/util/List;

.field protected edges:Ljava/util/List;

.field protected nodes:Lorg/locationtech/jts/geomgraph/NodeMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edgeEndList:Ljava/util/List;

    .line 70
    new-instance v0, Lorg/locationtech/jts/geomgraph/NodeMap;

    new-instance v1, Lorg/locationtech/jts/geomgraph/NodeFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/geomgraph/NodeFactory;-><init>()V

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/NodeMap;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V
    .locals 1
    .param p1, "nodeFact"    # Lorg/locationtech/jts/geomgraph/NodeFactory;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edgeEndList:Ljava/util/List;

    .line 66
    new-instance v0, Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geomgraph/NodeMap;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    .line 67
    return-void
.end method

.method public static linkResultDirectedEdges(Ljava/util/Collection;)V
    .locals 3
    .param p0, "nodes"    # Ljava/util/Collection;

    .prologue
    .line 55
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 57
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->linkResultDirectedEdges()V

    goto :goto_0

    .line 59
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method private matchInSameDirection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "ep0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "ep1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    invoke-static {p1, p2, p4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-static {p1, p2}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    invoke-static {p3, p4}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/NodeMap;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edgeEndList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addEdges(Ljava/util/List;)V
    .locals 5
    .param p1, "edgesToAdd"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/Edge;

    .line 112
    .local v2, "e":Lorg/locationtech/jts/geomgraph/Edge;
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Z)V

    .line 115
    .local v0, "de1":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    new-instance v1, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lorg/locationtech/jts/geomgraph/DirectedEdge;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Z)V

    .line 116
    .local v1, "de2":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setSym(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 117
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setSym(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 119
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 120
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    goto :goto_0

    .line 122
    .end local v0    # "de1":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v1    # "de2":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .end local v2    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method public addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    return-object v0
.end method

.method public addNode(Lorg/locationtech/jts/geomgraph/Node;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 1
    .param p1, "node"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geomgraph/Node;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    return-object v0
.end method

.method debugPrint(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 231
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method debugPrintln(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 235
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/NodeMap;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    return-object v0
.end method

.method public findEdge(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 4
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 174
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 175
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 176
    .local v1, "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p2, v3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return-object v0

    .line 173
    .restart local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .restart local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findEdgeEnd(Lorg/locationtech/jts/geomgraph/Edge;)Lorg/locationtech/jts/geomgraph/EdgeEnd;
    .locals 3
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getEdgeEnds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 159
    .local v0, "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 162
    .end local v0    # "ee":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findEdgeInSameDirection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 5
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 191
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 193
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 194
    .local v1, "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {p0, p1, p2, v3, v4}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->matchInSameDirection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    :goto_1
    return-object v0

    .line 197
    .restart local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .restart local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-direct {p0, p1, p2, v3, v4}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->matchInSameDirection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eCoord":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEdgeEnds()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edgeEndList:Ljava/util/List;

    return-object v0
.end method

.method public getEdgeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodes()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/NodeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected insertEdge(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public isBoundaryNode(ILorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p1, "geomIndex"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v4, p2}, Lorg/locationtech/jts/geomgraph/NodeMap;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v1

    .line 79
    .local v1, "node":Lorg/locationtech/jts/geomgraph/Node;
    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 81
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public linkAllDirectedEdges()V
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 145
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->linkAllDirectedEdges()V

    goto :goto_0

    .line 147
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public linkResultDirectedEdges()V
    .locals 3

    .prologue
    .line 131
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nodeit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 133
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->linkResultDirectedEdges()V

    goto :goto_0

    .line 135
    .end local v0    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public printEdges(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 221
    const-string v2, "Edges:"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/PlanarGraph;->edges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 225
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->print(Ljava/io/PrintStream;)V

    .line 226
    iget-object v2, v0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->print(Ljava/io/PrintStream;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method
