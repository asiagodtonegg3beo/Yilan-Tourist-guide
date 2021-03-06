.class public abstract Lorg/osmdroid/views/overlay/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/OverlayConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f

.field private static final mRect:Landroid/graphics/Rect;

.field private static sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 60
    return-void
.end method

.method protected static declared-synchronized drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V
    .locals 5
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "shadow"    # Z
    .param p5, "aMapOrientation"    # F

    .prologue
    .line 263
    const-class v1, Lorg/osmdroid/views/overlay/Overlay;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 264
    neg-float v0, p5

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 265
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 266
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    sget-object v2, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    sget-object v3, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    sget-object v4, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v1

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static final getSafeMenuId()I
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method protected static final getSafeMenuIdSequence(I)I
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 106
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 130
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pVelocityX"    # F
    .param p4, "pVelocityY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pDistanceX"    # F
    .param p4, "pDistanceY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 239
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 75
    return-void
.end method
