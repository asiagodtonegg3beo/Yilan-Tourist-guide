.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 529
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 531
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->EnableInfobox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 534
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onMarkerLongPress(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 539
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 541
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
