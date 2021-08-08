.class public Lorg/locationtech/jts/geomgraph/NodeMap;
.super Ljava/lang/Object;
.source "NodeMap.java"


# instance fields
.field nodeFact:Lorg/locationtech/jts/geomgraph/NodeFactory;

.field nodeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V
    .locals 1
    .param p1, "nodeFact"    # Lorg/locationtech/jts/geomgraph/NodeFactory;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeFact:Lorg/locationtech/jts/geomgraph/NodeFactory;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 84
    .local v1, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    .line 85
    .local v0, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Node;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 86
    return-void
.end method

.method public addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 2
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 57
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 58
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    if-nez v0, :cond_0

    .line 59
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeFact:Lorg/locationtech/jts/geomgraph/NodeFactory;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/NodeFactory;->createNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-object v0
.end method

.method public addNode(Lorg/locationtech/jts/geomgraph/Node;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 3
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 67
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 68
    .local v0, "node":Lorg/locationtech/jts/geomgraph/Node;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local p1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :goto_0
    return-object p1

    .line 72
    .restart local p1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Node;->mergeLabel(Lorg/locationtech/jts/geomgraph/Node;)V

    move-object p1, v0

    .line 73
    goto :goto_0
.end method

.method public find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    return-object v0
.end method

.method public getBoundaryNodes(I)Ljava/util/Collection;
    .locals 5
    .param p1, "geomIndex"    # I

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "bdyNodes":Ljava/util/Collection;
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/Node;

    .line 106
    .local v2, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 107
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v2    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 117
    .local v1, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/Node;->print(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 119
    .end local v1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/NodeMap;->nodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
