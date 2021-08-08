.class public Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeUtil;
.super Ljava/lang/Object;
.source "QuadEdgeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findEdgesIncidentOnOrigin(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Ljava/util/List;
    .locals 2
    .param p0, "start"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "incEdge":Ljava/util/List;
    move-object v1, p0

    .line 40
    .local v1, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 42
    if-ne v1, p0, :cond_0

    .line 44
    return-object v0
.end method
