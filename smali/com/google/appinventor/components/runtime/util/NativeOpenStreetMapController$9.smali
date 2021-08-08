.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .prologue
    .line 839
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$1000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 851
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 864
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 865
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$200(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 866
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 867
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 868
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$300(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 869
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 3
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .prologue
    .line 855
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 856
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$200(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 857
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 858
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 859
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$300(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 860
    return-void
.end method
