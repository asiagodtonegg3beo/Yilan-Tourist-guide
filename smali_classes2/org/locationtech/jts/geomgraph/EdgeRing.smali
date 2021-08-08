.class public abstract Lorg/locationtech/jts/geomgraph/EdgeRing;
.super Ljava/lang/Object;
.source "EdgeRing.java"


# instance fields
.field private edges:Ljava/util/List;

.field protected geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private holes:Ljava/util/ArrayList;

.field private isHole:Z

.field private label:Lorg/locationtech/jts/geomgraph/Label;

.field private maxNodeDegree:I

.field private pts:Ljava/util/List;

.field private ring:Lorg/locationtech/jts/geom/LinearRing;

.field private shell:Lorg/locationtech/jts/geomgraph/EdgeRing;

.field protected startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "start"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->edges:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    .line 42
    new-instance v0, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/Label;-><init>(I)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    .line 51
    iput-object p2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 52
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/EdgeRing;->computePoints(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V

    .line 53
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->computeRing()V

    .line 54
    return-void
.end method

.method private computeMaxNodeDegree()V
    .locals 4

    .prologue
    .line 148
    const/4 v3, 0x0

    iput v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    .line 149
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 151
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNode()Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v2

    .line 152
    .local v2, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Node;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;

    invoke-virtual {v3, p0}, Lorg/locationtech/jts/geomgraph/DirectedEdgeStar;->getOutgoingDegree(Lorg/locationtech/jts/geomgraph/EdgeRing;)I

    move-result v1

    .line 153
    .local v1, "degree":I
    iget v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    .line 154
    :cond_1
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 155
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    if-ne v0, v3, :cond_0

    .line 156
    iget v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    .line 157
    return-void
.end method


# virtual methods
.method public addHole(Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 1
    .param p1, "ring"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addPoints(Lorg/locationtech/jts/geomgraph/Edge;ZZ)V
    .locals 5
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "isForward"    # Z
    .param p3, "isFirstEdge"    # Z

    .prologue
    .line 194
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 195
    .local v0, "edgePts":[Lorg/locationtech/jts/geom/Coordinate;
    if-eqz p2, :cond_1

    .line 196
    const/4 v2, 0x1

    .line 197
    .local v2, "startIndex":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 198
    :cond_0
    move v1, v2

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 199
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    .end local v2    # "startIndex":I
    :cond_1
    array-length v3, v0

    add-int/lit8 v2, v3, -0x2

    .line 204
    .restart local v2    # "startIndex":I
    if-eqz p3, :cond_2

    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .line 205
    :cond_2
    move v1, v2

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 206
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 209
    :cond_3
    return-void
.end method

.method protected computePoints(Lorg/locationtech/jts/geomgraph/DirectedEdge;)V
    .locals 6
    .param p1, "start"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 118
    move-object v0, p1

    .line 119
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    const/4 v1, 0x1

    .line 122
    .local v1, "isFirstEdge":Z
    :cond_0
    if-nez v0, :cond_1

    .line 123
    new-instance v3, Lorg/locationtech/jts/geom/TopologyException;

    const-string v4, "Found null DirectedEdge"

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdgeRing()Lorg/locationtech/jts/geomgraph/EdgeRing;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 125
    new-instance v3, Lorg/locationtech/jts/geom/TopologyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directed Edge visited twice during ring-building at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geom/TopologyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->edges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 131
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Label;->isArea()Z

    move-result v3

    invoke-static {v3}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geomgraph/EdgeRing;->mergeLabel(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 133
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v3

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->isForward()Z

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lorg/locationtech/jts/geomgraph/EdgeRing;->addPoints(Lorg/locationtech/jts/geomgraph/Edge;ZZ)V

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->setEdgeRing(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    if-ne v0, v3, :cond_0

    .line 138
    return-void
.end method

.method public computeRing()V
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 96
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    aput-object v2, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    .line 100
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->isHole:Z

    goto :goto_0
.end method

.method public containsPoint(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v3

    .line 218
    .local v3, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 219
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v4

    .line 220
    :cond_1
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 224
    .local v1, "hole":Lorg/locationtech/jts/geomgraph/EdgeRing;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/EdgeRing;->containsPoint(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 227
    .end local v1    # "hole":Lorg/locationtech/jts/geomgraph/EdgeRing;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->pts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getEdges()Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->edges:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Lorg/locationtech/jts/geomgraph/Label;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-object v0
.end method

.method public getLinearRing()Lorg/locationtech/jts/geom/LinearRing;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->ring:Lorg/locationtech/jts/geom/LinearRing;

    return-object v0
.end method

.method public getMaxNodeDegree()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->computeMaxNodeDegree()V

    .line 143
    :cond_0
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->maxNodeDegree:I

    return v0
.end method

.method public abstract getNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)Lorg/locationtech/jts/geomgraph/DirectedEdge;
.end method

.method public getShell()Lorg/locationtech/jts/geomgraph/EdgeRing;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->shell:Lorg/locationtech/jts/geomgraph/EdgeRing;

    return-object v0
.end method

.method public isHole()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->isHole:Z

    return v0
.end method

.method public isIsolated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Label;->getGeometryCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShell()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->shell:Lorg/locationtech/jts/geomgraph/EdgeRing;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mergeLabel(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 1
    .param p1, "deLabel"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->mergeLabel(Lorg/locationtech/jts/geomgraph/Label;I)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->mergeLabel(Lorg/locationtech/jts/geomgraph/Label;I)V

    .line 173
    return-void
.end method

.method protected mergeLabel(Lorg/locationtech/jts/geomgraph/Label;I)V
    .locals 3
    .param p1, "deLabel"    # Lorg/locationtech/jts/geomgraph/Label;
    .param p2, "geomIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 183
    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v0

    .line 185
    .local v0, "loc":I
    if-ne v0, v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1, p2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v1, p2, v0}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    goto :goto_0
.end method

.method public abstract setEdgeRing(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geomgraph/EdgeRing;)V
.end method

.method public setInResult()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .line 164
    .local v0, "de":Lorg/locationtech/jts/geomgraph/DirectedEdge;
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geomgraph/Edge;->setInResult(Z)V

    .line 165
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNext()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->startDe:Lorg/locationtech/jts/geomgraph/DirectedEdge;

    if-ne v0, v1, :cond_0

    .line 167
    return-void
.end method

.method public setShell(Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 0
    .param p1, "shell"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->shell:Lorg/locationtech/jts/geomgraph/EdgeRing;

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->addHole(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    .line 75
    :cond_0
    return-void
.end method

.method public toPolygon(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;
    .locals 4
    .param p1, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 80
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lorg/locationtech/jts/geom/LinearRing;

    .line 81
    .local v0, "holeLR":[Lorg/locationtech/jts/geom/LinearRing;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 82
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/EdgeRing;->holes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geomgraph/EdgeRing;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v3

    aput-object v3, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/EdgeRing;->getLinearRing()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 85
    .local v2, "poly":Lorg/locationtech/jts/geom/Polygon;
    return-object v2
.end method
