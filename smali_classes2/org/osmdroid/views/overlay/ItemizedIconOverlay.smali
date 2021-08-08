.class public Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.super Lorg/osmdroid/views/overlay/ItemizedOverlay;
.source "ItemizedIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;,
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedOverlay",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private mDrawnItemsLimit:I

.field protected mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final mItemPoint:Landroid/graphics/Point;

.field protected mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 1
    .param p2, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 19
    const v0, 0x7fffffff

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    .line 29
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    .line 31
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 2
    .param p3, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "task"    # Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v6, 0x0

    .line 168
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 169
    .local v5, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v0, v7

    .line 170
    .local v0, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v1, v7

    .line 172
    .local v1, "eventY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 173
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    .line 174
    .local v3, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-nez v3, :cond_1

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v3, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    .line 181
    .local v4, "marker":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v7, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 183
    iget-object v7, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, v0, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int v8, v1, v8

    invoke-virtual {p0, v3, v4, v7, v8}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    invoke-interface {p3, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;->run(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 185
    const/4 v6, 0x1

    .line 189
    .end local v3    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    .end local v4    # "marker":Landroid/graphics/drawable/Drawable;
    :cond_2
    return v6

    .line 179
    .restart local v3    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    :cond_3
    invoke-virtual {v3, v6}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 83
    return-void
.end method

.method public addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 77
    return v0
.end method

.method public addItems(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 87
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 88
    return v0
.end method

.method protected createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public getDrawnItemsLimit()I
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    :cond_0
    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    .line 56
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 141
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLongPressHelper(ILorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemLongPress(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 123
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;

    invoke-direct {v0, p0, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;Lorg/osmdroid/views/MapView;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 1
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pSnapPoint"    # Landroid/graphics/Point;
    .param p4, "pMapView"    # Lorg/osmdroid/api/IMapView;

    .prologue
    .line 61
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems(Z)V

    .line 93
    return-void
.end method

.method public removeAllItems(Z)V
    .locals 1
    .param p1, "withPopulate"    # Z

    .prologue
    .line 96
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 100
    :cond_0
    return-void
.end method

.method public removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 110
    .local v0, "result":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 111
    return-object v0
.end method

.method public removeItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 105
    return v0
.end method

.method public setDrawnItemsLimit(I)V
    .locals 0
    .param p1, "aLimit"    # I

    .prologue
    .line 201
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    .line 202
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
