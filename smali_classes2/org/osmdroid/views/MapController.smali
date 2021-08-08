.class public Lorg/osmdroid/views/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lorg/osmdroid/api/IMapController;
.implements Lorg/osmdroid/views/MapView$OnFirstLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapController$ReplayController;,
        Lorg/osmdroid/views/MapController$ReplayType;,
        Lorg/osmdroid/views/MapController$ZoomAnimationListener;,
        Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentAnimator:Landroid/animation/Animator;

.field protected final mMapView:Lorg/osmdroid/views/MapView;

.field private mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

.field private mZoomInAnimation:Landroid/animation/ValueAnimator;

.field private mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

.field private mZoomOutAnimation:Landroid/animation/ValueAnimator;

.field private mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 11
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 64
    new-instance v0, Lorg/osmdroid/views/MapController$ReplayController;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/osmdroid/views/MapController$ReplayController;-><init>(Lorg/osmdroid/views/MapController;Lorg/osmdroid/views/MapController$1;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    .line 65
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->addOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V

    .line 70
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 71
    new-instance v10, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;

    invoke-direct {v10, p0}, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;-><init>(Lorg/osmdroid/views/MapController;)V

    .line 72
    .local v10, "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    .end local v10    # "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v9, Lorg/osmdroid/views/MapController$ZoomAnimationListener;

    invoke-direct {v9, p0}, Lorg/osmdroid/views/MapController$ZoomAnimationListener;-><init>(Lorg/osmdroid/views/MapController;)V

    .line 83
    .local v9, "zoomAnimationListener":Lorg/osmdroid/views/MapController$ZoomAnimationListener;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    .line 85
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, v6

    move v3, v1

    move v4, v6

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    .line 87
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 88
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 72
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public animateTo(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapController$ReplayController;->animateTo(II)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 168
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, v5}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 170
    .local v6, "mercatorPoint":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Point;->offset(II)V

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    .line 172
    .local v1, "xStart":I
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    .line 174
    .local v2, "yStart":I
    iget v0, v6, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v1

    .line 175
    .local v3, "dx":I
    iget v0, v6, Landroid/graphics/Point;->y:I

    sub-int v4, v0, v2

    .line 177
    .local v4, "dy":I
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 178
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedDefault()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 179
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    goto :goto_0
.end method

.method public animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 3
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v1, p1}, Lorg/osmdroid/views/MapController$ReplayController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 152
    .local v0, "p":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/MapController;->animateTo(II)V

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 486
    .local v1, "screenRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 487
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 486
    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 488
    .local v0, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 490
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 491
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 495
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/views/MapController;->setZoom(D)D

    .line 496
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 497
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 498
    iput-object v5, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 502
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 503
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->clearAnimation()V

    .line 504
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->reset()V

    .line 505
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->reset()V

    .line 507
    :cond_1
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v0, v0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 482
    return-void
.end method

.method public onFirstLayout(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController$ReplayController;->replayCalls()V

    .line 97
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 187
    return-void
.end method

.method public setCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 5
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    new-instance v2, Lorg/osmdroid/events/ScrollEvent;

    iget-object v3, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3, v4, v4}, Lorg/osmdroid/events/ScrollEvent;-><init>(Lorg/osmdroid/views/MapView;II)V

    invoke-interface {v1, v2}, Lorg/osmdroid/events/MapListener;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    invoke-virtual {v1, p1}, Lorg/osmdroid/views/MapController$ReplayController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 205
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 209
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setZoom(D)D
    .locals 3
    .param p1, "pZoomlevel"    # D

    .prologue
    .line 260
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public setZoom(I)I
    .locals 2
    .param p1, "zoomlevel"    # I

    .prologue
    .line 252
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapController;->setZoom(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public stopAnimation(Z)V
    .locals 3
    .param p1, "jumpToTarget"    # Z

    .prologue
    .line 227
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    if-eqz p1, :cond_2

    .line 229
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 230
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 238
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 239
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 240
    .local v0, "currentAnimator":Landroid/animation/Animator;
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 248
    .end local v0    # "currentAnimator":Landroid/animation/Animator;
    :cond_1
    :goto_1
    return-void

    .line 232
    :cond_2
    invoke-virtual {p0}, Lorg/osmdroid/views/MapController;->stopPanning()V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->clearAnimation()V

    goto :goto_1
.end method

.method public stopPanning()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 216
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getScroller()Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 217
    return-void
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapController;->zoomTo(D)Z

    move-result v0

    return v0
.end method

.method public zoomIn(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "animationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/MapController;->zoomInFixing(IILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(IILjava/lang/Long;)Z
    .locals 12
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .param p3, "zoomAnimation"    # Ljava/lang/Long;

    .prologue
    .line 284
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 285
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    new-instance v2, Lorg/osmdroid/events/ZoomEvent;

    iget-object v3, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v4, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;D)V

    invoke-interface {v1, v2}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 289
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x0

    .line 322
    :goto_0
    return v1

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, v1, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 294
    if-nez p3, :cond_3

    .line 295
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 296
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 297
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 319
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 302
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 303
    new-instance v11, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;

    invoke-direct {v11, p0}, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;-><init>(Lorg/osmdroid/views/MapController;)V

    .line 304
    .local v11, "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 305
    .local v9, "mZoomInAnimation":Landroid/animation/ValueAnimator;
    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 307
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 311
    .end local v9    # "mZoomInAnimation":Landroid/animation/ValueAnimator;
    .end local v11    # "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    :cond_4
    new-instance v10, Lorg/osmdroid/views/MapController$ZoomAnimationListener;

    invoke-direct {v10, p0}, Lorg/osmdroid/views/MapController$ZoomAnimationListener;-><init>(Lorg/osmdroid/views/MapController;)V

    .line 312
    .local v10, "zoomAnimationListener":Lorg/osmdroid/views/MapController$ZoomAnimationListener;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 314
    .local v0, "mZoomInAnimationOld":Landroid/view/animation/ScaleAnimation;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 315
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 316
    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 322
    .end local v0    # "mZoomInAnimationOld":Landroid/view/animation/ScaleAnimation;
    .end local v10    # "zoomAnimationListener":Lorg/osmdroid/views/MapController$ZoomAnimationListener;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 304
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapController;->zoomTo(D)Z

    move-result v0

    return v0
.end method

.method public zoomOut(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "animationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 333
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/MapController;->zoomTo(DLjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 10
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    .line 346
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 347
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    new-instance v3, Lorg/osmdroid/events/ZoomEvent;

    iget-object v4, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v5, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v6

    sub-double/2addr v6, v8

    invoke-direct {v3, v4, v6, v7}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;D)V

    invoke-interface {v2, v3}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 351
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    :cond_1
    :goto_0
    return v0

    .line 355
    :cond_2
    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, v2, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v4

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    .line 357
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 358
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    move v0, v1

    .line 362
    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public zoomTo(D)Z
    .locals 3
    .param p1, "pZoomLevel"    # D

    .prologue
    .line 401
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/MapController;->zoomToFixing(DII)Z

    move-result v0

    return v0
.end method

.method public zoomTo(DLjava/lang/Long;)Z
    .locals 7
    .param p1, "pZoomLevel"    # D
    .param p3, "animationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 397
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomTo(I)Z
    .locals 2
    .param p1, "zoomLevel"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lorg/osmdroid/views/MapController;->zoomToFixing(III)Z

    move-result v0

    return v0
.end method

.method public zoomTo(ILjava/lang/Long;)Z
    .locals 2
    .param p1, "zoomLevel"    # I
    .param p2, "animationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 379
    iget-object v0, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/osmdroid/views/MapController;->zoomToFixing(IIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(DII)Z
    .locals 7
    .param p1, "zoomLevel"    # D
    .param p3, "xPixel"    # I
    .param p4, "yPixel"    # I

    .prologue
    .line 471
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Long;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(DIILjava/lang/Long;)Z
    .locals 17
    .param p1, "zoomLevel"    # D
    .param p3, "xPixel"    # I
    .param p4, "yPixel"    # I
    .param p5, "zoomAnimationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v6, v3

    cmpl-double v3, p1, v6

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 p1, v0

    .line 408
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v3

    int-to-double v6, v3

    cmpg-double v3, p1, v6

    if-gez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 p1, v0

    .line 410
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v12

    .line 411
    .local v12, "currentZoomLevel":D
    cmpg-double v3, p1, v12

    if-gez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    cmpl-double v3, p1, v12

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    .line 412
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const/4 v11, 0x1

    .line 414
    .local v11, "canZoom":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 415
    if-eqz v11, :cond_b

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v3, :cond_4

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    new-instance v5, Lorg/osmdroid/events/ZoomEvent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    move-wide/from16 v0, p1

    invoke-direct {v5, v6, v0, v1}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;D)V

    invoke-interface {v3, v5}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 419
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    const/4 v3, 0x0

    .line 462
    :goto_1
    return v3

    .line 412
    .end local v11    # "canZoom":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 423
    .restart local v11    # "canZoom":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, v3, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, p1, v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 426
    .local v4, "end":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_8

    .line 427
    new-instance v14, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;-><init>(Lorg/osmdroid/views/MapController;)V

    .line 428
    .local v14, "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 429
    .local v15, "zoomToAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    if-nez p5, :cond_7

    .line 432
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v15, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    :goto_2
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/osmdroid/views/MapController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 438
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    .line 459
    .end local v14    # "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    .end local v15    # "zoomToAnimator":Landroid/animation/ValueAnimator;
    :goto_3
    const/4 v3, 0x1

    goto :goto_1

    .line 434
    .restart local v14    # "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    .restart local v15    # "zoomToAnimator":Landroid/animation/ValueAnimator;
    :cond_7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 440
    .end local v14    # "zoomAnimatorListener":Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
    .end local v15    # "zoomToAnimator":Landroid/animation/ValueAnimator;
    :cond_8
    cmpl-double v3, p1, v12

    if-lez v3, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mZoomInAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v3, v5}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 446
    :goto_4
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move v6, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 451
    .local v2, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    if-nez p5, :cond_a

    .line 452
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getAnimationSpeedShort()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 456
    :goto_5
    new-instance v3, Lorg/osmdroid/views/MapController$ZoomAnimationListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/osmdroid/views/MapController$ZoomAnimationListener;-><init>(Lorg/osmdroid/views/MapController;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_3

    .line 443
    .end local v2    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mZoomOutAnimationOld:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v3, v5}, Lorg/osmdroid/views/MapView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 454
    .restart local v2    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    goto :goto_5

    .line 462
    .end local v2    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v4    # "end":F
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public zoomToFixing(III)Z
    .locals 1
    .param p1, "zoomLevel"    # I
    .param p2, "xPixel"    # I
    .param p3, "yPixel"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapController;->zoomToFixing(IIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToFixing(IIILjava/lang/Long;)Z
    .locals 7
    .param p1, "zoomLevel"    # I
    .param p2, "xPixel"    # I
    .param p3, "yPixel"    # I
    .param p4, "zoomAnimationSpeed"    # Ljava/lang/Long;

    .prologue
    .line 392
    int-to-double v2, p1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapController;->zoomToFixing(DIILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public zoomToSpan(DD)V
    .locals 23
    .param p1, "latSpan"    # D
    .param p3, "lonSpan"    # D

    .prologue
    .line 106
    const-wide/16 v18, 0x0

    cmpg-double v5, p1, v18

    if-lez v5, :cond_0

    const-wide/16 v18, 0x0

    cmpg-double v5, p3, v18

    if-gtz v5, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mReplayController:Lorg/osmdroid/views/MapController$ReplayController;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/osmdroid/views/MapController$ReplayController;->zoomToSpan(DD)V

    goto :goto_0

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v4

    .line 117
    .local v4, "bb":Lorg/osmdroid/util/BoundingBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v10

    .line 119
    .local v10, "curZoomLevel":D
    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v6

    .line 120
    .local v6, "curLatSpan":D
    invoke-virtual {v4}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v8

    .line 122
    .local v8, "curLonSpan":D
    div-double v14, p1, v6

    .line 123
    .local v14, "diffNeededLat":D
    div-double v16, p3, v8

    .line 125
    .local v16, "diffNeededLon":D
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 127
    .local v12, "diffNeeded":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v12, v18

    if-lez v5, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    double-to-float v0, v12

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/osmdroid/views/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v18, v10, v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    goto :goto_0

    .line 129
    :cond_3
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v12, v18

    if-gez v5, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    const/high16 v18, 0x3f800000    # 1.0f

    double-to-float v0, v12

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 131
    invoke-static/range {v18 .. v18}, Lorg/osmdroid/views/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v18, v18, v10

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    .line 130
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    goto/16 :goto_0
.end method

.method public zoomToSpan(II)V
    .locals 6
    .param p1, "latSpanE6"    # I
    .param p2, "lonSpanE6"    # I

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 138
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/MapController;->zoomToSpan(DD)V

    .line 139
    return-void
.end method

.method public zoomToSpan(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 2
    .param p1, "bb"    # Lorg/osmdroid/util/BoundingBoxE6;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapController;->zoomToSpan(II)V

    .line 102
    return-void
.end method
