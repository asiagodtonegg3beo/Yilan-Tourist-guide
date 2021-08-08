.class public Lorg/locationtech/jts/geomgraph/GeometryGraph;
.super Lorg/locationtech/jts/geomgraph/PlanarGraph;
.source "GeometryGraph.java"


# instance fields
.field private areaPtLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

.field private argIndex:I

.field private boundaryNodeRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field private boundaryNodes:Ljava/util/Collection;

.field private hasTooFewPoints:Z

.field private invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

.field private lineEdgeMap:Ljava/util/Map;

.field private parentGeom:Lorg/locationtech/jts/geom/Geometry;

.field private final ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

.field private useBoundaryDeterminationRule:Z


# direct methods
.method public constructor <init>(ILorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "argIndex"    # I
    .param p2, "parentGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 125
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 128
    return-void
.end method

.method public constructor <init>(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 2
    .param p1, "argIndex"    # I
    .param p2, "parentGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/PlanarGraph;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->lineEdgeMap:Ljava/util/Map;

    .line 93
    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodeRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->useBoundaryDeterminationRule:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->hasTooFewPoints:Z

    .line 103
    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 105
    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->areaPtLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 107
    new-instance v0, Lorg/locationtech/jts/algorithm/PointLocator;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/PointLocator;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    .line 131
    iput p1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    .line 132
    iput-object p2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 133
    iput-object p3, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodeRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 134
    if-eqz p2, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 139
    :cond_0
    return-void
.end method

.method private add(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-void

    .line 202
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->useBoundaryDeterminationRule:Z

    .line 205
    :cond_1
    instance-of v0, p1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addPolygon(Lorg/locationtech/jts/geom/Polygon;)V

    goto :goto_0

    .line 207
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_2
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/locationtech/jts/geom/LineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addLineString(Lorg/locationtech/jts/geom/LineString;)V

    goto :goto_0

    .line 208
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_3
    instance-of v0, p1, Lorg/locationtech/jts/geom/Point;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/locationtech/jts/geom/Point;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addPoint(Lorg/locationtech/jts/geom/Point;)V

    goto :goto_0

    .line 209
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_4
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPoint;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/locationtech/jts/geom/MultiPoint;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 210
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_5
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiLineString;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/locationtech/jts/geom/MultiLineString;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 211
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_6
    instance-of v0, p1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/locationtech/jts/geom/MultiPolygon;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 212
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_7
    instance-of v0, p1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V

    goto :goto_0

    .line 213
    .restart local p1    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addCollection(Lorg/locationtech/jts/geom/GeometryCollection;)V
    .locals 3
    .param p1, "gc"    # Lorg/locationtech/jts/geom/GeometryCollection;

    .prologue
    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryCollection;->getNumGeometries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 219
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryCollection;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 220
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->add(Lorg/locationtech/jts/geom/Geometry;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-void
.end method

.method private addLineString(Lorg/locationtech/jts/geom/LineString;)V
    .locals 7
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-static {v4}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 292
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v4, v0

    if-ge v4, v6, :cond_0

    .line 293
    iput-boolean v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->hasTooFewPoints:Z

    .line 294
    aget-object v2, v0, v3

    iput-object v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    .line 312
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v1, Lorg/locationtech/jts/geomgraph/Edge;

    new-instance v4, Lorg/locationtech/jts/geomgraph/Label;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    invoke-direct {v4, v5, v3}, Lorg/locationtech/jts/geomgraph/Label;-><init>(II)V

    invoke-direct {v1, v0, v4}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 301
    .local v1, "e":Lorg/locationtech/jts/geomgraph/Edge;
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->lineEdgeMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertEdge(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 308
    array-length v4, v0

    if-lt v4, v6, :cond_1

    :goto_1
    const-string v4, "found LineString with single point"

    invoke-static {v2, v4}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 309
    iget v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    aget-object v3, v0, v3

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertBoundaryPoint(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 310
    iget v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertBoundaryPoint(ILorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 308
    goto :goto_1
.end method

.method private addPoint(Lorg/locationtech/jts/geom/Point;)V
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Point;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 229
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    iget v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    .line 230
    return-void
.end method

.method private addPolygon(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 5
    .param p1, "p"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 270
    .line 271
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    .line 270
    invoke-direct {p0, v2, v4, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addPolygonRing(Lorg/locationtech/jts/geom/LinearRing;II)V

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 276
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LinearRing;

    .line 281
    .local v0, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0, v0, v3, v4}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addPolygonRing(Lorg/locationtech/jts/geom/LinearRing;II)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_0
    return-void
.end method

.method private addPolygonRing(Lorg/locationtech/jts/geom/LinearRing;II)V
    .locals 8
    .param p1, "lr"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "cwLeft"    # I
    .param p3, "cwRight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 243
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-static {v4}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 247
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 248
    iput-boolean v6, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->hasTooFewPoints:Z

    .line 249
    aget-object v4, v0, v7

    iput-object v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0

    .line 253
    :cond_1
    move v2, p2

    .line 254
    .local v2, "left":I
    move v3, p3

    .line 255
    .local v3, "right":I
    invoke-static {v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    move v2, p3

    .line 257
    move v3, p2

    .line 259
    :cond_2
    new-instance v1, Lorg/locationtech/jts/geomgraph/Edge;

    new-instance v4, Lorg/locationtech/jts/geomgraph/Label;

    iget v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    invoke-direct {v4, v5, v6, v2, v3}, Lorg/locationtech/jts/geomgraph/Label;-><init>(IIII)V

    invoke-direct {v1, v0, v4}, Lorg/locationtech/jts/geomgraph/Edge;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/Label;)V

    .line 261
    .local v1, "e":Lorg/locationtech/jts/geomgraph/Edge;
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->lineEdgeMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertEdge(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 265
    iget v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    aget-object v5, v0, v7

    invoke-direct {p0, v4, v5, v6}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_0
.end method

.method private addSelfIntersectionNode(ILorg/locationtech/jts/geom/Coordinate;I)V
    .locals 1
    .param p1, "argIndex"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "loc"    # I

    .prologue
    .line 449
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->isBoundaryNode(ILorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->useBoundaryDeterminationRule:Z

    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertBoundaryPoint(ILorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_0
.end method

.method private addSelfIntersectionNodes(I)V
    .locals 6
    .param p1, "argIndex"    # I

    .prologue
    .line 431
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->edges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 433
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Edge;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    .line 434
    .local v1, "eLoc":I
    iget-object v5, v0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    invoke-virtual {v5}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "eiIt":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 436
    .local v2, "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget-object v5, v2, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, p1, v5, v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addSelfIntersectionNode(ILorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_0

    .line 439
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    .end local v1    # "eLoc":I
    .end local v2    # "ei":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    .end local v3    # "eiIt":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private createEdgeSetIntersector()Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/geomgraph/index/SimpleMCSweepLineIntersector;-><init>()V

    return-object v0
.end method

.method public static determineBoundary(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;I)I
    .locals 1
    .param p0, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;
    .param p1, "boundaryCount"    # I

    .prologue
    .line 80
    invoke-interface {p0, p1}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->isInBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertBoundaryPoint(ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "argIndex"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 414
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v5, p2}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v3

    .line 416
    .local v3, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v3}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v1

    .line 418
    .local v1, "lbl":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v0, 0x1

    .line 420
    .local v0, "boundaryCount":I
    const/4 v2, -0x1

    .line 421
    .local v2, "loc":I
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    .line 422
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 425
    :cond_0
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodeRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-static {v5, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->determineBoundary(Lorg/locationtech/jts/algorithm/BoundaryNodeRule;I)I

    move-result v4

    .line 426
    .local v4, "newLoc":I
    invoke-virtual {v1, p1, v4}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 427
    return-void
.end method

.method private insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V
    .locals 3
    .param p1, "argIndex"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "onLocation"    # I

    .prologue
    .line 398
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/geomgraph/NodeMap;->addNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geomgraph/Node;

    move-result-object v1

    .line 399
    .local v1, "n":Lorg/locationtech/jts/geomgraph/Node;
    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/Node;->getLabel()Lorg/locationtech/jts/geomgraph/Label;

    move-result-object v0

    .line 400
    .local v0, "lbl":Lorg/locationtech/jts/geomgraph/Label;
    if-nez v0, :cond_0

    .line 401
    new-instance v2, Lorg/locationtech/jts/geomgraph/Label;

    invoke-direct {v2, p1, p3}, Lorg/locationtech/jts/geomgraph/Label;-><init>(II)V

    iput-object v2, v1, Lorg/locationtech/jts/geomgraph/Node;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {v0, p1, p3}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    goto :goto_0
.end method


# virtual methods
.method public addEdge(Lorg/locationtech/jts/geomgraph/Edge;)V
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/Edge;

    .prologue
    const/4 v3, 0x1

    .line 320
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertEdge(Lorg/locationtech/jts/geomgraph/Edge;)V

    .line 321
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/Edge;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 323
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    iget v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    .line 324
    iget v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    .line 325
    return-void
.end method

.method public addPoint(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 333
    iget v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->insertPoint(ILorg/locationtech/jts/geom/Coordinate;I)V

    .line 334
    return-void
.end method

.method public computeEdgeIntersections(Lorg/locationtech/jts/geomgraph/GeometryGraph;Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geomgraph/GeometryGraph;
    .param p2, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p3, "includeProper"    # Z

    .prologue
    .line 382
    new-instance v1, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p3, v2}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)V

    .line 383
    .local v1, "si":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getBoundaryNodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getBoundaryNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->setBoundaryNodes(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 385
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->createEdgeSetIntersector()Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;

    move-result-object v0

    .line 386
    .local v0, "esi":Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->edges:Ljava/util/List;

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/GeometryGraph;->edges:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v1}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;->computeIntersections(Ljava/util/List;Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 393
    return-object v1
.end method

.method public computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;Z)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .locals 1
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "computeRingSelfNodes"    # Z

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    move-result-object v0

    return-object v0
.end method

.method public computeSelfNodes(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    .locals 6
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "computeRingSelfNodes"    # Z
    .param p3, "isDoneIfProperInt"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 362
    new-instance v3, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    invoke-direct {v3, p1, v4, v0}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;ZZ)V

    .line 363
    .local v3, "si":Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;
    invoke-virtual {v3, p3}, Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;->setIsDoneIfProperInt(Z)V

    .line 364
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->createEdgeSetIntersector()Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;

    move-result-object v1

    .line 366
    .local v1, "esi":Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;
    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v5, v5, Lorg/locationtech/jts/geom/LinearRing;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v5, v5, Lorg/locationtech/jts/geom/Polygon;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v5, v5, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v5, :cond_3

    :cond_0
    move v2, v4

    .line 369
    .local v2, "isRings":Z
    :goto_0
    if-nez p2, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v0, v4

    .line 370
    .local v0, "computeAllSegments":Z
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->edges:Ljava/util/List;

    invoke-virtual {v1, v4, v3, v0}, Lorg/locationtech/jts/geomgraph/index/EdgeSetIntersector;->computeIntersections(Ljava/util/List;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;Z)V

    .line 373
    iget v4, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    invoke-direct {p0, v4}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->addSelfIntersectionNodes(I)V

    .line 374
    return-object v3

    .end local v0    # "computeAllSegments":Z
    .end local v2    # "isRings":Z
    :cond_3
    move v2, v0

    .line 366
    goto :goto_0
.end method

.method public computeSplitEdges(Ljava/util/List;)V
    .locals 3
    .param p1, "edgelist"    # Ljava/util/List;

    .prologue
    .line 191
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->edges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    .line 193
    .local v0, "e":Lorg/locationtech/jts/geomgraph/Edge;
    iget-object v2, v0, Lorg/locationtech/jts/geomgraph/Edge;->eiList:Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/geomgraph/EdgeIntersectionList;->addSplitEdges(Ljava/util/List;)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Lorg/locationtech/jts/geomgraph/Edge;
    :cond_0
    return-void
.end method

.method public findEdge(Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geomgraph/Edge;
    .locals 1
    .param p1, "line"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->lineEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geomgraph/Edge;

    return-object v0
.end method

.method public getBoundaryNodeRule()Lorg/locationtech/jts/algorithm/BoundaryNodeRule;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodeRule:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    return-object v0
.end method

.method public getBoundaryNodes()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodes:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->nodes:Lorg/locationtech/jts/geomgraph/NodeMap;

    iget v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->argIndex:I

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geomgraph/NodeMap;->getBoundaryNodes(I)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodes:Ljava/util/Collection;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->boundaryNodes:Ljava/util/Collection;

    return-object v0
.end method

.method public getBoundaryPoints()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 7

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getBoundaryNodes()Ljava/util/Collection;

    move-result-object v0

    .line 175
    .local v0, "coll":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v5, v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 176
    .local v5, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .line 177
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geomgraph/Node;

    .line 179
    .local v4, "node":Lorg/locationtech/jts/geomgraph/Node;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Lorg/locationtech/jts/geomgraph/Node;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/locationtech/jts/geom/Coordinate;

    aput-object v6, v5, v1

    move v1, v2

    .line 180
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 181
    .end local v4    # "node":Lorg/locationtech/jts/geomgraph/Node;
    :cond_0
    return-object v5
.end method

.method public getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getInvalidPoint()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->invalidPoint:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public hasTooFewPoints()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->hasTooFewPoints:Z

    return v0
.end method

.method public locate(Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 466
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    instance-of v0, v0, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->areaPtLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->areaPtLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->areaPtLocator:Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;

    invoke-interface {v0, p1}, Lorg/locationtech/jts/algorithm/locate/PointOnGeometryLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 473
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->ptLocator:Lorg/locationtech/jts/algorithm/PointLocator;

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/GeometryGraph;->parentGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/algorithm/PointLocator;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)I

    move-result v0

    goto :goto_0
.end method
