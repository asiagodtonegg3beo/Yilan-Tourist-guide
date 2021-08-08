.class Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomAnimatorListener"
.end annotation


# instance fields
.field private mMapController:Lorg/osmdroid/views/MapController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0
    .param p1, "mapController"    # Lorg/osmdroid/views/MapController;

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    .line 517
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 532
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 526
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    .line 527
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 537
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    .line 522
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 541
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v1, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 542
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 543
    return-void
.end method
