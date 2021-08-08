.class Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
.super Lorg/locationtech/jts/planargraph/DirectedEdge;
.source "PolygonizeDirectedEdge.java"


# instance fields
.field private edgeRing:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

.field private label:J

.field private next:Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 2
    .param p1, "from"    # Lorg/locationtech/jts/planargraph/Node;
    .param p2, "to"    # Lorg/locationtech/jts/planargraph/Node;
    .param p3, "directionPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "edgeDirection"    # Z

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/planargraph/DirectedEdge;-><init>(Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/planargraph/Node;Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 30
    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->edgeRing:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 31
    iput-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->next:Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->label:J

    .line 49
    return-void
.end method


# virtual methods
.method public getLabel()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->label:J

    return-wide v0
.end method

.method public getNext()Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->next:Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    return-object v0
.end method

.method public getRing()Lorg/locationtech/jts/operation/polygonize/EdgeRing;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->edgeRing:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    return-object v0
.end method

.method public isInRing()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->edgeRing:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLabel(J)V
    .locals 1
    .param p1, "label"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->label:J

    return-void
.end method

.method public setNext(Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;)V
    .locals 0
    .param p1, "next"    # Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->next:Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;

    return-void
.end method

.method public setRing(Lorg/locationtech/jts/operation/polygonize/EdgeRing;)V
    .locals 0
    .param p1, "edgeRing"    # Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/locationtech/jts/operation/polygonize/PolygonizeDirectedEdge;->edgeRing:Lorg/locationtech/jts/operation/polygonize/EdgeRing;

    .line 82
    return-void
.end method
