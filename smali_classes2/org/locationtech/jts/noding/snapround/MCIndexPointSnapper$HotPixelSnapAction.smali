.class public Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;
.super Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;
.source "MCIndexPointSnapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotPixelSnapAction"
.end annotation


# instance fields
.field private hotPixel:Lorg/locationtech/jts/noding/snapround/HotPixel;

.field private hotPixelVertexIndex:I

.field private isNodeAdded:Z

.field private parentEdge:Lorg/locationtech/jts/noding/SegmentString;

.field final synthetic this$0:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;
    .param p2, "hotPixel"    # Lorg/locationtech/jts/noding/snapround/HotPixel;
    .param p3, "parentEdge"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "hotPixelVertexIndex"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->this$0:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    invoke-direct {p0}, Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->isNodeAdded:Z

    .line 82
    iput-object p2, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->hotPixel:Lorg/locationtech/jts/noding/snapround/HotPixel;

    .line 83
    iput-object p3, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->parentEdge:Lorg/locationtech/jts/noding/SegmentString;

    .line 84
    iput p4, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->hotPixelVertexIndex:I

    .line 85
    return-void
.end method


# virtual methods
.method public isNodeAdded()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->isNodeAdded:Z

    return v0
.end method

.method public select(Lorg/locationtech/jts/index/chain/MonotoneChain;I)V
    .locals 2
    .param p1, "mc"    # Lorg/locationtech/jts/index/chain/MonotoneChain;
    .param p2, "startIndex"    # I

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/locationtech/jts/index/chain/MonotoneChain;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 102
    .local v0, "ss":Lorg/locationtech/jts/noding/NodedSegmentString;
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->parentEdge:Lorg/locationtech/jts/noding/SegmentString;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->parentEdge:Lorg/locationtech/jts/noding/SegmentString;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->hotPixelVertexIndex:I

    if-ne p2, v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->hotPixel:Lorg/locationtech/jts/noding/snapround/HotPixel;

    invoke-virtual {v1, v0, p2}, Lorg/locationtech/jts/noding/snapround/HotPixel;->addSnappedNode(Lorg/locationtech/jts/noding/NodedSegmentString;I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;->isNodeAdded:Z

    goto :goto_0
.end method
