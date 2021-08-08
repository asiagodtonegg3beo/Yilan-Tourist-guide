.class public Lorg/osmdroid/views/overlay/IconOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "IconOverlay.java"


# static fields
.field public static final ANCHOR_BOTTOM:F = 1.0f

.field public static final ANCHOR_CENTER:F = 0.5f

.field public static final ANCHOR_LEFT:F = 0.0f

.field public static final ANCHOR_RIGHT:F = 1.0f

.field public static final ANCHOR_TOP:F


# instance fields
.field protected mAlpha:F

.field protected mAnchorU:F

.field protected mAnchorV:F

.field protected mBearing:F

.field protected mFlat:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mPosition:Lorg/osmdroid/api/IGeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 38
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    .line 30
    iput v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    iput v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    .line 30
    iput v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    iput v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    const/4 v4, 0x0

    .line 51
    if-eqz p3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    .line 60
    .local v7, "pj":Lorg/osmdroid/views/Projection;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v7, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 62
    .local v9, "width":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 63
    .local v6, "height":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v4, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .local v8, "rect":Landroid/graphics/Rect;
    iget v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorU:F

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAnchorV:F

    int-to-float v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 65
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 69
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mFlat:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    neg-float v5, v0

    .line 70
    .local v5, "rotationOnScreen":F
    :goto_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/overlay/IconOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto :goto_0

    .line 69
    .end local v5    # "rotationOnScreen":F
    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mBearing:F

    sub-float v5, v0, v1

    goto :goto_1
.end method

.method public getPosition()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method public moveTo(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 84
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 85
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->moveTo(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 86
    return-object p0
.end method

.method public moveTo(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 0
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 91
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 92
    return-object p0
.end method

.method public set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;
    .locals 0
    .param p1, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    .line 79
    iput-object p2, p0, Lorg/osmdroid/views/overlay/IconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    return-object p0
.end method
