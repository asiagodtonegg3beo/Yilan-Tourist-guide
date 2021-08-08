.class public Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;
.super Lorg/locationtech/jts/planargraph/PlanarGraph;
.source "LineMergeGraph.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/locationtech/jts/planargraph/PlanarGraph;-><init>()V

    return-void
.end method

.method private getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;
    .locals 1
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->findNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v0

    .line 63
    .local v0, "node":Lorg/locationtech/jts/planargraph/Node;
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/locationtech/jts/planargraph/Node;

    .end local v0    # "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/planargraph/Node;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 65
    .restart local v0    # "node":Lorg/locationtech/jts/planargraph/Node;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->add(Lorg/locationtech/jts/planargraph/Node;)V

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEdge(Lorg/locationtech/jts/geom/LineString;)V
    .locals 11
    .param p1, "lineString"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 41
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-static {v8}, Lorg/locationtech/jts/geom/CoordinateArrays;->removeRepeatedPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 46
    .local v0, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v0

    if-le v8, v9, :cond_0

    .line 48
    aget-object v6, v0, v10

    .line 49
    .local v6, "startCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v4, v0, v8

    .line 50
    .local v4, "endCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v6}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v7

    .line 51
    .local v7, "startNode":Lorg/locationtech/jts/planargraph/Node;
    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->getNode(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/planargraph/Node;

    move-result-object v5

    .line 52
    .local v5, "endNode":Lorg/locationtech/jts/planargraph/Node;
    new-instance v1, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    aget-object v8, v0, v9

    invoke-direct {v1, v7, v5, v8, v9}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 54
    .local v1, "directedEdge0":Lorg/locationtech/jts/planargraph/DirectedEdge;
    new-instance v2, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v0, v8

    invoke-direct {v2, v5, v7, v8, v10}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 56
    .local v2, "directedEdge1":Lorg/locationtech/jts/planargraph/DirectedEdge;
    new-instance v3, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;

    invoke-direct {v3, p1}, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;-><init>(Lorg/locationtech/jts/geom/LineString;)V

    .line 57
    .local v3, "edge":Lorg/locationtech/jts/planargraph/Edge;
    invoke-virtual {v3, v1, v2}, Lorg/locationtech/jts/planargraph/Edge;->setDirectedEdges(Lorg/locationtech/jts/planargraph/DirectedEdge;Lorg/locationtech/jts/planargraph/DirectedEdge;)V

    .line 58
    invoke-virtual {p0, v3}, Lorg/locationtech/jts/operation/linemerge/LineMergeGraph;->add(Lorg/locationtech/jts/planargraph/Edge;)V

    goto :goto_0
.end method
