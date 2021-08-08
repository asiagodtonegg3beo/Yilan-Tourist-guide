.class Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCircumcentreVisitor;
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
    name = "TriangleCircumcentreVisitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    return-void
.end method


# virtual methods
.method public visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 7
    .param p1, "triEdges"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 625
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 626
    .local v0, "a":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 627
    .local v1, "b":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 630
    .local v2, "c":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 631
    .local v3, "cc":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-direct {v4, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 633
    .local v4, "ccVertex":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 634
    aget-object v6, p1, v5

    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->setOrig(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)V

    .line 633
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method
