.class Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewDoubleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapView;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/MapView;
    .param p2, "x1"    # Lorg/osmdroid/views/MapView$1;

    .prologue
    .line 1433
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1436
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    const/4 v0, 0x1

    .line 1446
    :goto_0
    return v0

    .line 1442
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 1444
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/MapView;->zoomInFixing(II)Z

    move-result v0

    goto :goto_0

    .line 1446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1452
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    const/4 v0, 0x1

    .line 1456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1461
    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v1, p1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1462
    const/4 v1, 0x1

    .line 1471
    :goto_0
    return v1

    .line 1465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1466
    .local v8, "y":F
    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    float-to-int v2, v7

    float-to-int v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 1467
    .local v6, "pt":Lorg/osmdroid/api/IGeoPoint;
    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v1}, Lorg/osmdroid/views/MapView;->access$900(Lorg/osmdroid/views/MapView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapView$OnTapListener;

    .line 1468
    .local v0, "listener":Lorg/osmdroid/views/MapView$OnTapListener;
    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/osmdroid/views/MapView$OnTapListener;->onSingleTap(Lorg/osmdroid/views/MapView;DD)V

    goto :goto_1

    .line 1471
    .end local v0    # "listener":Lorg/osmdroid/views/MapView$OnTapListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
