.class public Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;
.super Ljava/lang/Object;
.source "EdgeEndBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public computeEdgeEnds(Ljava/util/Iterator;)Ljava/util/List;
    .locals 4
    .param p1, "edges"    # Ljava/util/Iterator;

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "l":Ljava/util/List;
    move-object v1, p1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 50
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {p0, v0, v2}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->computeEdgeEnds(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;)V

    goto :goto_0

    .line 52
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-object v2
.end method

.method public computeEdgeEnds(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;)V
    .locals 6
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "l"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v1

    .line 64
    .local v1, "eiList":Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->addEndpoints()V

    .line 66
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 67
    .local v4, "it":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 68
    .local v3, "eiPrev":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    const/4 v0, 0x0

    .line 70
    .local v0, "eiCurr":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 73
    .local v2, "eiNext":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_1
    move-object v3, v0

    .line 74
    move-object v0, v2

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "eiNext":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 78
    .restart local v2    # "eiNext":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    :cond_2
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->createEdgeEndForPrev(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)V

    .line 80
    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->createEdgeEndForNext(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)V

    .line 83
    :cond_3
    if-nez v0, :cond_1

    goto :goto_0
.end method

.method createEdgeEndForNext(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)V
    .locals 6
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "l"    # Ljava/util/List;
    .param p3, "eiCurr"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .param p4, "eiNext"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .prologue
    .line 135
    iget v3, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    add-int/lit8 v1, v3, 0x1

    .line 137
    .local v1, "iNext":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getNumPoints()I

    move-result v3

    if-lt v1, v3, :cond_0

    if-nez p4, :cond_0

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 142
    .local v2, "pNext":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz p4, :cond_1

    iget v3, p4, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    iget v4, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-ne v3, v4, :cond_1

    .line 143
    iget-object v2, p4, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    .line 145
    :cond_1
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    iget-object v3, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    new-instance v4, Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    invoke-direct {v0, p1, v3, v2, v4}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 147
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method createEdgeEndForPrev(Lorg/locationtech/jts/geomgraph/Edge;Ljava/util/List;Lorg/locationtech/jts/geomgraph/EdgeIntersection;Lorg/locationtech/jts/geomgraph/EdgeIntersection;)V
    .locals 8
    .param p1, "edge"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "l"    # Ljava/util/List;
    .param p3, "eiCurr"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .param p4, "eiPrev"    # Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .prologue
    .line 102
    iget v1, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    .line 103
    .local v1, "iPrev":I
    iget-wide v4, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 105
    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 108
    :cond_1
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 110
    .local v3, "pPrev":Lorg/locationtech/jts/geom/Coordinate;
    if-eqz p4, :cond_2

    iget v4, p4, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-lt v4, v1, :cond_2

    .line 111
    iget-object v3, p4, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    .line 113
    :cond_2
    new-instance v2, Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 115
    .local v2, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/Label;->flip()V

    .line 116
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    iget-object v4, p3, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, v4, v3, v2}, Lorg/locationtech/jts/geomgraph/EdgeEnd;-><init>(Lorg/locationtech/jts/geomgraph/Edge;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 118
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
