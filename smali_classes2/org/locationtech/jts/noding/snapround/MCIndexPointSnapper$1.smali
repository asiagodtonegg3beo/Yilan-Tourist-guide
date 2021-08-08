.class Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;
.super Ljava/lang/Object;
.source "MCIndexPointSnapper.java"

# interfaces
.implements Lorg/locationtech/jts/index/ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->snap(Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

.field final synthetic val$hotPixelSnapAction:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;

.field final synthetic val$pixelEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;->this$0:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    iput-object p2, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;->val$pixelEnv:Lorg/locationtech/jts/geom/Envelope;

    iput-object p3, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;->val$hotPixelSnapAction:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitItem(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 58
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/index/chain/MonotoneChain;

    .line 59
    .local v0, "testChain":Lorg/locationtech/jts/index/chain/MonotoneChain;
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;->val$pixelEnv:Lorg/locationtech/jts/geom/Envelope;

    iget-object v2, p0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$1;->val$hotPixelSnapAction:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper$HotPixelSnapAction;

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/index/chain/MonotoneChain;->select(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/chain/MonotoneChainSelectAction;)V

    .line 60
    return-void
.end method
