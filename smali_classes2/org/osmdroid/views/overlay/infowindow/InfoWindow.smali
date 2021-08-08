.class public abstract Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# instance fields
.field protected mIsVisible:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 48
    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 49
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 50
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 52
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    .line 53
    iget-object v3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static closeAllInfoWindowsOn(Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p0, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 123
    invoke-static {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    .local v1, "opened":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/infowindow/InfoWindow;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 125
    .local v0, "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    goto :goto_0

    .line 127
    .end local v0    # "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    :cond_0
    return-void
.end method

.method public static getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v1

    .line 132
    .local v1, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v4, "opened":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/infowindow/InfoWindow;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 136
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 137
    check-cast v3, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 138
    .local v3, "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onClose()V

    .line 102
    :cond_0
    return-void
.end method

.method public getMapView()Lorg/osmdroid/views/MapView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    return v0
.end method

.method public abstract onClose()V
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :cond_0
    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    .line 112
    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 113
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "OsmDroid"

    const-string v1, "Marked detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    return-void
.end method

.method public abstract onOpen(Ljava/lang/Object;)V
.end method

.method public open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v1, -0x2

    .line 81
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 82
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/16 v4, 0x8

    move v2, v1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    .line 88
    .local v0, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lorg/osmdroid/views/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v2, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trapped, InfoWindow.open mMapView: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mView: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "ok"

    goto :goto_1

    :cond_2
    const-string v1, "ok"

    goto :goto_2
.end method
