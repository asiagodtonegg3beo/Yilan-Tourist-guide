.class public Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
.super Ljava/lang/Object;
.source "MonotoneChain.java"


# instance fields
.field chainIndex:I

.field mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;I)V
    .locals 0
    .param p1, "mce"    # Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;
    .param p2, "chainIndex"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    .line 27
    iput p2, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->chainIndex:I

    .line 28
    return-void
.end method


# virtual methods
.method public computeIntersections(Lorg/locationtech/jts/geomgraph/index/MonotoneChain;Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V
    .locals 4
    .param p1, "mc"    # Lorg/locationtech/jts/geomgraph/index/MonotoneChain;
    .param p2, "si"    # Lorg/locationtech/jts/geomgraph/index/SegmentIntersector;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    iget v1, p0, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->chainIndex:I

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->mce:Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;

    iget v3, p1, Lorg/locationtech/jts/geomgraph/index/MonotoneChain;->chainIndex:I

    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;->computeIntersectsForChain(ILorg/locationtech/jts/geomgraph/index/MonotoneChainEdge;ILorg/locationtech/jts/geomgraph/index/SegmentIntersector;)V

    .line 33
    return-void
.end method
