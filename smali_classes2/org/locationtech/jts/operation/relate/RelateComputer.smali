.class public Lorg/locationtech/jts/operation/relate/RelateComputer;
.super Ljava/lang/Object;
.source "RelateComputer.java"


# instance fields
.field private arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field private im:Lorg/locationtech/jts/geom/IntersectionMatrix;

.field private invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private isolatedEdges:Ljava/util/ArrayList;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

.field private ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V
    .locals 2
    .param p1, "arg"    # [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 59
    new-instance v0, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 61
    new-instance v0, Lorg/locationtech/jts/geomgraph/NodeMap;

    new-instance v1, Lorg/locationtech/jts/operation/relate/RelateNodeFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/operation/relate/RelateNodeFactory;-><init>()V

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geomgraph/NodeMap;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->im:Lorg/locationtech/jts/geom/IntersectionMatrix;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->isolatedEdges:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 71
    return-void
.end method

.method private computeDisjointIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 6
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 274
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 275
    .local v0, "ga":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {p1, v4, v3, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(III)V

    .line 277
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getBoundaryDimension()I

    move-result v2

    invoke-virtual {p1, v5, v3, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(III)V

    .line 279
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 280
    .local v1, "gb":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(III)V

    .line 282
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getBoundaryDimension()I

    move-result v2

    invoke-virtual {p1, v3, v5, v2}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(III)V

    .line 284
    :cond_1
    return-void
.end method

.method private computeIntersectionNodes(I)V
    .locals 8
    .param p1, "argIndex"    # I

    .prologue
    .line 227
    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 228
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 229
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 230
    .local v1, "eLoc":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "eiIt":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 232
    .local v2, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    iget-object v7, v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 233
    .local v5, "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 234
    invoke-virtual {v5, p1}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabelBoundary(I)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/relate/RelateNode;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabel(II)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eLoc":I
    .end local v2    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v3    # "eiIt":Ljava/util/Iterator;
    .end local v5    # "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    :cond_3
    return-void
.end method

.method private computeProperIntersectionIM(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 8
    .param p1, "intersector"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .param p2, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 157
    iget-object v4, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v0

    .line 158
    .local v0, "dimA":I
    iget-object v4, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    .line 159
    .local v1, "dimB":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperIntersection()Z

    move-result v2

    .line 160
    .local v2, "hasProper":Z
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperInteriorIntersection()Z

    move-result v3

    .line 167
    .local v3, "hasProperInterior":Z
    if-ne v0, v7, :cond_1

    if-ne v1, v7, :cond_1

    .line 168
    if-eqz v2, :cond_0

    const-string v4, "212101212"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-ne v0, v7, :cond_3

    if-ne v1, v6, :cond_3

    .line 179
    if-eqz v2, :cond_2

    const-string v4, "FFF0FFFF2"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    .line 180
    :cond_2
    if-eqz v3, :cond_0

    const-string v4, "1FFFFF1FF"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    if-ne v0, v6, :cond_5

    if-ne v1, v7, :cond_5

    .line 183
    if-eqz v2, :cond_4

    const-string v4, "F0FFFFFF2"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    .line 184
    :cond_4
    if-eqz v3, :cond_0

    const-string v4, "1F1FFFFFF"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_5
    if-ne v0, v6, :cond_0

    if-ne v1, v6, :cond_0

    .line 196
    if-eqz v3, :cond_0

    const-string v4, "0FFFFFFFF"

    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copyNodesAndLabels(I)V
    .locals 5
    .param p1, "argIndex"    # I

    .prologue
    .line 211
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getNodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Node;

    .line 213
    .local v0, "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v2

    .line 214
    .local v2, "newNode":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/locationtech/jts/geomgraph/Node;->setLabel(II)V

    goto :goto_0

    .line 217
    .end local v0    # "graphNode":Lorg/locationtech/jts/geomgraph/Node;
    .end local v2    # "newNode":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-void
.end method

.method private insertEdgeEnds(Ljava/util/List;)V
    .locals 3
    .param p1, "ee"    # Ljava/util/List;

    .prologue
    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .line 150
    .local v0, "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geomgraph/NodeMap;->add(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/EdgeEnd;
    :cond_0
    return-void
.end method

.method private labelIntersectionNodes(I)V
    .locals 8
    .param p1, "argIndex"    # I

    .prologue
    .line 252
    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 254
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 255
    .local v1, "eLoc":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "eiIt":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 257
    .local v2, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    iget-object v7, v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geomgraph/NodeMap;->find(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 258
    .local v5, "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/relate/RelateNode;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 260
    invoke-virtual {v5, p1}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabelBoundary(I)V

    goto :goto_0

    .line 262
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lorg/locationtech/jts/operation/relate/RelateNode;->setLabel(II)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eLoc":I
    .end local v2    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v3    # "eiIt":Ljava/util/Iterator;
    .end local v5    # "n":Lorg/locationtech/jts/operation/relate/RelateNode;
    :cond_3
    return-void
.end method

.method private labelIsolatedEdge(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;
    .param p2, "targetIndex"    # I
    .param p3, "target"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 342
    invoke-virtual {p3}, Lorg/locationtech/jts/geom/Geometry;->getDimension()I

    move-result v1

    if-lez v1, :cond_0

    .line 346
    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    .line 347
    .local v0, "loc":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocations(II)V

    .line 353
    .end local v0    # "loc":I
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocations(II)V

    goto :goto_0
.end method

.method private labelIsolatedEdges(II)V
    .locals 3
    .param p1, "thisIndex"    # I
    .param p2, "targetIndex"    # I

    .prologue
    .line 326
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ei":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 328
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedEdge(Lorg/locationtech/jts/geomgraph/Edge;ILorg/locationtech/jts/geom/Geometry;)V

    .line 330
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->isolatedEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_1
    return-void
.end method

.method private labelIsolatedNode(Lorg/locationtech/jts/geomgraph/Node;I)V
    .locals 4
    .param p1, "n"    # Lorg/locationtech/jts/geomgraph/Node;
    .param p2, "targetIndex"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    .line 386
    .local v0, "loc":I
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocations(II)V

    .line 388
    return-void
.end method

.method private labelIsolatedNodes()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ni":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 368
    .local v1, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 370
    .local v0, "label":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Label;->getGeometryCount()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "node with empty label found"

    invoke-static {v3, v6}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->isIsolated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v0, v5}, Lorg/locationtech/jts/geomgraph/Label;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    invoke-direct {p0, v1, v5}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedNode(Lorg/locationtech/jts/geomgraph/Node;I)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 370
    goto :goto_1

    .line 375
    :cond_2
    invoke-direct {p0, v1, v4}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedNode(Lorg/locationtech/jts/geomgraph/Node;I)V

    goto :goto_0

    .line 378
    .end local v0    # "label":Lorg/locationtech/jts/geomgraph/Label;
    .end local v1    # "n":Lorg/locationtech/jts/geomgraph/Node;
    :cond_3
    return-void
.end method

.method private labelNodeEdges()V
    .locals 4

    .prologue
    .line 288
    iget-object v2, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "ni":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 290
    .local v1, "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/relate/RelateNode;->getEdges()Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;->computeLabelling([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    goto :goto_0

    .line 294
    .end local v1    # "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    :cond_0
    return-void
.end method

.method private updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 5
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 302
    iget-object v4, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->isolatedEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ei":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 304
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geomgraph/Edge;->updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ni":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/operation/relate/RelateNode;

    .line 309
    .local v3, "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/operation/relate/RelateNode;->updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 311
    invoke-virtual {v3, p1}, Lorg/locationtech/jts/operation/relate/RelateNode;->updateIMFromEdges(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    goto :goto_1

    .line 315
    .end local v3    # "node":Lorg/locationtech/jts/operation/relate/RelateNode;
    :cond_1
    return-void
.end method


# virtual methods
.method public computeIM()Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 75
    new-instance v3, Lorg/locationtech/jts/geom/IntersectionMatrix;

    invoke-direct {v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;-><init>()V

    .line 77
    .local v3, "im":Lorg/locationtech/jts/geom/IntersectionMatrix;
    invoke-virtual {v3, v5, v5, v5}, Lorg/locationtech/jts/geom/IntersectionMatrix;->set(III)V

    .line 80
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v5

    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v6, v6, v9

    .line 81
    invoke-virtual {v6}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/relate/RelateComputer;->computeDisjointIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 143
    :goto_0
    return-object v3

    .line 85
    :cond_0
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v8}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 86
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v8}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .line 89
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v6, v6, v9

    iget-object v7, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v6, v7, v8}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeEdgeIntersections(Lorg/locationtech/jts/geomgraph/GeometryGraph;Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    move-result-object v4

    .line 91
    .local v4, "intersector":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    invoke-direct {p0, v8}, Lorg/locationtech/jts/operation/relate/RelateComputer;->computeIntersectionNodes(I)V

    .line 92
    invoke-direct {p0, v9}, Lorg/locationtech/jts/operation/relate/RelateComputer;->computeIntersectionNodes(I)V

    .line 97
    invoke-direct {p0, v8}, Lorg/locationtech/jts/operation/relate/RelateComputer;->copyNodesAndLabels(I)V

    .line 98
    invoke-direct {p0, v9}, Lorg/locationtech/jts/operation/relate/RelateComputer;->copyNodesAndLabels(I)V

    .line 103
    invoke-direct {p0}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedNodes()V

    .line 107
    invoke-direct {p0, v4, v3}, Lorg/locationtech/jts/operation/relate/RelateComputer;->computeProperIntersectionIM(Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 116
    new-instance v2, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;

    invoke-direct {v2}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;-><init>()V

    .line 117
    .local v2, "eeBuilder":Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->computeEdgeEnds(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "ee0":Ljava/util/List;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/relate/RelateComputer;->insertEdgeEnds(Ljava/util/List;)V

    .line 119
    iget-object v5, p0, Lorg/locationtech/jts/operation/relate/RelateComputer;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/locationtech/jts/operation/relate/EdgeEndBuilder;->computeEdgeEnds(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "ee1":Ljava/util/List;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/relate/RelateComputer;->insertEdgeEnds(Ljava/util/List;)V

    .line 125
    invoke-direct {p0}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelNodeEdges()V

    .line 137
    invoke-direct {p0, v8, v9}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedEdges(II)V

    .line 139
    invoke-direct {p0, v9, v8}, Lorg/locationtech/jts/operation/relate/RelateComputer;->labelIsolatedEdges(II)V

    .line 142
    invoke-direct {p0, v3}, Lorg/locationtech/jts/operation/relate/RelateComputer;->updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    goto :goto_0
.end method
