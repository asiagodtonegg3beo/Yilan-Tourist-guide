.class public Lorg/locationtech/jts/operation/linemerge/EdgeString;
.super Ljava/lang/Object;
.source "EdgeString.java"


# instance fields
.field private coordinates:[Lorg/locationtech/jts/geom/Coordinate;

.field private directedEdges:Ljava/util/List;

.field private factory:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->directedEdges:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    .line 41
    iput-object p1, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 42
    return-void
.end method

.method private getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    .line 52
    iget-object v5, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    if-nez v5, :cond_2

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "forwardDirectedEdges":I
    const/4 v4, 0x0

    .line 55
    .local v4, "reverseDirectedEdges":I
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 56
    .local v0, "coordinateList":Lorg/locationtech/jts/geom/CoordinateList;
    iget-object v5, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->directedEdges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    .line 58
    .local v1, "directedEdge":Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getEdgeDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 64
    :goto_1
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getEdge()Lorg/locationtech/jts/planargraph/Edge;

    move-result-object v5

    check-cast v5, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;

    invoke-virtual {v5}, Lorg/locationtech/jts/operation/linemerge/LineMergeEdge;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    const/4 v6, 0x0

    .line 66
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;->getEdgeDirection()Z

    move-result v7

    .line 64
    invoke-virtual {v0, v5, v6, v7}, Lorg/locationtech/jts/geom/CoordinateList;->add([Lorg/locationtech/jts/geom/Coordinate;ZZ)Z

    goto :goto_0

    .line 62
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "directedEdge":Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    iput-object v5, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    .line 69
    if-le v4, v2, :cond_2

    .line 70
    iget-object v5, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v5}, Lorg/locationtech/jts/geom/CoordinateArrays;->reverse([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 74
    .end local v0    # "coordinateList":Lorg/locationtech/jts/geom/CoordinateList;
    .end local v2    # "forwardDirectedEdges":I
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "reverseDirectedEdges":I
    :cond_2
    iget-object v5, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->coordinates:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v5
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;)V
    .locals 1
    .param p1, "directedEdge"    # Lorg/locationtech/jts/operation/linemerge/LineMergeDirectedEdge;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->directedEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public toLineString()Lorg/locationtech/jts/geom/LineString;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/operation/linemerge/EdgeString;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/operation/linemerge/EdgeString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method
