.class public Lorg/locationtech/jts/operation/overlay/MinimalEdgeRing;
.super Lorg/locationtech/jts/geomgraph/EdgeRing;
.source "MinimalEdgeRing.java"


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "start"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/geomgraph/EdgeRing;-><init>(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getNext(Lorg/locationtech/jts/geomgraph/DirectedEdge;)Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .locals 1
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;

    .prologue
    .line 39
    invoke-virtual {p1}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->getNextMin()Lorg/locationtech/jts/geomgraph/DirectedEdge;

    move-result-object v0

    return-object v0
.end method

.method public setEdgeRing(Lorg/locationtech/jts/geomgraph/DirectedEdge;Lorg/locationtech/jts/geomgraph/EdgeRing;)V
    .locals 0
    .param p1, "de"    # Lorg/locationtech/jts/geomgraph/DirectedEdge;
    .param p2, "er"    # Lorg/locationtech/jts/geomgraph/EdgeRing;

    .prologue
    .line 43
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geomgraph/DirectedEdge;->setMinEdgeRing(Lorg/locationtech/jts/geomgraph/EdgeRing;)V

    .line 44
    return-void
.end method
