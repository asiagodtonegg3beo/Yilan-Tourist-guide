.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 517
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V

    return-void
.end method

.method public onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/Marker;

    .prologue
    .line 525
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V

    .line 544
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$2;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0
.end method
