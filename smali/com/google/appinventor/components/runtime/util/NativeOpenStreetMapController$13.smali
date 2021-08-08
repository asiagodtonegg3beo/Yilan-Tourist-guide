.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;
.super Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$osmMarker:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 1100
    .local p2, "target":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/osmdroid/views/overlay/Marker;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;-><init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->val$osmMarker:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 1110
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1100
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
