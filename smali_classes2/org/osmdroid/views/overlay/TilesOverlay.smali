.class public Lorg/osmdroid/views/overlay/TilesOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "TilesOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
    }
.end annotation


# static fields
.field public static final INVERT_COLORS:Landroid/graphics/ColorFilter;

.field public static final MENU_MAP_MODE:I

.field public static final MENU_OFFLINE:I

.field public static final MENU_TILE_SOURCE_STARTING_ID:I

.field static final negate:[F


# instance fields
.field private ctx:Landroid/content/Context;

.field private currentColorFilter:Landroid/graphics/ColorFilter;

.field private mBottomRightMercator:Landroid/graphics/Point;

.field protected final mDebugPaint:Landroid/graphics/Paint;

.field private mLoadingBackgroundColor:I

.field private mLoadingLineColor:I

.field private mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

.field private mOptionsMenuEnabled:Z

.field private mOvershootTileCache:I

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private final mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

.field private mTilePointMercator:Landroid/graphics/Point;

.field protected final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private final mTileRect:Landroid/graphics/Rect;

.field private mTopLeftMercator:Landroid/graphics/Point;

.field private final mViewPort:Landroid/graphics/Rect;

.field protected userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    .line 49
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuIdSequence(I)I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    .line 50
    invoke-static {}, Lorg/osmdroid/views/overlay/TilesOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    .line 78
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/osmdroid/views/overlay/TilesOverlay;->negate:[F

    .line 87
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lorg/osmdroid/views/overlay/TilesOverlay;->negate:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lorg/osmdroid/views/overlay/TilesOverlay;->INVERT_COLORS:Landroid/graphics/ColorFilter;

    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V
    .locals 4
    .param p1, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xd0

    const/16 v2, 0xc0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 56
    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePointMercator:Landroid/graphics/Point;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    .line 69
    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    const/16 v0, 0xd8

    invoke-static {v0, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    .line 71
    const/16 v0, 0xc8

    invoke-static {v0, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I

    .line 77
    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    .line 299
    new-instance v0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;Lorg/osmdroid/views/overlay/TilesOverlay$1;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    .line 92
    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid tile provider to the tiles overlay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 44
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I

    return v0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private clearLoadingTile()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 441
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 443
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_0
    return-void
.end method

.method private getLoadingTile()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    .line 409
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 436
    :goto_0
    return-object v1

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eqz v1, :cond_3

    .line 413
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 414
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v10

    .line 415
    .local v10, "tileSize":I
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 417
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 419
    .local v5, "paint":Landroid/graphics/Paint;
    iget v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 420
    iget v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    div-int/lit8 v9, v10, 0x10

    .line 423
    .local v9, "lineSize":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 424
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v10

    int-to-float v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 425
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    int-to-float v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    add-int/2addr v6, v9

    goto :goto_2

    .line 414
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "a":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "lineSize":I
    .end local v10    # "tileSize":I
    :cond_1
    const/16 v10, 0x100

    goto :goto_1

    .line 427
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "a":I
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "lineSize":I
    .restart local v10    # "tileSize":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "a":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "lineSize":I
    .end local v10    # "tileSize":I
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 428
    :catch_0
    move-exception v8

    .line 429
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "OsmDroid"

    const-string v2, "OutOfMemoryError getting loading tile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3

    .line 431
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 432
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v1, "OsmDroid"

    const-string v2, "NullPointerException getting loading tile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 173
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    if-eqz p3, :cond_1

    .line 196
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 184
    .local v3, "projection":Lorg/osmdroid/views/Projection;
    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 186
    .local v0, "screenRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2, v4}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 188
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2, v4}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 190
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;
    .param p3, "zoomLevel"    # D
    .param p5, "viewPort"    # Landroid/graphics/Rect;

    .prologue
    .line 207
    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    .line 208
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v6

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLandroid/graphics/Rect;Landroid/graphics/Canvas;D)V

    .line 211
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {p5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 214
    .local v8, "centerPoint":Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0x9

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    iget v0, v8, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0x9

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x9

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    .end local v8    # "centerPoint":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public getLoadingBackgroundColor()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    return v0
.end method

.method public getLoadingLineColor()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    return v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getOvershootTileCache()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 10
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 323
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v5, p2

    sget v6, Lorg/osmdroid/library/R$string;->map_mode:I

    invoke-interface {p1, v8, v5, v8, v6}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    sget v6, Lorg/osmdroid/library/R$drawable;->ic_menu_mapmode:I

    .line 324
    invoke-interface {v5, v6}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 326
    .local v2, "mapMenu":Landroid/view/SubMenu;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 327
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 328
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v5, p2

    sget v6, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v6, v0

    add-int/2addr v6, p2

    .line 329
    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-interface {v2, v5, v6, v8, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .end local v3    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_0
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v5, p2

    invoke-interface {v2, v5, v9, v9}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 333
    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 334
    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    .line 335
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    .line 334
    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/osmdroid/library/R$drawable;->ic_menu_offline:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v5, p2

    invoke-interface {p1, v8, v5, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 340
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    return v9

    .line 335
    :cond_2
    sget v5, Lorg/osmdroid/library/R$string;->set_mode_online:I

    goto :goto_1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 113
    iput-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    .line 114
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_0

    .line 117
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v1, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v1, :cond_1

    .line 125
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v2, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 127
    :cond_1
    iput-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2

    .line 131
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v1, :cond_3

    .line 139
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v2, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 141
    :cond_3
    iput-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sub-int v0, v2, p2

    .line 364
    .local v0, "menuId":I
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    if-lt v0, v2, :cond_0

    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    .line 366
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_0

    .line 367
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v2

    sget v4, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    sub-int v4, v0, v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p3, v2}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 375
    :goto_0
    return v3

    .line 370
    :cond_0
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    if-ne v0, v2, :cond_2

    .line 371
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 372
    .local v1, "useDataConnection":Z
    :cond_1
    invoke-virtual {p3, v1}, Lorg/osmdroid/views/MapView;->setUseDataConnection(Z)V

    goto :goto_0

    .end local v1    # "useDataConnection":Z
    :cond_2
    move v3, v1

    .line 375
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v3, 0x1

    .line 346
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v1

    .line 347
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v2

    .line 346
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 349
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 352
    :cond_0
    sget v1, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v1, p2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 353
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    .line 352
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 356
    return v3

    .line 353
    :cond_1
    sget v1, Lorg/osmdroid/library/R$string;->set_mode_online:I

    goto :goto_0
.end method

.method protected onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "currentMapTile"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tileRect"    # Landroid/graphics/Rect;

    .prologue
    .line 303
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 304
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePointMercator:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 305
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePointMercator:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTilePointMercator:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 306
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 482
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    .line 483
    return-void
.end method

.method public setLoadingBackgroundColor(I)V
    .locals 1
    .param p1, "pLoadingBackgroundColor"    # I

    .prologue
    .line 391
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 392
    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    .line 393
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    .line 395
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public setLoadingLineColor(I)V
    .locals 1
    .param p1, "pLoadingLineColor"    # I

    .prologue
    .line 402
    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    if-eq v0, p1, :cond_0

    .line 403
    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    .line 404
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    .line 406
    :cond_0
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    .line 313
    return-void
.end method

.method public setOvershootTileCache(I)V
    .locals 0
    .param p1, "overshootTileCache"    # I

    .prologue
    .line 460
    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOvershootTileCache:I

    .line 461
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1
    .param p1, "aMode"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setUseDataConnection(Z)V

    .line 168
    return-void
.end method

.method public useDataConnection()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->useDataConnection()Z

    move-result v0

    return v0
.end method
