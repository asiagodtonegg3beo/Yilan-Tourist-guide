.class Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;
.super Ljava/lang/Object;
.source "QuadEdgeSubdivision.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TriangleCoordinatesVisitor"
.end annotation


# instance fields
.field private coordList:Lorg/locationtech/jts/geom/CoordinateList;

.field private triCoords:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->triCoords:Ljava/util/List;

    .line 784
    return-void
.end method

.method private checkTriangleSize([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 806
    const-string v0, ""

    .line 807
    .local v0, "loc":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 808
    aget-object v1, p1, v3

    aget-object v2, p1, v4

    invoke-static {v1, v2}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    array-length v1, p1

    if-lt v1, v4, :cond_0

    .line 811
    aget-object v1, p1, v3

    invoke-static {v1}, Lorg/locationtech/jts/io/WKTWriter;->toPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTriangles()Ljava/util/List;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->triCoords:Ljava/util/List;

    return-object v0
.end method

.method public visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 5
    .param p1, "triEdges"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 787
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->clear()V

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 789
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    .line 790
    .local v2, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;)Z

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    .end local v2    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 793
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->closeRing()V

    .line 794
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->coordList:Lorg/locationtech/jts/geom/CoordinateList;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 795
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 802
    .end local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    :goto_1
    return-void

    .line 800
    .restart local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->triCoords:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
