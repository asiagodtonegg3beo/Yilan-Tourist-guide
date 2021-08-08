.class public abstract Lorg/osmdroid/views/overlay/OverlayWithIW;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "OverlayWithIW.java"


# instance fields
.field protected mImage:Landroid/graphics/drawable/Drawable;

.field protected mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

.field protected mRelatedObject:Ljava/lang/Object;

.field protected mSnippet:Ljava/lang/String;

.field protected mSubDescription:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V
.end method

.method public closeInfoWindow()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 120
    :cond_0
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-object v0
.end method

.method public getRelatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowOpen()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 125
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    .line 126
    iput-object v1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 127
    iput-object v1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "view"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mImage:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 147
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 148
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mImage:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 0
    .param p1, "infoWindow"    # Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 99
    return-void
.end method

.method public setRelatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "relatedObject"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSubDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "subDescription"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public abstract showInfoWindow()V
.end method
