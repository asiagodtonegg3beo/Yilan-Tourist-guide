.class public Lorg/osmdroid/views/overlay/FolderOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "FolderOverlay.java"


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 32
    new-instance v0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1
    .param p1, "item"    # Lorg/osmdroid/views/overlay/Overlay;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public closeAllInfoWindows()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/OverlayManager;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 112
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    if-eqz v2, :cond_1

    .line 113
    check-cast v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->closeAllInfoWindows()V

    goto :goto_0

    .line 114
    .restart local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_1
    instance-of v2, v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v2, :cond_0

    .line 115
    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .end local v0    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    goto :goto_0

    .line 118
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "osm"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
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
    .line 58
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 125
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1
    .param p1, "item"    # Lorg/osmdroid/views/overlay/Overlay;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method
