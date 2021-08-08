.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 251
    .local v0, "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    goto :goto_0

    .line 253
    .end local v0    # "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    return-void
.end method
