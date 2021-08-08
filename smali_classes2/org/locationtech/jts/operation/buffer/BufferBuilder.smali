.class Lorg/locationtech/jts/operation/buffer/BufferBuilder;
.super Ljava/lang/Object;
.source "BufferBuilder.java"


# instance fields
.field private bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

.field private edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

.field private geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

.field private workingNoder:Lorg/locationtech/jts/noding/Noder;

.field private workingPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/operation/buffer/BufferParameters;)V
    .locals 1
    .param p1, "bufParams"    # Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-direct {v0}, Lorg/locationtech/jts/geomgraph/EdgeList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    .line 91
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    .line 92
    return-void
.end method

.method private buildSubgraphs(Ljava/util/List;Lorg/locationtech/jts/operation/overlay/PolygonBuilder;)V
    .locals 8
    .param p1, "subgraphList"    # Ljava/util/List;
    .param p2, "polyBuilder"    # Lorg/locationtech/jts/operation/overlay/PolygonBuilder;

    .prologue
    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "processedGraphs":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;

    .line 281
    .local v5, "subgraph":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->getRightmostCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 285
    .local v3, "p":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;

    invoke-direct {v1, v4}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;-><init>(Ljava/util/List;)V

    .line 286
    .local v1, "locater":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;
    invoke-virtual {v1, v3}, Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;->getDepth(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 288
    .local v2, "outsideDepth":I
    invoke-virtual {v5, v2}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->computeDepth(I)V

    .line 295
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->findResultEdges()V

    .line 296
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v5}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->getDirectedEdges()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->getNodes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->add(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 299
    .end local v1    # "locater":Lorg/locationtech/jts/operation/buffer/SubgraphDepthLocater;
    .end local v2    # "outsideDepth":I
    .end local v3    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "subgraph":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    :cond_0
    return-void
.end method

.method private computeNodedEdges(Ljava/util/List;Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 9
    .param p1, "bufferSegStrList"    # Ljava/util/List;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 184
    invoke-direct {p0, p2}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->getNoder(Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/noding/Noder;

    move-result-object v3

    .line 185
    .local v3, "noder":Lorg/locationtech/jts/noding/Noder;
    invoke-interface {v3, p1}, Lorg/locationtech/jts/noding/Noder;->computeNodes(Ljava/util/Collection;)V

    .line 186
    invoke-interface {v3}, Lorg/locationtech/jts/noding/Noder;->getNodedSubstrings()Ljava/util/Collection;

    move-result-object v2

    .line 190
    .local v2, "nodedSegStrings":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/noding/SegmentString;

    .line 197
    .local v6, "segStr":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v6}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 198
    .local v5, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    :cond_1
    invoke-interface {v6}, Lorg/locationtech/jts/noding/SegmentString;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/Label;

    .line 202
    .local v4, "oldLabel":Lorg/locationtech/jts/geomgraph/Label;
    new-instance v0, Lorg/locationtech/jts/geomgraph/Edge;

    invoke-interface {v6}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    new-instance v8, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v8, v4}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    invoke-direct {v0, v7, v8}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 203
    .local v0, "edge":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->insertUniqueEdge(Lorg/locationtech/jts/geomgraph/Edge;)V

    goto :goto_0

    .line 206
    .end local v0    # "edge":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v4    # "oldLabel":Lorg/locationtech/jts/geomgraph/Label;
    .end local v5    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "segStr":Lorg/locationtech/jts/noding/SegmentString;
    :cond_2
    return-void
.end method

.method private static convertSegStrings(Ljava/util/Iterator;)Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .param p0, "it"    # Ljava/util/Iterator;

    .prologue
    .line 303
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 304
    .local v0, "fact":Lorg/locationtech/jts/geom/GeometryFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "lines":Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/noding/SegmentString;

    .line 307
    .local v3, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 308
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v1    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v3    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    return-object v4
.end method

.method private createEmptyResultGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v2, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    .line 323
    .local v0, "emptyGeom":Lorg/locationtech/jts/geom/Geometry;
    return-object v0
.end method

.method private createSubgraphs(Lorg/locationtech/jts/geomgraph/PlanarGraph;)Ljava/util/List;
    .locals 5
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .prologue
    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v3, "subgraphList":Ljava/util/List;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->getNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/Node;

    .line 252
    .local v1, "node":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->isVisited()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    new-instance v2, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;

    invoke-direct {v2}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;-><init>()V

    .line 254
    .local v2, "subgraph":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/operation/buffer/BufferSubgraph;->create(Lorg/locationtech/jts/geomgraph/Node;)V

    .line 255
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v1    # "node":Lorg/locationtech/jts/geomgraph/Node;
    .end local v2    # "subgraph":Lorg/locationtech/jts/operation/buffer/BufferSubgraph;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    return-object v3
.end method

.method private static depthDelta(Lorg/locationtech/jts/geomgraph/Label;)I
    .locals 5
    .param p0, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v3, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v0

    .line 70
    .local v0, "lLoc":I
    invoke-virtual {p0, v3, v4}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v1

    .line 71
    .local v1, "rLoc":I
    if-nez v0, :cond_0

    if-ne v1, v4, :cond_0

    .line 75
    :goto_0
    return v2

    .line 73
    :cond_0
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 74
    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 75
    goto :goto_0
.end method

.method private getNoder(Lorg/locationtech/jts/geom/PrecisionModel;)Lorg/locationtech/jts/noding/Noder;
    .locals 3
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 167
    iget-object v2, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->workingNoder:Lorg/locationtech/jts/noding/Noder;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->workingNoder:Lorg/locationtech/jts/noding/Noder;

    .line 175
    :goto_0
    return-object v1

    .line 170
    :cond_0
    new-instance v1, Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {v1}, Lorg/locationtech/jts/noding/MCIndexNoder;-><init>()V

    .line 171
    .local v1, "noder":Lorg/locationtech/jts/noding/MCIndexNoder;
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    .line 172
    .local v0, "li":Lorg/locationtech/jts/algorithm/LineIntersector;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 173
    new-instance v2, Lorg/locationtech/jts/noding/IntersectionAdder;

    invoke-direct {v2, v0}, Lorg/locationtech/jts/noding/IntersectionAdder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/noding/MCIndexNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    goto :goto_0
.end method


# virtual methods
.method public buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "distance"    # D

    .prologue
    .line 119
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->workingPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 120
    .local v4, "precisionModel":Lorg/locationtech/jts/geom/PrecisionModel;
    if-nez v4, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v4

    .line 124
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v8

    iput-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 126
    new-instance v1, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->bufParams:Lorg/locationtech/jts/operation/buffer/BufferParameters;

    invoke-direct {v1, v4, v8}, Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;Lorg/locationtech/jts/operation/buffer/BufferParameters;)V

    .line 128
    .local v1, "curveBuilder":Lorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;
    new-instance v2, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;-><init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/operation/buffer/OffsetCurveBuilder;)V

    .line 130
    .local v2, "curveSetBuilder":Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/buffer/OffsetCurveSetBuilder;->getCurves()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "bufferSegStrList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 134
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->createEmptyResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 162
    :goto_0
    return-object v5

    .line 147
    :cond_1
    invoke-direct {p0, v0, v4}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->computeNodedEdges(Ljava/util/List;Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 148
    new-instance v8, Lorg/locationtech/jts/geomgraph/PlanarGraph;

    new-instance v9, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;

    invoke-direct {v9}, Lorg/locationtech/jts/operation/overlay/OverlayNodeFactory;-><init>()V

    invoke-direct {v8, v9}, Lorg/locationtech/jts/geomgraph/PlanarGraph;-><init>(Lorg/locationtech/jts/geomgraph/NodeFactory;)V

    iput-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    .line 149
    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    iget-object v9, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v9}, Lorg/locationtech/jts/geomgraph/EdgeList;->getEdges()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/locationtech/jts/geomgraph/PlanarGraph;->addEdges(Ljava/util/List;)V

    .line 151
    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->graph:Lorg/locationtech/jts/geomgraph/PlanarGraph;

    invoke-direct {p0, v8}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->createSubgraphs(Lorg/locationtech/jts/geomgraph/PlanarGraph;)Ljava/util/List;

    move-result-object v7

    .line 152
    .local v7, "subgraphList":Ljava/util/List;
    new-instance v3, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;

    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v3, v8}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 153
    .local v3, "polyBuilder":Lorg/locationtech/jts/operation/overlay/PolygonBuilder;
    invoke-direct {p0, v7, v3}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->buildSubgraphs(Ljava/util/List;Lorg/locationtech/jts/operation/overlay/PolygonBuilder;)V

    .line 154
    invoke-virtual {v3}, Lorg/locationtech/jts/operation/overlay/PolygonBuilder;->getPolygons()Ljava/util/List;

    move-result-object v6

    .line 157
    .local v6, "resultPolyList":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 158
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->createEmptyResultGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    goto :goto_0

    .line 161
    :cond_2
    iget-object v8, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->geomFact:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v8, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 162
    .local v5, "resultGeom":Lorg/locationtech/jts/geom/Geometry;
    goto :goto_0
.end method

.method protected insertUniqueEdge(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 7
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    .line 218
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/EdgeList;->findEqualEdge(Lorg/locationtech/jts/geomgraph/Edge;)Lorg/locationtech/jts/geomgraph/Edge;

    move-result-object v1

    .line 221
    .local v1, "existingEdge":Lorg/locationtech/jts/geomgraph/Edge;
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v2

    .line 224
    .local v2, "existingLabel":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v3

    .line 227
    .local v3, "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geomgraph/Edge;->isPointwiseEqual(Lorg/locationtech/jts/geomgraph/Edge;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    new-instance v3, Lorg/locationtech/jts/geomgraph/Label;

    .end local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/locationtech/jts/geomgraph/Label;-><init>(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 229
    .restart local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Label;->flip()V

    .line 231
    :cond_0
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geomgraph/Label;->merge(Lorg/locationtech/jts/geomgraph/Label;)V

    .line 234
    invoke-static {v3}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->depthDelta(Lorg/locationtech/jts/geomgraph/Label;)I

    move-result v4

    .line 235
    .local v4, "mergeDelta":I
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Edge;->getDepthDelta()I

    move-result v0

    .line 236
    .local v0, "existingDelta":I
    add-int v5, v0, v4

    .line 237
    .local v5, "newDelta":I
    invoke-virtual {v1, v5}, Lorg/locationtech/jts/geomgraph/Edge;->setDepthDelta(I)V

    .line 245
    .end local v0    # "existingDelta":I
    .end local v2    # "existingLabel":Lorg/locationtech/jts/geomgraph/Label;
    .end local v3    # "labelToMerge":Lorg/locationtech/jts/geomgraph/Label;
    .end local v4    # "mergeDelta":I
    .end local v5    # "newDelta":I
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->edgeList:Lorg/locationtech/jts/geomgraph/EdgeList;

    invoke-virtual {v6, p1}, Lorg/locationtech/jts/geomgraph/EdgeList;->add(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 243
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v6

    invoke-static {v6}, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->depthDelta(Lorg/locationtech/jts/geomgraph/Label;)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geomgraph/Edge;->setDepthDelta(I)V

    goto :goto_0
.end method

.method public setNoder(Lorg/locationtech/jts/noding/Noder;)V
    .locals 0
    .param p1, "noder"    # Lorg/locationtech/jts/noding/Noder;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->workingNoder:Lorg/locationtech/jts/noding/Noder;

    return-void
.end method

.method public setWorkingPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 0
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/BufferBuilder;->workingPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 105
    return-void
.end method
