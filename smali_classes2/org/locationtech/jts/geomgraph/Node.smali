.class public Lorg/locationtech/jts/geomgraph/Node;
.super Lorg/locationtech/jts/geomgraph/GraphComponent;
.source "Node.java"


# instance fields
.field protected coord:Lorg/locationtech/jts/geom/Coordinate;

.field protected edges:Lorg/locationtech/jts/geomgraph/EdgeEndStar;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/EdgeEndStar;)V
    .locals 3
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "edges"    # Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/GraphComponent;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/Node;->coord:Lorg/locationtech/jts/geom/Coordinate;

    .line 37
    iput-object p2, p0, Lorg/locationtech/jts/geomgraph/Node;->edges:Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    .line 38
    new-instance v0, Lorg/locationtech/jts/geomgraph/Label;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geomgraph/Label;-><init>(II)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->edges:Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 77
    invoke-virtual {p1, p0}, Lorg/locationtech/jts/geomgraph/EdgeEnd;->setNode(Lorg/locationtech/jts/geomgraph/Node;)V

    .line 78
    return-void
.end method

.method protected computeIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 0
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 69
    return-void
.end method

.method computeMergedLocation(Lorg/locationtech/jts/geomgraph/Label;I)I
    .locals 3
    .param p1, "label2"    # Lorg/locationtech/jts/geomgraph/Label;
    .param p2, "eltIndex"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    .line 142
    .local v0, "loc":I
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v0

    .line 143
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 145
    .local v1, "nLoc":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 147
    .end local v1    # "nLoc":I
    :cond_0
    return v0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->coord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->edges:Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    return-object v0
.end method

.method public isIncidentEdgeInResult()Z
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->getEdges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 56
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Edge;->isInResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x1

    .line 59
    .end local v0    # "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIsolated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Label;->getGeometryCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeLabel(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 4
    .param p1, "label2"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 95
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/Node;->computeMergedLocation(Lorg/locationtech/jts/geomgraph/Label;I)I

    move-result v1

    .line 96
    .local v1, "loc":I
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v2

    .line 97
    .local v2, "thisLoc":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v3, v0, v1}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "loc":I
    .end local v2    # "thisLoc":I
    :cond_1
    return-void
.end method

.method public mergeLabel(Lorg/locationtech/jts/geomgraph/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;

    .prologue
    .line 82
    iget-object v0, p1, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/Node;->mergeLabel(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 83
    return-void
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Node;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lbl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setLabel(II)V
    .locals 1
    .param p1, "argIndex"    # I
    .param p2, "onLocation"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geomgraph/Label;-><init>(II)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    goto :goto_0
.end method

.method public setLabelBoundary(I)V
    .locals 3
    .param p1, "argIndex"    # I

    .prologue
    .line 116
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, -0x1

    .line 120
    .local v0, "loc":I
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v0

    .line 124
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v1, 0x1

    .line 129
    .local v1, "newLoc":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v2, p1, v1}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    goto :goto_0

    .line 125
    .end local v1    # "newLoc":I
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "newLoc":I
    goto :goto_1

    .line 126
    .end local v1    # "newLoc":I
    :pswitch_1
    const/4 v1, 0x1

    .restart local v1    # "newLoc":I
    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
