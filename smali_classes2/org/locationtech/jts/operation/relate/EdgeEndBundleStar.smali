.class public Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;
.super Lorg/locationtech/jts/geomgraph/EdgeEndStar;
.source "EdgeEndBundleStar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/locationtech/jts/geomgraph/EdgeEndStar;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V
    .locals 2
    .param p1, "e"    # Lorg/locationtech/jts/geomgraph/EdgeEnd;

    .prologue
    .line 48
    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;->edgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;

    .line 49
    .local v0, "eb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;

    .end local v0    # "eb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    invoke-direct {v0, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;-><init>(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    .line 51
    .restart local v0    # "eb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;->insertEdgeEnd(Lorg/locationtech/jts/geomgraph/EdgeEnd;Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->insert(Lorg/locationtech/jts/geomgraph/EdgeEnd;)V

    goto :goto_0
.end method

.method updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 3
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/relate/EdgeEndBundleStar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;

    .line 65
    .local v0, "esb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/relate/EdgeEndBundle;->updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    goto :goto_0

    .line 67
    .end local v0    # "esb":Lorg/locationtech/jts/operation/relate/EdgeEndBundle;
    :cond_0
    return-void
.end method
