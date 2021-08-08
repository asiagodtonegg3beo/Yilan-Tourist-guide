.class Lorg/locationtech/jts/dissolve/DissolveEdgeGraph;
.super Lorg/locationtech/jts/edgegraph/EdgeGraph;
.source "DissolveEdgeGraph.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/locationtech/jts/edgegraph/EdgeGraph;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEdge(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/edgegraph/HalfEdge;
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 30
    new-instance v0, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v0
.end method
