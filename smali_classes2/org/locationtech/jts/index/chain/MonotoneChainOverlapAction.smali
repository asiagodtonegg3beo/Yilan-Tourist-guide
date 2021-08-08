.class public Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;
.super Ljava/lang/Object;
.source "MonotoneChainOverlapAction.java"


# instance fields
.field protected overlapSeg1:Lorg/locationtech/jts/geom/LineSegment;

.field protected overlapSeg2:Lorg/locationtech/jts/geom/LineSegment;

.field tempEnv1:Lorg/locationtech/jts/geom/Envelope;

.field tempEnv2:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    .line 29
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->tempEnv2:Lorg/locationtech/jts/geom/Envelope;

    .line 31
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg1:Lorg/locationtech/jts/geom/LineSegment;

    .line 32
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg2:Lorg/locationtech/jts/geom/LineSegment;

    return-void
.end method


# virtual methods
.method public overlap(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 0
    .param p1, "seg1"    # Lorg/locationtech/jts/geom/LineSegment;
    .param p2, "seg2"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 55
    return-void
.end method

.method public overlap(Lorg/locationtech/jts/index/chain/MonotoneChain;ILorg/locationtech/jts/index/chain/MonotoneChain;I)V
    .locals 2
    .param p1, "mc1"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p2, "start1"    # I
    .param p3, "mc2"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p4, "start2"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg1:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p1, p2, v0}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getLineSegment(ILorg/locationtech/jts/geom/LineSegment;)V

    .line 43
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg2:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p3, p4, v0}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getLineSegment(ILorg/locationtech/jts/geom/LineSegment;)V

    .line 44
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg1:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v1, p0, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlapSeg2:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;->overlap(Lorg/locationtech/jts/geom/LineSegment;Lorg/locationtech/jts/geom/LineSegment;)V

    .line 45
    return-void
.end method
