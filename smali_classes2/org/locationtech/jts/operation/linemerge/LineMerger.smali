.class public Lorg/locationtech/jts/operation/linemerge/LineMerger;
.super Ljava/lang/Object;
.source "LineMerger.java"


# instance fields
.field private edgeStrings:Ljava/util/Collection;

.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

.field private mergedLineStrings:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-direct {v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    .line 53
    iput-object v1, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    .line 54
    iput-object v1, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 103
    iput-object v1, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->edgeStrings:Ljava/util/Collection;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/operation/linemerge/LineMerger;Lorg/locationtech/jts/geom/LineString;)V
    .locals 0
    .param p0, "x0"    # Lorg/locationtech/jts/operation/linemerge/LineMerger;
    .param p1, "x1"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->add(Lorg/locationtech/jts/geom/LineString;)V

    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/LineString;)V
    .locals 1
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->addEdge(Lorg/locationtech/jts/geom/LineString;)V

    .line 101
    return-void
.end method

.method private buildEdgeStringStartingWith(Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;)Lorg/locationtech/jts/operation/linemerge/EdgeString;
    .locals 4
    .param p1, "start"    # Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    .prologue
    .line 159
    new-instance v1, Lorg/locationtech/jts/operation/linemerge/EdgeString;

    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/operation/linemerge/EdgeString;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 160
    .local v1, "edgeString":Lorg/locationtech/jts/operation/linemerge/EdgeString;
    move-object v0, p1

    .line 162
    .local v0, "current":Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    :cond_0
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/operation/linemerge/EdgeString;->add(Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;)V

    .line 163
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/planargraph/Edge;->setMarked(Z)V

    .line 164
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getNext()Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 166
    :cond_1
    return-object v1
.end method

.method private buildEdgeStringsForIsolatedLoops()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsForUnprocessedNodes()V

    .line 129
    return-void
.end method

.method private buildEdgeStringsForNonDegree2Nodes()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->getNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/Node;

    .line 144
    .local v1, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 145
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsStartingAt(Lorg/locationtech/jts/planargraph/Node;)V

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/planargraph/Node;->setMarked(Z)V

    goto :goto_0

    .line 149
    .end local v1    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_1
    return-void
.end method

.method private buildEdgeStringsForObviousStartNodes()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsForNonDegree2Nodes()V

    .line 125
    return-void
.end method

.method private buildEdgeStringsForUnprocessedNodes()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->getNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/planargraph/Node;

    .line 134
    .local v1, "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->isMarked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lorg/locationtech/jts/planargraph/Node;->getDegree()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 136
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsStartingAt(Lorg/locationtech/jts/planargraph/Node;)V

    .line 137
    invoke-virtual {v1, v3}, Lorg/locationtech/jts/planargraph/Node;->setMarked(Z)V

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 140
    .end local v1    # "node":Lorg/locationtech/jts/planargraph/Node;
    :cond_2
    return-void
.end method

.method private buildEdgeStringsStartingAt(Lorg/locationtech/jts/planargraph/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/locationtech/jts/planargraph/Node;

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/locationtech/jts/planargraph/Node;->getOutEdges()Lorg/locationtech/jts/planargraph/DirectedEdgeStar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/DirectedEdgeStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    .line 153
    .local v0, "directedEdge":Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/planargraph/Edge;->isMarked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->edgeStrings:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringStartingWith(Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;)Lorg/locationtech/jts/operation/linemerge/EdgeString;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v0    # "directedEdge":Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    :cond_1
    return-void
.end method

.method private merge()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->nodeIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/locationtech/jts/planargraph/GraphComponent;->setMarked(Ljava/util/Iterator;Z)V

    .line 111
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->graph:Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;

    invoke-virtual {v2}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->edgeIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/locationtech/jts/planargraph/GraphComponent;->setMarked(Ljava/util/Iterator;Z)V

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->edgeStrings:Ljava/util/Collection;

    .line 114
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsForObviousStartNodes()V

    .line 115
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->buildEdgeStringsForIsolatedLoops()V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    .line 117
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->edgeStrings:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/linemerge/EdgeString;

    .line 119
    .local v0, "edgeString":Lorg/locationtech/jts/operation/linemerge/EdgeString;
    iget-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/linemerge/EdgeString;->toLineString()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 3
    .param p1, "geometries"    # Ljava/util/Collection;

    .prologue
    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 93
    .local v0, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->add(Lorg/locationtech/jts/geom/Geometry;)V

    goto :goto_0

    .line 95
    .end local v0    # "geometry":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 73
    new-instance v0, Lorg/locationtech/jts/operation/linemerge/LineMerger$1;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger$1;-><init>(Lorg/locationtech/jts/operation/linemerge/LineMerger;)V

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 80
    return-void
.end method

.method public getMergedLineStrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/LineMerger;->merge()V

    .line 176
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/LineMerger;->mergedLineStrings:Ljava/util/Collection;

    return-object v0
.end method
