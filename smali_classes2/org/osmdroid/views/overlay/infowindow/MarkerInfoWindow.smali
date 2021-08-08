.class public Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.source "MarkerInfoWindow.java"


# instance fields
.field protected mMarkerRef:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getMarkerReference()Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onClose()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    .line 76
    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 57
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    .end local p1    # "item":Ljava/lang/Object;
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    .line 58
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 59
    const-string v2, "OsmDroid"

    const-string v3, "Error trapped, MarkerInfoWindow.open, mView is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    sget v3, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mImageId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Marker;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
