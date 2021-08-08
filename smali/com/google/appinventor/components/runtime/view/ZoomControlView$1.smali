.class Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;
.super Ljava/lang/Object;
.source "ZoomControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;->this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;->this$0:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->access$000(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    .line 43
    return-void
.end method
