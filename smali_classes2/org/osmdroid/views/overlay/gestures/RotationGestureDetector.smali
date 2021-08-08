.class public Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;
    }
.end annotation


# instance fields
.field private mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

.field protected mRotation:F


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    .line 32
    return-void
.end method

.method private static rotation(Landroid/view/MotionEvent;)F
    .locals 10
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 35
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 36
    .local v0, "delta_x":D
    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 37
    .local v2, "delta_y":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 38
    .local v4, "radians":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    return v6
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 46
    invoke-static {p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->rotation(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    .line 49
    :cond_1
    invoke-static {p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->rotation(Landroid/view/MotionEvent;)F

    move-result v1

    .line 50
    .local v1, "rotation":F
    iget v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    sub-float v0, v1, v2

    .line 51
    .local v0, "delta":F
    iget v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mRotation:F

    .line 52
    iget-object v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->mListener:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;

    invoke-interface {v2, v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;->onRotate(F)V

    goto :goto_0
.end method
