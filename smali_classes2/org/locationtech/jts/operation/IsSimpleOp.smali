.class public Lorg/locationtech/jts/operation/IsSimpleOp;
.super Ljava/lang/Object;
.source "IsSimpleOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    }
.end annotation


# instance fields
.field private inputGeom:Lorg/locationtech/jts/geom/Geometry;

.field private isClosedEndpointsInInterior:Z

.field private nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->isClosedEndpointsInInterior:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->isClosedEndpointsInInterior:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 103
    iput-object p1, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->isClosedEndpointsInInterior:Z

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 114
    iput-object p1, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 115
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->isInBoundary(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->isClosedEndpointsInInterior:Z

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addEndpoint(Ljava/util/Map;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 1
    .param p1, "endPoints"    # Ljava/util/Map;
    .param p2, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "isClosed"    # Z

    .prologue
    .line 337
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;

    .line 338
    .local v0, "eiInfo":Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;

    .end local v0    # "eiInfo":Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    invoke-direct {v0, p2}, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 340
    .restart local v0    # "eiInfo":Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    invoke-virtual {v0, p3}, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->addEndpoint(Z)V

    .line 343
    return-void
.end method

.method private computeSimple(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x1

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 132
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    :goto_0
    return v0

    .line 133
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    instance-of v1, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_2
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 135
    :cond_3
    instance-of v1, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;)Z

    move-result v0

    goto :goto_0

    .line 136
    .restart local p1    # "geom":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v1, p1, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimplePolygonal(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_5
    instance-of v1, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    goto :goto_0
.end method

.method private hasClosedEndpointIntersection(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z
    .locals 11
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    const/4 v8, 0x0

    .line 311
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 312
    .local v2, "endPoints":Ljava/util/Map;
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 314
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getMaximumSegmentIndex()I

    move-result v5

    .line 315
    .local v5, "maxSegmentIndex":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->isClosed()Z

    move-result v4

    .line 316
    .local v4, "isClosed":Z
    invoke-virtual {v0, v8}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 317
    .local v6, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v2, v6, v4}, Lorg/locationtech/jts/operation/IsSimpleOp;->addEndpoint(Ljava/util/Map;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 318
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getNumPoints()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    .line 319
    .local v7, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v2, v7, v4}, Lorg/locationtech/jts/operation/IsSimpleOp;->addEndpoint(Ljava/util/Map;Lorg/locationtech/jts/geom/Coordinate;Z)V

    goto :goto_0

    .line 322
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v4    # "isClosed":Z
    .end local v5    # "maxSegmentIndex":I
    .end local v6    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v7    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 323
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;

    .line 324
    .local v1, "eiInfo":Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    iget-boolean v9, v1, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->isClosed:Z

    if-eqz v9, :cond_1

    iget v9, v1, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->degree:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 325
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    iput-object v8, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 326
    const/4 v8, 0x1

    .line 329
    .end local v1    # "eiInfo":Lorg/locationtech/jts/operation/IsSimpleOp$EndpointInfo;
    :cond_2
    return v8
.end method

.method private hasNonEndpointIntersection(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z
    .locals 6
    .param p1, "graph"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .prologue
    .line 266
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getEdgeIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 268
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getMaximumSegmentIndex()I

    move-result v4

    .line 269
    .local v4, "maxSegmentIndex":I
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getEdgeIntersectionList()Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eiIt":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 271
    .local v1, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    invoke-virtual {v1, v4}, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->isEndPoint(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 273
    const/4 v5, 0x1

    .line 277
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v2    # "eiIt":Ljava/util/Iterator;
    .end local v4    # "maxSegmentIndex":I
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isSimpleGeometryCollection(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 234
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 235
    .local v0, "comp":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/IsSimpleOp;->computeSimple(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 238
    .end local v0    # "comp":Lorg/locationtech/jts/geom/Geometry;
    :goto_1
    return v2

    .line 233
    .restart local v0    # "comp":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "comp":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 243
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    new-instance v0, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v0, v4, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    .line 245
    .local v0, "graph":Lorg/locationtech/jts/geomgraph/GeometryGraph;
    new-instance v1, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v1}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    .line 246
    .local v1, "li":Lorg/locationtech/jts/algorithm/LineIntersector;
    invoke-virtual {v0, v1, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    move-result-object v2

    .line 248
    .local v2, "si":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasIntersection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->hasProperIntersection()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->getProperIntersectionPoint()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    iput-object v3, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    move v3, v4

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/IsSimpleOp;->hasNonEndpointIntersection(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 254
    :cond_3
    iget-boolean v5, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->isClosedEndpointsInInterior:Z

    if-eqz v5, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/IsSimpleOp;->hasClosedEndpointIntersection(Lorg/locationtech/jts/geomgraph/GeometryGraph;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private isSimpleMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;)Z
    .locals 6
    .param p1, "mp"    # Lorg/locationtech/jts/geom/MultiPoint;

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v4

    .line 192
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 193
    .local v2, "points":Ljava/util/Set;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/MultiPoint;->getNumGeometries()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 194
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/MultiPoint;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Point;

    .line 195
    .local v3, "pt":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 196
    .local v1, "p":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    iput-object v1, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 198
    const/4 v4, 0x0

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSimplePolygonal(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 4
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 215
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "rings":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LinearRing;

    .line 218
    .local v1, "ring":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const/4 v3, 0x0

    .line 221
    .end local v1    # "ring":Lorg/locationtech/jts/geom/LinearRing;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNonSimpleLocation()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isSimple()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->nonSimpleLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 126
    iget-object v0, p0, Lorg/locationtech/jts/operation/IsSimpleOp;->inputGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/IsSimpleOp;->computeSimple(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isSimple(Lorg/locationtech/jts/geom/LineString;)Z
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isSimple(Lorg/locationtech/jts/geom/MultiLineString;)Z
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiLineString;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleLinearGeometry(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isSimple(Lorg/locationtech/jts/geom/MultiPoint;)Z
    .locals 1
    .param p1, "mp"    # Lorg/locationtech/jts/geom/MultiPoint;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/IsSimpleOp;->isSimpleMultiPoint(Lorg/locationtech/jts/geom/MultiPoint;)Z

    move-result v0

    return v0
.end method
