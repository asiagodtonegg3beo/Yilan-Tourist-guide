.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

.field final synthetic val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$1100(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 996
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillOpacity()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1001
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 1002
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 992
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
