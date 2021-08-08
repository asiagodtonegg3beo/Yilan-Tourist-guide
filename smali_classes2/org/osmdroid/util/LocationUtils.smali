.class public Lorg/osmdroid/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Lorg/osmdroid/util/constants/UtilConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 8
    .param p0, "pLocationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    const-string v2, "gps"

    invoke-static {p0, v2}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 27
    .local v0, "gpsLocation":Landroid/location/Location;
    const-string v2, "network"

    invoke-static {p0, v2}, Lorg/osmdroid/util/LocationUtils;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 28
    .local v1, "networkLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 30
    if-nez v1, :cond_2

    move-object v1, v0

    .line 31
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->getGpsWaitTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move-object v1, v0

    .line 37
    goto :goto_0
.end method

.method private static getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p0, "pLocationManager"    # Landroid/location/LocationManager;
    .param p1, "pProvider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_0
.end method
