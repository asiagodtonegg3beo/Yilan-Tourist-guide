.class public Lorg/locationtech/jts/operation/relate/RelateNode;
.super Lorg/locationtech/jts/geomgraph/Node;
.source "RelateNode.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/EdgeEndStar;)V
    .locals 0
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "edges"    # Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/Node;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geomgraph/EdgeEndStar;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected computeIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 4
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateNode;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v0

    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/RelateNode;->label:Lorg/locationtech/jts/geomgraph/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v3}, Lorg/locationtech/jts/geom/IntersectionMatrix;->setAtLeastIfValid(III)V

    .line 43
    return-void
.end method

.method updateIMFromEdges(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 1
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateNode;->edges:Lorg/locationtech/jts/geomgraph/EdgeEndStar;

    check-cast v0, Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;->updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 50
    return-void
.end method
