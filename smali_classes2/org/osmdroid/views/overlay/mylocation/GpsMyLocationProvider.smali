.class public Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;
.super Ljava/lang/Object;
.source "GpsMyLocationProvider.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Landroid/location/LocationListener;


# instance fields
.field private final locationSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateMinDistance:F

.field private mLocationUpdateMinTime:J

.field private mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    .line 26
    new-instance v0, Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-direct {v0}, Lorg/osmdroid/util/NetworkLocationIgnorer;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    .line 30
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 31
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public addLocationSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public clearLocationSources()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 43
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->stopLocationProvider()V

    .line 132
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    .line 133
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 134
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 135
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    .line 136
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    return-object v0
.end method

.method public getLocationUpdateMinDistance()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    return v0
.end method

.method public getLocationUpdateMinTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    if-nez v0, :cond_1

    .line 145
    const-string v0, "OsmDroid"

    const-string v1, "GpsMyLocation proivider, mIgnore is null, unexpected. Location update will be ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/NetworkLocationIgnorer;->shouldIgnore(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    .line 155
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v0, v1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 165
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 169
    return-void
.end method

.method public setLocationUpdateMinDistance(F)V
    .locals 0
    .param p1, "meters"    # F

    .prologue
    .line 89
    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    .line 90
    return-void
.end method

.method public setLocationUpdateMinTime(J)V
    .locals 1
    .param p1, "milliSeconds"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    .line 75
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 8
    .param p1, "myLocationConsumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 105
    const/4 v6, 0x0

    .line 106
    .local v6, "result":Z
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v6, 0x1

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    iget v4, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 113
    .end local v1    # "provider":Ljava/lang/String;
    :cond_1
    return v6
.end method

.method public stopLocationProvider()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 122
    :cond_0
    return-void
.end method
