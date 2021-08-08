.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchOverlay"
.end annotation


# instance fields
.field private scrollEnabled:Z

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;
    .param p1, "x1"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/Canvas;
    .param p2, "arg1"    # Lorg/osmdroid/views/MapView;
    .param p3, "arg2"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 9
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 229
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    .line 230
    .local v1, "p":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    .line 231
    .local v2, "lat":D
    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    .line 232
    .local v4, "lng":D
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 233
    .local v0, "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onLongPress(DD)V

    goto :goto_0

    .line 235
    .end local v0    # "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    const/4 v6, 0x0

    return v6
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
