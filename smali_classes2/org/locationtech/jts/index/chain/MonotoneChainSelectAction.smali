.class public Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;
.super Ljava/lang/Object;
.source "MonotoneChainSelectAction.java"


# instance fields
.field selectedSegment:Lorg/locationtech/jts/geom/LineSegment;

.field tempEnv1:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->tempEnv1:Lorg/locationtech/jts/geom/Envelope;

    .line 29
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->selectedSegment:Lorg/locationtech/jts/geom/LineSegment;

    return-void
.end method


# virtual methods
.method public select(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 0
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 54
    return-void
.end method

.method public select(Lorg/locationtech/jts/index/chain/MonotoneChain;I)V
    .locals 1
    .param p1, "mc"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p2, "startIndex"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->selectedSegment:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p1, p2, v0}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getLineSegment(ILorg/locationtech/jts/geom/LineSegment;)V

    .line 43
    iget-object v0, p0, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->selectedSegment:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;->select(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 44
    return-void
.end method
