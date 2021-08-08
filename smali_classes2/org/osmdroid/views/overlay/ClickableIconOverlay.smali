.class public abstract Lorg/osmdroid/views/overlay/ClickableIconOverlay;
.super Lorg/osmdroid/views/overlay/IconOverlay;
.source "ClickableIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/osmdroid/views/overlay/IconOverlay;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field protected mId:I


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    .local p1, "data":Ljava/lang/Object;, "TDataType;"
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/IconOverlay;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static find(Ljava/util/List;I)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;",
            ">;I)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/ClickableIconOverlay;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;

    .line 102
    .local v0, "item":Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    if-eqz v0, :cond_0

    iget v2, v0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    if-ne v2, p1, :cond_0

    .line 104
    .end local v0    # "item":Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataType;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    return v0
.end method

.method protected hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 56
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 59
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 61
    :cond_1
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 62
    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 63
    .local v2, "screenRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 64
    .local v3, "x":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 65
    .local v4, "y":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 66
    .local v0, "hit":Z
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 88
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 89
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 90
    iget v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1, v2, v3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v1

    .line 92
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    goto :goto_0
.end method

.method protected abstract onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            "I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "TDataType;)Z"
        }
    .end annotation
.end method

.method protected onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "markerId"    # I
    .param p3, "geoPosition"    # Lorg/osmdroid/api/IGeoPoint;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 97
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 74
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 75
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 76
    iget v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1, v2, v3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    goto :goto_0
.end method

.method public set(ILorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 0
    .param p1, "id"    # I
    .param p2, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "Landroid/graphics/drawable/Drawable;",
            "TDataType;)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    .local p4, "data":Ljava/lang/Object;, "TDataType;"
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 46
    iput p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    .line 47
    iput-object p4, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 48
    return-object p0
.end method
