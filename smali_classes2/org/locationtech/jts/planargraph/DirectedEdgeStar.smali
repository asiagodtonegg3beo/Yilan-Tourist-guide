.class public Lorg/locationtech/jts/planargraph/DirectedEdgeStar;
.super Ljava/lang/Object;
.source "DirectedEdgeStar.java"


# instance fields
.field protected outEdges:Ljava/util/List;

.field private sorted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sorted:Z

    .line 43
    return-void
.end method

.method private sortEdges()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sorted:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sorted:Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sorted:Z

    .line 51
    return-void
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 81
    .local v0, "e":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    goto :goto_0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEdges()Ljava/util/List;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sortEdges()V

    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    return-object v0
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v0, p1, v1

    .line 138
    .local v0, "modi":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    return v0
.end method

.method public getIndex(Lorg/locationtech/jts/planargraph/DirectedEdge;)I
    .locals 3
    .param p1, "dirEdge"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sortEdges()V

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    iget-object v2, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 123
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    if-ne v0, p1, :cond_0

    .line 126
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 121
    .restart local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndex(Lorg/locationtech/jts/planargraph/Edge;)I
    .locals 3
    .param p1, "edge"    # Lorg/locationtech/jts/planargraph/Edge;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sortEdges()V

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/DirectedEdge;

    .line 109
    .local v0, "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/DirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 112
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 107
    .restart local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "de":Lorg/locationtech/jts/planargraph/DirectedEdge;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getNextCWEdge(Lorg/locationtech/jts/planargraph/DirectedEdge;)Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 3
    .param p1, "dirEdge"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getIndex(Lorg/locationtech/jts/planargraph/DirectedEdge;)I

    move-result v0

    .line 161
    .local v0, "i":I
    iget-object v1, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/DirectedEdge;

    return-object v1
.end method

.method public getNextEdge(Lorg/locationtech/jts/planargraph/DirectedEdge;)Lorg/locationtech/jts/planargraph/DirectedEdge;
    .locals 3
    .param p1, "dirEdge"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getIndex(Lorg/locationtech/jts/planargraph/DirectedEdge;)I

    move-result v0

    .line 150
    .local v0, "i":I
    iget-object v1, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->getIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/DirectedEdge;

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->sortEdges()V

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/locationtech/jts/planargraph/DirectedEdge;)V
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/planargraph/DirectedEdge;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->outEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
