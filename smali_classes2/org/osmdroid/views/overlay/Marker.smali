.class public Lorg/osmdroid/views/overlay/Marker;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;,
        Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;
    }
.end annotation


# static fields
.field public static final ANCHOR_BOTTOM:F = 1.0f

.field public static final ANCHOR_CENTER:F = 0.5f

.field public static final ANCHOR_LEFT:F = 0.0f

.field public static final ANCHOR_RIGHT:F = 1.0f

.field public static final ANCHOR_TOP:F

.field public static ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

.field protected static mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field protected static mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;


# instance fields
.field protected mAlpha:F

.field protected mAnchorU:F

.field protected mAnchorV:F

.field protected mBearing:F

.field protected mDragOffsetY:F

.field protected mDraggable:Z

.field protected mFlat:Z

.field protected mIWAnchorU:F

.field protected mIWAnchorV:F

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIsDragged:Z

.field protected mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

.field protected mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

.field protected mPanToView:Z

.field protected mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;

.field protected mTextLabelBackgroundColor:I

.field protected mTextLabelFontSize:I

.field protected mTextLabelForegroundColor:I

.field protected resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    .line 81
    sput-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 82
    sput-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .locals 7
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "resourceProxy"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    .line 61
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    .line 62
    const/16 v0, 0x18

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    .line 94
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    .line 95
    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    .line 97
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 98
    iput v2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 99
    iput v2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    .line 100
    iput v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 101
    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    .line 102
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    .line 103
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    .line 106
    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    .line 107
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    .line 108
    iput-object v6, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 109
    iput-object v6, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 110
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 112
    :cond_0
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMapView()Lorg/osmdroid/views/MapView;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 125
    :cond_1
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    invoke-direct {v0, v1, p1}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 127
    :cond_2
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 128
    return-void
.end method

.method public static cleanDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 344
    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 345
    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 346
    return-void
.end method


# virtual methods
.method public accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;

    .prologue
    .line 459
    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;->visit(Lorg/osmdroid/views/overlay/Marker;)V

    .line 460
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    const/4 v4, 0x0

    .line 287
    if-eqz p3, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    .line 294
    .local v7, "pj":Lorg/osmdroid/views/Projection;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v7, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 295
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 296
    .local v9, "width":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 297
    .local v6, "height":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v4, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    .local v8, "rect":Landroid/graphics/Rect;
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    int-to-float v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 299
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    neg-float v5, v0

    .line 304
    .local v5, "rotationOnScreen":F
    :goto_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/overlay/Marker;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto :goto_0

    .line 303
    .end local v5    # "rotationOnScreen":F
    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    sub-float v5, v0, v1

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return v0
.end method

.method public getDragOffset()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return v0
.end method

.method public getTextLabelBackgroundColor()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return v0
.end method

.method public getTextLabelFontSize()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return v0
.end method

.method public getTextLabelForegroundColor()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return v0
.end method

.method public hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 349
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 350
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 351
    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 352
    .local v2, "screenRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 353
    .local v3, "x":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 354
    .local v4, "y":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 355
    .local v0, "hit":Z
    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    instance-of v1, v1, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v1, :cond_1

    .line 280
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .line 281
    .local v0, "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMarkerReference()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    .line 283
    .end local v0    # "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    :goto_0
    return v1

    .line 281
    .restart local v0    # "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 283
    .end local v0    # "iw":Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    goto :goto_0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 371
    const/4 v2, 0x5

    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 372
    .local v0, "offsetY":F
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 373
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 374
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 375
    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v3, 0x0

    .line 311
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 312
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iput-object v3, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 321
    iput-object v3, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 322
    iput-object v3, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 323
    iput-object v3, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    .line 324
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/Marker;->setRelatedObject(Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    sget-object v2, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eq v1, v2, :cond_1

    .line 326
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 331
    :cond_1
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 332
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->onDestroy()V

    .line 335
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 336
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 379
    .local v0, "touched":Z
    if-eqz v0, :cond_1

    .line 380
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v1, :cond_2

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 383
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 384
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V

    .line 386
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 391
    :cond_1
    :goto_0
    return v0

    .line 388
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    invoke-interface {v1, p0, p2}, Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;->onMarkerLongPress(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    goto :goto_0
.end method

.method protected onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 427
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 428
    iget-boolean v0, p1, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 430
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 359
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 360
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    if-nez v1, :cond_1

    .line 362
    invoke-virtual {p0, p0, p2}, Lorg/osmdroid/views/overlay/Marker;->onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 367
    .end local v0    # "touched":Z
    :cond_0
    :goto_0
    return v0

    .line 364
    .restart local v0    # "touched":Z
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    invoke-interface {v1, p0, p2}, Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;->onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 397
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 398
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 402
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 403
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 407
    goto :goto_0

    :cond_3
    move v0, v1

    .line 409
    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 227
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 195
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    .line 196
    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .prologue
    .line 185
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 186
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    .line 187
    return-void
.end method

.method public setDragOffset(F)V
    .locals 0
    .param p1, "mmUp"    # F

    .prologue
    .line 240
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    .line 241
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    .line 205
    return-void
.end method

.method public setFlat(Z)V
    .locals 0
    .param p1, "flat"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    .line 214
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 134
    sget-boolean v7, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    if-eqz v7, :cond_0

    if-nez p1, :cond_0

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Marker;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Marker;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .local v0, "background":Landroid/graphics/Paint;
    iget v7, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 139
    .local v5, "p":Landroid/graphics/Paint;
    iget v7, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    iget v7, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 146
    .local v6, "width":I
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v1, v7

    .line 147
    .local v1, "baseline":F
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float/2addr v7, v1

    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 148
    .local v3, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 149
    .local v4, "image":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    .end local v0    # "background":Landroid/graphics/Paint;
    .end local v1    # "baseline":F
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v5    # "p":Landroid/graphics/Paint;
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-boolean v7, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    if-nez v7, :cond_1

    if-eqz p1, :cond_1

    .line 155
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 157
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 160
    :cond_2
    sget-object v7, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V
    .locals 2
    .param p1, "infoWindow"    # Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    sget-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    .line 256
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 257
    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 0
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .prologue
    .line 190
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 191
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    .line 192
    return-void
.end method

.method public setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 232
    return-void
.end method

.method public setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 236
    return-void
.end method

.method public setPanToView(Z)V
    .locals 0
    .param p1, "panToView"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    .line 263
    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "position"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 173
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 174
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 181
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    .line 182
    return-void
.end method

.method public setTextLabelBackgroundColor(I)V
    .locals 0
    .param p1, "mTextLabelBackgroundColor"    # I

    .prologue
    .line 438
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    .line 439
    return-void
.end method

.method public setTextLabelFontSize(I)V
    .locals 0
    .param p1, "mTextLabelFontSize"    # I

    .prologue
    .line 454
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    .line 455
    return-void
.end method

.method public setTextLabelForegroundColor(I)V
    .locals 0
    .param p1, "mTextLabelForegroundColor"    # I

    .prologue
    .line 446
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    .line 447
    return-void
.end method

.method public showInfoWindow()V
    .locals 7

    .prologue
    .line 266
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v4, :cond_0

    .line 276
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v1, 0x0

    .local v1, "markerWidth":I
    const/4 v0, 0x0

    .line 269
    .local v0, "markerHeight":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 270
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 272
    iget v4, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 273
    .local v2, "offsetX":I
    iget v4, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 275
    .local v3, "offsetY":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4, p0, v5, v2, v3}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    goto :goto_0
.end method
