.class public Lorg/osmdroid/LocationListenerProxy;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "pLocationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 13
    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "arg0"    # Landroid/location/Location;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 62
    :cond_0
    return-void
.end method

.method public startListening(Landroid/location/LocationListener;JF)Z
    .locals 8
    .param p1, "pListener"    # Landroid/location/LocationListener;
    .param p2, "pUpdateTime"    # J
    .param p4, "pUpdateDistance"    # F

    .prologue
    .line 18
    const/4 v6, 0x0

    .line 19
    .local v6, "result":Z
    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 20
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    .local v1, "provider":Ljava/lang/String;
    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "network"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :cond_1
    const/4 v6, 0x1

    .line 24
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 28
    .end local v1    # "provider":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 33
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 34
    return-void
.end method
