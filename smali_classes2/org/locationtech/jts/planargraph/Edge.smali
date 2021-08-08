.class public Lorg/locationtech/jts/planargraph/Edge;
.super Lorg/locationtech/jts/planargraph/GraphComponent;
.source "Edge.java"


# instance fields
.field protected dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/GraphComponent;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/planargraph/DirectedEdge;Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 0
    .param p1, "de0"    # Lorg/locationtech/jts/planargraph/DirectedEdge;
    .param p2, "de1"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/GraphComponent;-><init>()V

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/planargraph/Edge;->setDirectedEdges(Lorg/locationtech/jts/planargraph/DirectedEdge;Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getDirEdge(I)Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDirEdge(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 3
    .param p1, "fromNode"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v2

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOppositeNode(Lorg/locationtech/jts/planargraph/Node;)Lorg/locationtech/jts/planargraph/Node;
    .locals 3
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getToNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

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
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 108
    return-void
.end method

.method public setDirectedEdges(Lorg/locationtech/jts/planargraph/DirectedEdge;Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 2
    .param p1, "de0"    # Lorg/locationtech/jts/planargraph/DirectedEdge;
    .param p2, "de1"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/planargraph/DirectedEdge;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/Edge;->dirEdge:[Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 60
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->setEdge(Lorg/locationtech/jts/planargraph/Edge;)V

    .line 61
    invoke-virtual {p2, p0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->setEdge(Lorg/locationtech/jts/planargraph/Edge;)V

    .line 62
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/planargraph/DirectedEdge;->setSym(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 63
    invoke-virtual {p2, p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->setSym(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 64
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/Node;->addOutEdge(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 65
    invoke-virtual {p2}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getFromNode()Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/planargraph/Node;->addOutEdge(Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 66
    return-void
.end method
