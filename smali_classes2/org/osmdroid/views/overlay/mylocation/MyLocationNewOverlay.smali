.class public Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MyLocationNewOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# static fields
.field public static final MENU_MY_LOCATION:I


# instance fields
.field protected enableAutoStop:Z

.field protected mCirclePaint:Landroid/graphics/Paint;

.field protected mDirectionArrowBitmap:Landroid/graphics/Bitmap;

.field protected mDirectionArrowCenterX:F

.field protected mDirectionArrowCenterY:F

.field protected mDrawAccuracyEnabled:Z

.field private final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerToken:Ljava/lang/Object;

.field protected mIsFollowing:Z

.field private mIsLocationEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMapController:Lorg/osmdroid/api/IMapController;

.field private final mMapCoordsProjected:Landroid/graphics/Point;

.field private final mMapCoordsTranslated:Landroid/graphics/Point;

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private mMyLocationPreviousRect:Landroid/graphics/Rect;

.field public mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

.field private mMyLocationRect:Landroid/graphics/Rect;

.field private mOptionsMenuEnabled:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPersonBitmap:Landroid/graphics/Bitmap;

.field protected final mPersonHotspot:Landroid/graphics/PointF;

.field private final mRunOnFirstFix:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 102
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 6
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsProjected:Landroid/graphics/Point;

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    .line 74
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    .line 76
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 77
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 78
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 79
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    .line 89
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mScale:F

    .line 109
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 110
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 111
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 112
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 116
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/osmdroid/library/R$drawable;->direction_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 120
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x41c00000    # 24.0f

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    const/high16 v2, 0x421c0000    # 39.0f

    iget v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 123
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public disableFollowLocation()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 465
    return-void
.end method

.method public disableMyLocation()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 573
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 576
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 579
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 320
    if-eqz p3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Landroid/location/Location;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "lastFix"    # Landroid/location/Location;

    .prologue
    .line 211
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 212
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsProjected:Landroid/graphics/Point;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    invoke-virtual {v1, v7, v8}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 214
    iget-boolean v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v7, :cond_0

    .line 215
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 216
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 217
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v10

    .line 216
    invoke-static {v8, v9, v10, v11}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v2, v7, v8

    .line 219
    .local v2, "radius":F
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v8, 0x32

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v8, 0x96

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    .end local v2    # "radius":F
    :cond_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 229
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 231
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    neg-float v7, v7

    const/high16 v8, 0x41a00000    # 20.0f

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    div-float v5, v7, v8

    .line 234
    .local v5, "tx":F
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v8, 0x5

    aget v7, v7, v8

    neg-float v7, v7

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    div-float v6, v7, v8

    .line 236
    .local v6, "ty":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x40a00000    # 5.0f

    add-float/2addr v8, v6

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    add-float/2addr v8, v6

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x420c0000    # 35.0f

    add-float/2addr v8, v6

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x42480000    # 50.0f

    add-float/2addr v8, v6

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :cond_1
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 246
    .local v3, "scaleX":F
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrixValues:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 249
    .local v4, "scaleY":F
    invoke-virtual {p3}, Landroid/location/Location;->hasBearing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    .line 253
    .local v0, "mapRotation":F
    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result v0

    .line 254
    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_2

    .line 255
    const/high16 v7, 0x43b40000    # 360.0f

    sub-float/2addr v0, v7

    .line 256
    :cond_2
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p1, v0, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 258
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v4

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 260
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 276
    .end local v0    # "mapRotation":F
    :goto_0
    return-void

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 267
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v7

    neg-float v7, v7

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 270
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v4

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 272
    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget-object v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public enableFollowLocation()V
    .locals 2

    .prologue
    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 447
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 449
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 455
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 458
    :cond_1
    return-void
.end method

.method public enableMyLocation()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z
    .locals 3
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 537
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v2, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z

    move-result v1

    .line 538
    .local v1, "success":Z
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 541
    if-eqz v1, :cond_0

    .line 542
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 543
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 549
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v2, :cond_1

    .line 550
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 553
    :cond_1
    return v1
.end method

.method public getEnableAutoStop()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "zoomLevel"    # I
    .param p2, "lastFix"    # Landroid/location/Location;
    .param p3, "reuse"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 279
    if-nez p3, :cond_0

    .line 280
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "reuse":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 282
    .restart local p3    # "reuse":Landroid/graphics/Rect;
    :cond_0
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 283
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsProjected:Landroid/graphics/Point;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 286
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    .line 290
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 290
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 291
    .local v3, "widestEdge":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v3

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 301
    .end local v3    # "widestEdge":I
    :goto_0
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v4, :cond_1

    .line 302
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 303
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7, p1}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 302
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 304
    .local v1, "radius":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v1

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 306
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 308
    .local v2, "strokeWidth":I
    neg-int v4, v2

    neg-int v5, v2

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 311
    .end local v1    # "radius":I
    .end local v2    # "strokeWidth":I
    :cond_1
    return-object p3

    .line 295
    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    .line 296
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 295
    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 306
    .restart local v1    # "radius":I
    :cond_3
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 307
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    float-to-double v4, v4

    goto :goto_1
.end method

.method public getMyLocationProvider()Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-object v0
.end method

.method public isDrawAccuracyEnabled()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return v0
.end method

.method public isFollowLocationEnabled()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    .line 385
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$string;->my_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_mylocation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 387
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 392
    return v4
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 150
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 151
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 152
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMatrix:Landroid/graphics/Matrix;

    .line 154
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 157
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    .line 158
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 159
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 160
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    .line 161
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->destroy()V

    .line 164
    :cond_0
    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 165
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 166
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "source"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .prologue
    .line 480
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;-><init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 494
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sub-int v0, v1, p2

    .line 406
    .local v0, "menuId":I
    sget v1, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    if-ne v0, v1, :cond_1

    .line 407
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    .line 409
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 414
    :goto_0
    const/4 v1, 0x1

    .line 416
    :goto_1
    return v1

    .line 411
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    .line 412
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    goto :goto_0

    .line 416
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 398
    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "mapView"    # Lorg/osmdroid/api/IMapView;

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v6, :cond_1

    .line 332
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 333
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsProjected:Landroid/graphics/Point;

    iget-object v7, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 334
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 335
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 336
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, p1, v6

    int-to-double v2, v6

    .line 337
    .local v2, "xDiff":D
    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsTranslated:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, p2, v6

    int-to-double v4, v6

    .line 338
    .local v4, "yDiff":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/4 v1, 0x1

    .line 339
    .local v1, "snap":Z
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "snap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "pj":Lorg/osmdroid/views/Projection;
    .end local v1    # "snap":Z
    .end local v2    # "xDiff":D
    .end local v4    # "yDiff":D
    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 358
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    .line 364
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :goto_0
    return v0

    .line 361
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 604
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 606
    const/4 v0, 0x1

    .line 609
    :goto_0
    return v0

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 609
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "personBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "directionArrowBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 132
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    .line 133
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    .line 137
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    .line 139
    return-void
.end method

.method public setDrawAccuracyEnabled(Z)V
    .locals 0
    .param p1, "drawAccuracyEnabled"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    .line 180
    return-void
.end method

.method public setEnableAutoStop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    .line 350
    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 498
    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 499
    .local v8, "oldLocation":Landroid/location/Location;
    if-eqz v8, :cond_0

    .line 500
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v8, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 504
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 507
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 508
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapCoordsProjected:Landroid/graphics/Point;

    .line 507
    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    .line 510
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 512
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 513
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 531
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getMyLocationDrawingBounds(ILandroid/location/Location;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 519
    if-eqz v8, :cond_2

    .line 520
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationPreviousRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 523
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    .line 524
    .local v7, "left":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 525
    .local v10, "top":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 526
    .local v9, "right":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationRect:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 529
    .local v0, "bottom":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1, v7, v10, v9, v0}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIII)V

    goto :goto_0
.end method

.method protected setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 2
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass an IMyLocationProvider to setMyLocationProvider()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 203
    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 204
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    .line 374
    return-void
.end method

.method public setPersonHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 207
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 208
    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 620
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    .line 621
    return-void
.end method

.method protected stopLocationProvider()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->stopLocationProvider()V

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 587
    :cond_1
    return-void
.end method
