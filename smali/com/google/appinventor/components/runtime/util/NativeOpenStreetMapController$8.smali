.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$1000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 814
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 824
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$300(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 825
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 0
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .prologue
    .line 819
    return-void
.end method
