.class public Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.source "OverlayInfoWindow.java"


# instance fields
.field protected mOverlayRef:Lorg/osmdroid/views/overlay/OverlayWithIW;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 24
    sget v0, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getOverlayRef()Lorg/osmdroid/views/overlay/OverlayWithIW;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mOverlayRef:Lorg/osmdroid/views/overlay/OverlayWithIW;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onClose()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mOverlayRef:Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 48
    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 34
    check-cast p1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .end local p1    # "item":Ljava/lang/Object;
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mOverlayRef:Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 35
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mView:Landroid/view/View;

    sget v3, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mImageId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;->mOverlayRef:Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
