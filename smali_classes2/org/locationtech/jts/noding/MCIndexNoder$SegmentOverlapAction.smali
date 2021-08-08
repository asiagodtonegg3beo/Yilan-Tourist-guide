.class public Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;
.super Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;
.source "MCIndexNoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/noding/MCIndexNoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentOverlapAction"
.end annotation


# instance fields
.field private si:Lorg/locationtech/jts/noding/SegmentIntersector;

.field final synthetic this$0:Lorg/locationtech/jts/noding/MCIndexNoder;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/noding/MCIndexNoder;Lorg/locationtech/jts/noding/SegmentIntersector;)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/noding/MCIndexNoder;
    .param p2, "si"    # Lorg/locationtech/jts/noding/SegmentIntersector;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;->this$0:Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {p0}, Lorg/locationtech/jts/index/chain/MonotoneChainOverlapAction;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;->si:Lorg/locationtech/jts/noding/SegmentIntersector;

    .line 114
    iput-object p2, p0, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;->si:Lorg/locationtech/jts/noding/SegmentIntersector;

    .line 115
    return-void
.end method


# virtual methods
.method public overlap(Lorg/locationtech/jts/index/chain/MonotoneChain;ILorg/locationtech/jts/index/chain/MonotoneChain;I)V
    .locals 3
    .param p1, "mc1"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p2, "start1"    # I
    .param p3, "mc2"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p4, "start2"    # I

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 120
    .local v0, "ss1":Lorg/locationtech/jts/noding/SegmentString;
    invoke-virtual {p3}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentString;

    .line 121
    .local v1, "ss2":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v2, p0, Lorg/locationtech/jts/noding/MCIndexNoder$SegmentOverlapAction;->si:Lorg/locationtech/jts/noding/SegmentIntersector;

    invoke-interface {v2, v0, p2, v1, p4}, Lorg/locationtech/jts/noding/SegmentIntersector;->processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V

    .line 122
    return-void
.end method
