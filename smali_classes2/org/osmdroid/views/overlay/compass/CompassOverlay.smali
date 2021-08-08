.class public Lorg/osmdroid/views/overlay/compass/CompassOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "CompassOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;


# static fields
.field public static final MENU_COMPASS:I


# instance fields
.field private mAzimuth:F

.field private mCompassCenterX:F

.field private mCompassCenterY:F

.field protected mCompassFrameBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassFrameCenterX:F

.field protected final mCompassFrameCenterY:F

.field private final mCompassMatrix:Landroid/graphics/Matrix;

.field private final mCompassRadius:F

.field protected mCompassRoseBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassRoseCenterX:F

.field protected final mCompassRoseCenterY:F

.field private final mDisplay:Landroid/view/Display;

.field private mIsCompassEnabled:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field private mOptionsMenuEnabled:Z

.field public mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

.field protected final mScale:F

.field private sSmoothPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 73
    new-instance v0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/high16 v4, 0x420c0000    # 35.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 79
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    .line 52
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 54
    iput v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    .line 55
    iput v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    .line 56
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRadius:F

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    .line 82
    iput-object p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 83
    const-string v1, "window"

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    .line 87
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassFramePicture()V

    .line 88
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassRosePicture()V

    .line 90
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    .line 91
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    .line 92
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    .line 93
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    .line 95
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 96
    return-void
.end method

.method private calculatePointOnCircle(FFFF)Landroid/graphics/Point;
    .locals 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 315
    neg-float v4, p4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 317
    .local v0, "dblRadians":D
    float-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 318
    .local v2, "intX":I
    float-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 320
    .local v3, "intY":I
    new-instance v4, Landroid/graphics/Point;

    float-to-int v5, p1

    add-int/2addr v5, v2

    float-to-int v6, p2

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method private createCompassFramePicture()V
    .locals 11

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x1

    const/high16 v10, 0x41a00000    # 20.0f

    .line 352
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 353
    .local v8, "innerPaint":Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 360
    .local v6, "outerPaint":Landroid/graphics/Paint;
    const v0, -0x777778

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 363
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 366
    const/high16 v0, 0x42480000    # 50.0f

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v9, v0

    .line 367
    .local v9, "picBorderWidthAndHeight":I
    div-int/lit8 v7, v9, 0x2

    .line 368
    .local v7, "center":I
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    .line 372
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v0, v7

    int-to-float v2, v7

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v10

    invoke-virtual {v1, v0, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 376
    int-to-float v0, v7

    int-to-float v2, v7

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v10

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 381
    int-to-float v2, v7

    int-to-float v3, v7

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v10, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 382
    int-to-float v2, v7

    int-to-float v3, v7

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x42b40000    # 90.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 383
    int-to-float v2, v7

    int-to-float v3, v7

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x43340000    # 180.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 384
    int-to-float v2, v7

    int-to-float v3, v7

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v10, v0

    const/high16 v5, 0x43870000    # 270.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 385
    return-void
.end method

.method private createCompassRosePicture()V
    .locals 13

    .prologue
    const/16 v10, 0xdc

    const/4 v9, 0x1

    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v11, 0x40800000    # 4.0f

    .line 389
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 390
    .local v3, "northPaint":Landroid/graphics/Paint;
    const/high16 v8, -0x600000

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 396
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 397
    .local v7, "southPaint":Landroid/graphics/Paint;
    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .local v2, "centerPaint":Landroid/graphics/Paint;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    const/high16 v8, 0x42480000    # 50.0f

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 410
    .local v6, "picBorderWidthAndHeight":I
    div-int/lit8 v1, v6, 0x2

    .line 412
    .local v1, "center":I
    iget-object v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 413
    iget-object v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    :cond_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    .line 416
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 420
    .local v4, "pathNorth":Landroid/graphics/Path;
    int-to-float v8, v1

    int-to-float v9, v1

    iget v10, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 421
    int-to-float v8, v1

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    int-to-float v9, v1

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    int-to-float v8, v1

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    int-to-float v9, v1

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    int-to-float v8, v1

    int-to-float v9, v1

    iget v10, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 424
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 425
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 428
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 429
    .local v5, "pathSouth":Landroid/graphics/Path;
    int-to-float v8, v1

    int-to-float v9, v1

    iget v10, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 430
    int-to-float v8, v1

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    int-to-float v9, v1

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    int-to-float v8, v1

    iget v9, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    int-to-float v9, v1

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    int-to-float v8, v1

    int-to-float v9, v1

    iget v10, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 434
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 437
    int-to-float v8, v1

    int-to-float v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v0, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 438
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F
    .param p5, "degrees"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->calculatePointOnCircle(FFFF)Landroid/graphics/Point;

    move-result-object v1

    .line 327
    .local v1, "point":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, p5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 328
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 329
    .local v0, "p":Landroid/graphics/Path;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 333
    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    return-void
.end method

.method private getDisplayOrientation()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 340
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    .line 342
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 344
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private invalidateCompass()V
    .locals 10

    .prologue
    .line 109
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 110
    .local v4, "screenRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    .line 111
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v1, v5, v6

    .line 112
    .local v1, "frameLeft":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v3, v5, v6

    .line 114
    .local v3, "frameTop":I
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v2, v5, v6

    .line 116
    .local v2, "frameRight":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    .line 117
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v0, v5, v6

    .line 120
    .local v0, "frameBottom":I
    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    add-int/lit8 v6, v1, -0x2

    add-int/lit8 v7, v3, -0x2

    add-int/lit8 v8, v2, 0x2

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/osmdroid/views/MapView;->postInvalidateMapCoordinates(IIII)V

    .line 122
    return-void
.end method


# virtual methods
.method public disableCompass()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    .line 280
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 286
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 289
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 292
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 179
    if-eqz p3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getDisplayOrientation()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bearing"    # F
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 149
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    .line 150
    .local v2, "proj":Lorg/osmdroid/views/Projection;
    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v0, v3, v4

    .line 151
    .local v0, "centerX":F
    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v1, v3, v4

    .line 153
    .local v1, "centerY":F
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    neg-float v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 154
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    invoke-virtual {v2}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 159
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    neg-float v4, p2

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 163
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    neg-float v4, v4

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    invoke-virtual {v2}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 168
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 169
    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    return-void
.end method

.method public enableCompass()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z
    .locals 2
    .param p1, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 252
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->startOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;)Z

    move-result v0

    .line 253
    .local v0, "success":Z
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    .line 256
    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 260
    :cond_0
    return v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    return v0
.end method

.method public getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    return-object v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

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

    .line 206
    sget v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    .line 207
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$string;->compass:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 209
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_compass:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 210
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 212
    return v4
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 101
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    .line 103
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sub-int v0, v1, p2

    .line 226
    .local v0, "menuId":I
    sget v1, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    if-ne v0, v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    .line 232
    :goto_0
    const/4 v1, 0x1

    .line 234
    :goto_1
    return v1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 0
    .param p1, "orientation"    # F
    .param p2, "source"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .prologue
    .line 244
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    .line 245
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    .line 246
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 218
    sget v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public setCompassCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 129
    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    .line 130
    iput p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    .line 131
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    .line 196
    return-void
.end method

.method public setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 2
    .param p1, "orientationProvider"    # Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass an IOrientationProvider to setOrientationProvider()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    .line 145
    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    .line 146
    return-void
.end method
