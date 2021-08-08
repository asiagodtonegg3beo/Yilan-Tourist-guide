.class public Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
.super Ljava/lang/Object;
.source "QuadEdgeTriangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 2
    .param p1, "edge"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    check-cast v1, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iput-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 138
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setData(Ljava/lang/Object;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public static contains([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p0, "tri"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, p0, v3

    .line 91
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, p0, v4

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aget-object v2, p0, v2

    .line 92
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    .local v0, "ring":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    return v1
.end method

.method public static contains([Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p0, "tri"    # [Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, p0, v3

    .line 75
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, p0, v4

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    .local v0, "ring":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    return v1
.end method

.method public static createOn(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)Ljava/util/List;
    .locals 2
    .param p0, "subdiv"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;

    .prologue
    .line 58
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;

    invoke-direct {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;-><init>()V

    .line 59
    .local v0, "visitor":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V

    .line 60
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;->getTriangles()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static nextIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 123
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 p0, v0, 0x3

    return p0
.end method

.method public static toPolygon([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p0, "e"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    const/4 v4, 0x4

    new-array v2, v4, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, p0, v5

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v5

    aget-object v4, p0, v6

    .line 107
    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v6

    aget-object v4, p0, v7

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x3

    aget-object v5, p0, v5

    .line 108
    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    aput-object v5, v2, v4

    .line 109
    .local v2, "ringPts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 110
    .local v0, "fact":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    .line 111
    .local v1, "ring":Lorg/locationtech/jts/geom/LinearRing;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    .line 112
    .local v3, "tri":Lorg/locationtech/jts/geom/Polygon;
    return-object v3
.end method

.method public static toPolygon([Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p0, "v"    # [Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    const/4 v4, 0x4

    new-array v2, v4, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, p0, v5

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v5

    aget-object v4, p0, v6

    .line 98
    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v6

    aget-object v4, p0, v7

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x3

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    aput-object v5, v2, v4

    .line 99
    .local v2, "ringPts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 100
    .local v0, "fact":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    .line 101
    .local v1, "ring":Lorg/locationtech/jts/geom/LinearRing;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    .line 102
    .local v3, "tri":Lorg/locationtech/jts/geom/Polygon;
    return-object v3
.end method


# virtual methods
.method public contains(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 246
    .local v0, "ring":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {p1, v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    return v1
.end method

.method public getAdjacentTriangleAcrossEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    .locals 1
    .param p1, "edgeIndex"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    return-object v0
.end method

.method public getAdjacentTriangleEdgeIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getAdjacentTriangleAcrossEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdgeIndex(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)I

    move-result v0

    return v0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 236
    const/4 v2, 0x4

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 237
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 238
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v2, v1, v4

    .line 241
    return-object v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEdgeIndex(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)I
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 210
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 206
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEdgeIndex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)I
    .locals 2
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 226
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 222
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEdgeSegment(ILorg/locationtech/jts/geom/LineSegment;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 230
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iput-object v1, p2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 231
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v0, v1, 0x3

    .line 232
    .local v0, "nexti":I
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    iput-object v1, p2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 233
    return-void
.end method

.method public getEdges()[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    return-object v0
.end method

.method public getGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;
    .locals 3
    .param p1, "fact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 251
    .local v0, "ring":Lorg/locationtech/jts/geom/LinearRing;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    .line 252
    .local v1, "tri":Lorg/locationtech/jts/geom/Polygon;
    return-object v1
.end method

.method public getNeighbours()[Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 316
    new-array v1, v3, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .line 317
    .local v1, "neigh":[Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    aput-object v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-object v1
.end method

.method public getTrianglesAdjacentToVertex(I)Ljava/util/List;
    .locals 4
    .param p1, "vertexIndex"    # I

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "adjTris":Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    .line 296
    .local v3, "start":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    move-object v2, v3

    .line 298
    .local v2, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .line 299
    .local v0, "adjTri":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    if-eqz v0, :cond_1

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 303
    if-ne v2, v3, :cond_0

    .line 305
    return-object v1
.end method

.method public getVertex(I)Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()[Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 186
    new-array v1, v3, [Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 187
    .local v1, "vert":[Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getVertex(I)Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method

.method public isBorder()Z
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getAdjacentTriangleAcrossEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 267
    const/4 v1, 0x1

    .line 269
    :goto_1
    return v1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isBorder(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getAdjacentTriangleAcrossEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->edge:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 162
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->data:Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getGeometry(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Polygon;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
