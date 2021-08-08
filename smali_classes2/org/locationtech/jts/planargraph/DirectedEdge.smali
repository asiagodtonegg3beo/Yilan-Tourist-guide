.class public Lorg/locationtech/jts/planargraph/DirectedEdge;
.super Lorg/locationtech/jts/planargraph/GraphComponent;
.source "DirectedEdge.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected angle:D

.field protected edgeDirection:Z

.field protected from:Lorg/locationtech/jts/planargraph/Node;

.field protected p0:Lorg/locationtech/jts/geom/Coordinate;

.field protected p1:Lorg/locationtech/jts/geom/Coordinate;

.field protected parentEdge:Lorg/locationtech/jts/planargraph/Edge;

.field protected quadrant:I

.field protected sym:Lorg/locationtech/jts/planargraph/DirectedEdge;

.field protected to:Lorg/locationtech/jts/planargraph/Node;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 8
    .param p1, "from"    # Lorg/locationtech/jts/planargraph/Node;
    .param p2, "to"    # Lorg/locationtech/jts/planargraph/Node;
    .param p3, "directionPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "edgeDirection"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/GraphComponent;-><init>()V

    .line 55
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->sym:Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 74
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->from:Lorg/locationtech/jts/planargraph/Node;

    .line 75
    iput-object p2, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->to:Lorg/locationtech/jts/planargraph/Node;

    .line 76
    iput-boolean p4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->edgeDirection:Z

    .line 77
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iput-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 78
    iput-object p3, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 79
    iget-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-object v6, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v4, v6

    .line 80
    .local v0, "dx":D
    iget-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v6, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v6, v6, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v4, v6

    .line 81
    .local v2, "dy":D
    invoke-static {v0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/Quadrant;->quadrant(DD)I

    move-result v4

    iput v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    .line 82
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->angle:D

    .line 84
    return-void
.end method

.method public static toEdges(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p0, "dirEdges"    # Ljava/util/Collection;

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "edges":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/planargraph/DirectedEdge;

    iget-object v2, v2, Lorg/locationtech/jts/planargraph/DirectedEdge;->parentEdge:Lorg/locationtech/jts/planargraph/Edge;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareDirection(Lorg/locationtech/jts/planargraph/DirectedEdge;)I
    .locals 3
    .param p1, "e"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 195
    iget v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    iget v1, p1, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 196
    :cond_0
    iget v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    iget v1, p1, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p1, Lorg/locationtech/jts/planargraph/DirectedEdge;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p1, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 173
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 174
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->compareDirection(Lorg/locationtech/jts/planargraph/DirectedEdge;)I

    move-result v1

    return v1
.end method

.method public getAngle()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->angle:D

    return-wide v0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->from:Lorg/locationtech/jts/planargraph/Node;

    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionPt()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getEdge()Lorg/locationtech/jts/planargraph/Edge;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->parentEdge:Lorg/locationtech/jts/planargraph/Edge;

    return-object v0
.end method

.method public getEdgeDirection()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->edgeDirection:Z

    return v0
.end method

.method public getFromNode()Lorg/locationtech/jts/planargraph/Node;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->from:Lorg/locationtech/jts/planargraph/Node;

    return-object v0
.end method

.method public getQuadrant()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    return v0
.end method

.method public getSym()Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->sym:Lorg/locationtech/jts/planargraph/DirectedEdge;

    return-object v0
.end method

.method public getToNode()Lorg/locationtech/jts/planargraph/Node;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->to:Lorg/locationtech/jts/planargraph/Node;

    return-object v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->parentEdge:Lorg/locationtech/jts/planargraph/Edge;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "className":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 209
    .local v1, "lastDotPos":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->quadrant:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->angle:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->sym:Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 143
    iput-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->parentEdge:Lorg/locationtech/jts/planargraph/Edge;

    .line 144
    return-void
.end method

.method public setEdge(Lorg/locationtech/jts/planargraph/Edge;)V
    .locals 0
    .param p1, "parentEdge"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->parentEdge:Lorg/locationtech/jts/planargraph/Edge;

    return-void
.end method

.method public setSym(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 0
    .param p1, "sym"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/DirectedEdge;->sym:Lorg/locationtech/jts/planargraph/DirectedEdge;

    return-void
.end method
