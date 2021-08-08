.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LocationSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You\'ll have to wait a short time for a location provider to be found and used, or wait for the LocationChanged event"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;,
        Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private allProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private altitude:D

.field private final androidUIHandler:Landroid/os/Handler;

.field private distanceInterval:I

.field private enabled:Z

.field private geocoder:Landroid/location/Geocoder;

.field private final handler:Landroid/os/Handler;

.field private hasAltitude:Z

.field private hasLocationData:Z

.field private havePermission:Z

.field private initialized:Z

.field private lastLocation:Landroid/location/Location;

.field private latitude:D

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private listening:Z

.field private final locationCriteria:Landroid/location/Criteria;

.field private final locationManager:Landroid/location/LocationManager;

.field private locationProvider:Landroid/location/LocationProvider;

.field private longitude:D

.field private myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field private providerLocked:Z

.field private providerName:Ljava/lang/String;

.field private speed:F

.field private timeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const-class v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "enabled"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 249
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    .line 192
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 196
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 204
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 214
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    .line 215
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    .line 216
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    .line 218
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    .line 219
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    .line 222
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 230
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    .line 250
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 251
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    .line 253
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 254
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 257
    const v1, 0xea60

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 258
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 261
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    .line 263
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    .line 264
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    .line 265
    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 268
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 269
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    return p1
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/LocationSensor;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/LocationSensor;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return p1
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 786
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startProvider(Ljava/lang/String;)Z
    .locals 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 722
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 724
    .local v6, "tLocationProvider":Landroid/location/LocationProvider;
    if-nez v6, :cond_0

    .line 725
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    .line 733
    :goto_0
    return v0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 729
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 730
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    int-to-long v2, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 732
    iput-boolean v7, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    move v0, v7

    .line 733
    goto :goto_0
.end method

.method private stopListening()V
    .locals 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 749
    :cond_0
    return-void
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The most recent measure of accuracy, in meters.  If no value is available, 0 will be returned."
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    .line 523
    :goto_0
    return-wide v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 523
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The most recently available altitude value, in meters.  If no value is available, 0 will be returned."
    .end annotation

    .prologue
    .line 501
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Provides a textual representation of the current address or \"No address available\"."
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 570
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    .line 574
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 575
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 576
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 577
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_4

    .line 578
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-gt v9, v1, :cond_2

    .line 580
    invoke-virtual {v0, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    .end local v0    # "address":Landroid/location/Address;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 587
    :catch_0
    move-exception v8

    .line 591
    .local v8, "e":Ljava/lang/Exception;
    instance-of v1, v8, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_3

    instance-of v1, v8, Ljava/io/IOException;

    if-nez v1, :cond_3

    instance-of v1, v8, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v1, :cond_5

    .line 594
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown by getting current address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const-string v1, "No address available"

    goto :goto_1

    .line 597
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception thrown by getting current address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 598
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public DistanceInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance."
    .end annotation

    .prologue
    .line 439
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    return v0
.end method

.method public DistanceInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "sensor_dist_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 406
    if-ltz p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 419
    :cond_0
    return-void

    .line 409
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 412
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_2

    .line 413
    const-string v1, "DistanceInterval"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 417
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onDistanceIntervalChanged(I)V

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 547
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    goto :goto_0

    .line 553
    :cond_1
    const-string v0, "Enabled"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method public HasAccuracy()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 274
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 275
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 7
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    sget-object v2, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latitude addressObjs size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 618
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "LatitudeFromAddress"

    const/16 v4, 0x65

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 624
    const-wide/16 v2, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 620
    .restart local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public LocationChanged(DDDF)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new location has been detected."
    .end annotation

    .prologue
    .line 285
    const-string v0, "LocationChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 7
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 639
    .local v0, "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    sget-object v2, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longitude addressObjs size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 641
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "LongitudeFromAddress"

    const/16 v4, 0x66

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 647
    const-wide/16 v2, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-wide v2

    .line 643
    .restart local v0    # "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .param p1, "lock"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 354
    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "NO PROVIDER"

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 326
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v0, "ProviderName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public RefreshProvider(Ljava/lang/String;)V
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 671
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v3, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 673
    move-object v1, p0

    .line 674
    .local v1, "me":Lcom/google/appinventor/components/runtime/LocationSensor;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v3, :cond_2

    .line 676
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/appinventor/components/runtime/LocationSensor$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    :cond_2
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 698
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    goto :goto_0

    .line 701
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 702
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    invoke-virtual {v3, v4, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "bProviderName":Ljava/lang/String;
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 704
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 707
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 708
    .local v2, "providerN":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 709
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v4, :cond_5

    .line 710
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-nez v3, :cond_0

    .line 711
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "StatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    :cond_0
    return-void
.end method

.method public TimeInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after."
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    return v0
.end method

.method public TimeInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60000"
        editorType = "sensor_time_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 363
    if-ltz p1, :cond_0

    const v1, 0xf4240

    if-le p1, v1, :cond_1

    .line 376
    :cond_0
    return-void

    .line 366
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 369
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v1, :cond_2

    .line 370
    const-string v1, "TimeInterval"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 374
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onTimeIntervalChanged(I)V

    goto :goto_0
.end method

.method public addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .prologue
    .line 776
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 773
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 766
    return-void
.end method

.method public removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 782
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 783
    return-void
.end method
