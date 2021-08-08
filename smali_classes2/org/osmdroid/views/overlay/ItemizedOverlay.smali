.class public abstract Lorg/osmdroid/views/overlay/ItemizedOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/Overlay;",
        "Lorg/osmdroid/views/overlay/Overlay$Snappable;"
    }
.end annotation


# instance fields
.field private final mCurScreenCoords:Landroid/graphics/Point;

.field protected final mDefaultMarker:Landroid/graphics/drawable/Drawable;

.field protected mDrawFocusedItem:Z

.field private mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInternalItemDisplayedList:[Z

.field private final mInternalItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

.field private mPendingFocusChangedEvent:Z

.field private final mRect:Landroid/graphics/Rect;

.field protected scaleX:F

.field protected scaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleX:F

    .line 54
    iput v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleY:F

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a default marker to ItemizedOverlay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    .line 91
    return-void
.end method


# virtual methods
.method protected declared-synchronized boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotspot"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .prologue
    .line 380
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 381
    .local v1, "markerWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 383
    .local v0, "markerHeight":I
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v6, v0, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    if-nez p2, :cond_0

    .line 386
    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 389
    :cond_0
    sget-object v2, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 421
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-object p1

    .line 394
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "markerHeight":I
    .end local v1    # "markerWidth":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 397
    .restart local v0    # "markerHeight":I
    .restart local v1    # "markerWidth":I
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 406
    :pswitch_4
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 409
    :pswitch_5
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 412
    :pswitch_6
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    neg-int v3, v1

    neg-int v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 415
    :pswitch_7
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 418
    :pswitch_8
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    neg-int v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected abstract createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    if-eqz p3, :cond_1

    .line 162
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-interface {v4, p0, v5}, Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lorg/osmdroid/views/overlay/ItemizedOverlay;Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 134
    :cond_2
    iput-boolean v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 136
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    .line 137
    .local v2, "pj":Lorg/osmdroid/views/Projection;
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 138
    .local v3, "size":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    array-length v4, v4

    if-eq v4, v3, :cond_4

    .line 139
    :cond_3
    new-array v4, v3, [Z

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    .line 142
    :cond_4
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 143
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 145
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v4, v4, v6

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v5, v5, v8

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleX:F

    .line 148
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v4, v4, v9

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v5, v5, v7

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMatrixValues:[F

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleY:F

    .line 152
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v1

    .line 154
    .local v1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-nez v1, :cond_5

    .line 152
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 160
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v6

    invoke-virtual {p0, p1, v1, v5, v6}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;F)Z

    move-result v5

    aput-boolean v5, v4, v0

    goto :goto_1
.end method

.method protected getDefaultMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 272
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 273
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-nez v2, :cond_1

    .line 268
    :cond_0
    return-object v1

    .line 263
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 264
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFocus()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public final getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/OverlayItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 1
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hitX"    # I
    .param p4, "hitY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 99
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    :cond_0
    return-void
.end method

.method protected onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;F)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "curScreenCoords"    # Landroid/graphics/Point;
    .param p4, "aMapOrientation"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TItem;",
            "Landroid/graphics/Point;",
            "F)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/high16 v10, 0x3f800000    # 1.0f

    .line 214
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v6, p2, :cond_1

    const/4 v3, 0x4

    .line 216
    .local v3, "state":I
    :goto_0
    invoke-virtual {p2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 218
    .local v2, "marker":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v1

    .line 220
    .local v1, "hotspot":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    invoke-virtual {p0, v2, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->x:I

    .line 223
    .local v4, "x":I
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v5, v6, Landroid/graphics/Point;->y:I

    .line 225
    .local v5, "y":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    neg-float v6, p4

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 227
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 228
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    iget-object v9, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    iget v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleX:F

    div-float v6, v10, v6

    iget v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->scaleY:F

    div-float v7, v10, v7

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 230
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 231
    .local v0, "displayed":Z
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    :cond_0
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 236
    return v0

    .line 214
    .end local v0    # "displayed":Z
    .end local v1    # "hotspot":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .end local v2    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v3    # "state":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 217
    .restart local v3    # "state":I
    :cond_2
    invoke-virtual {p2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 299
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 300
    .local v3, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 301
    .local v4, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v5

    .line 303
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_4

    .line 304
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v1

    .line 305
    .local v1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-nez v1, :cond_1

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v3, v7, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 311
    iget-boolean v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v7, v1, :cond_2

    const/4 v6, 0x4

    .line 313
    .local v6, "state":I
    :goto_1
    invoke-virtual {v1, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_3

    .line 314
    invoke-virtual {p0, v6}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 315
    .local v2, "marker":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    .line 316
    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    neg-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 316
    invoke-virtual {p0, v1, v2, v7, v8}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onTap(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    const/4 v7, 0x1

    .line 326
    .end local v1    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .end local v2    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v6    # "state":I
    :goto_3
    return v7

    .line 311
    .restart local v1    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 314
    .restart local v6    # "state":I
    :cond_3
    invoke-virtual {v1, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 326
    .end local v1    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .end local v6    # "state":I
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v7

    goto :goto_3
.end method

.method protected onTap(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 338
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 4

    .prologue
    .line 174
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v1

    .line 175
    .local v1, "size":I
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 177
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 178
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    .line 181
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0
    .param p1, "drawFocusedItem"    # Z

    .prologue
    .line 346
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 347
    return-void
.end method

.method public setFocus(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 357
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    .line 358
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    .prologue
    .line 426
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    .line 427
    return-void
.end method

.method public abstract size()I
.end method
