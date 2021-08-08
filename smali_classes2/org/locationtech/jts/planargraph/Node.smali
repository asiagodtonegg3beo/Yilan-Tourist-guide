.class public Lorg/locationtech/jts/planargraph/Node;
.super Lorg/locationtech/jts/planargraph/GraphComponent;
.source "Node.java"


# instance fields
.field protected deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

.field protected pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    invoke-direct {v0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/planargraph/Node;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/planargraph/DirectedEdgeStar;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/planargraph/DirectedEdgeStar;)V
    .locals 0
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "deStar"    # Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/GraphComponent;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/Node;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 68
    iput-object p2, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    .line 69
    return-void
.end method

.method public static getEdgesBetween(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;)Ljava/util/Collection;
    .locals 4
    .param p0, "node0"    # Lorg/locationtech/jts/planargraph/Node;
    .param p1, "node1"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/locationtech/jts/planargraph/DirectedEdge;->toEdges(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "edges0":Ljava/util/List;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v0, "commonEdges":Ljava/util/Set;
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getEdges()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/locationtech/jts/planargraph/DirectedEdge;->toEdges(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, "edges1":Ljava/util/List;
    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 45
    return-object v0
.end method


# virtual methods
.method public addOutEdge(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 82
    return-void
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getDegree()I

    move-result v0

    return v0
.end method

.method public getIndex(Lorg/locationtech/jts/planargraph/Edge;)I
    .locals 1
    .param p1, "edge"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getIndex(Lorg/locationtech/jts/planargraph/Edge;)I

    move-result v0

    return v0
.end method

.method public getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    return-object v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->pt:Lorg/locationtech/jts/geom/Coordinate;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 115
    return-void
.end method

.method public remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Node;->deStar:Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 108
    return-void
.end method
