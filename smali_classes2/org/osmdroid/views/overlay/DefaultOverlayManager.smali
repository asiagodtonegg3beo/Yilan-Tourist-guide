.class public Lorg/osmdroid/views/overlay/DefaultOverlayManager;
.super Ljava/util/AbstractList;
.source "DefaultOverlayManager.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;",
        "Lorg/osmdroid/views/overlay/OverlayManager;"
    }
.end annotation


# instance fields
.field private final mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 1
    .param p1, "tilesOverlay"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/DefaultOverlayManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->add(ILorg/osmdroid/views/overlay/Overlay;)V

    return-void
.end method

.method public add(ILorg/osmdroid/views/overlay/Overlay;)V
    .locals 3
    .param p1, "pIndex"    # I
    .param p2, "pElement"    # Lorg/osmdroid/views/overlay/Overlay;

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OsmDroid"

    const-string v2, "Attempt to add a null overlay to the collection. This is probably a bug and should be reported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->get(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/osmdroid/views/overlay/Overlay;
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public getTilesOverlay()Lorg/osmdroid/views/overlay/TilesOverlay;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 318
    const/4 v2, 0x1

    .line 319
    .local v2, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 320
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v4, v0, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 321
    check-cast v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 322
    .local v1, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-interface {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    move-result v4

    and-int/2addr v2, v4

    goto :goto_0

    .line 328
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v1    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v3, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 332
    :cond_2
    return v2
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 136
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 141
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 143
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->clear()V

    .line 144
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 208
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v1, 0x1

    .line 213
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 219
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 224
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 243
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 248
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v1, p1, p2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 126
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v0, p1, p2, v3}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    .line 132
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_2
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pVelocityX"    # F
    .param p4, "pVelocityY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 255
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/Overlay;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x1

    .line 260
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 149
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 154
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 160
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 165
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 266
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v1, 0x1

    .line 271
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 356
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v4, v0, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 357
    check-cast v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 358
    .local v1, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    invoke-interface {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v1    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_1
    :goto_0
    return v2

    .line 365
    :cond_2
    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 366
    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 367
    invoke-virtual {v3, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 338
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v3, v0, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 339
    check-cast v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 340
    .local v1, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    goto :goto_0

    .line 346
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v1    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    .line 350
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pDistanceX"    # F
    .param p4, "pDistanceY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 278
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/Overlay;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 283
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 289
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 291
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 230
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v1, 0x1

    .line 235
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 296
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v1, 0x1

    .line 301
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "pMapView"    # Lorg/osmdroid/api/IMapView;

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 193
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v0, Lorg/osmdroid/views/overlay/Overlay$Snappable;

    if-eqz v2, :cond_0

    .line 194
    check-cast v0, Lorg/osmdroid/views/overlay/Overlay$Snappable;

    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/Overlay$Snappable;->onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 200
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 171
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 176
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 182
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 187
    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public overlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public overlaysReversed()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/osmdroid/views/overlay/DefaultOverlayManager$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager$1;-><init>(Lorg/osmdroid/views/overlay/DefaultOverlayManager;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->remove(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/osmdroid/views/overlay/Overlay;
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 4
    .param p1, "pIndex"    # I
    .param p2, "pElement"    # Lorg/osmdroid/views/overlay/Overlay;

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Attempt to set a null overlay to the collection. This is probably a bug and should be reported!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v1, 0x0

    .line 67
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 66
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 67
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_0
.end method

.method public setOptionsMenusEnabled(Z)V
    .locals 3
    .param p1, "pEnabled"    # Z

    .prologue
    .line 308
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 309
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v1, v0, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 310
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->setOptionsMenuEnabled(Z)V

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0
    .param p1, "tilesOverlay"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 80
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method
