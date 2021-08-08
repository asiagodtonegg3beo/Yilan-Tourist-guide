.class public Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.source "MapTileApproximater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
    }
.end annotation


# instance fields
.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field private minZoomLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    .line 38
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    .line 39
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    .line 37
    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>(II)V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "pThreadPoolSize"    # I
    .param p2, "pPendingQueueSize"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "pSrcDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p1, "pMapTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pZoomDiff"    # I

    .prologue
    .line 202
    if-gtz p2, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 206
    .local v10, "tileSizePixels":I
    invoke-static {v10}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .local v1, "canvas":Landroid/graphics/Canvas;
    instance-of v3, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 209
    .local v3, "isReusable":Z
    if-eqz v3, :cond_6

    move-object v11, p0

    check-cast v11, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v4, v11

    .line 211
    .local v4, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_1
    const/4 v9, 0x0

    .line 212
    .local v9, "success":Z
    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 216
    :cond_2
    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    .line 217
    :cond_3
    shr-int v6, v10, p2

    .line 218
    .local v6, "srcSize":I
    if-nez v6, :cond_7

    .line 219
    const/4 v9, 0x0

    .line 230
    .end local v6    # "srcSize":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 231
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 233
    :cond_5
    if-nez v9, :cond_0

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    .end local v4    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    .end local v9    # "success":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 221
    .restart local v4    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    .restart local v6    # "srcSize":I
    .restart local v9    # "success":Z
    :cond_7
    :try_start_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v11

    const/4 v12, 0x1

    shl-int/2addr v12, p2

    rem-int/2addr v11, v12

    mul-int v7, v11, v6

    .line 222
    .local v7, "srcX":I
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v11

    const/4 v12, 0x1

    shl-int/2addr v12, p2

    rem-int/2addr v11, v12

    mul-int v8, v11, v6

    .line 223
    .local v8, "srcY":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v11, v7, v6

    add-int v12, v8, v6

    invoke-direct {v5, v7, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v2, v11, v12, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    .local v2, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v5, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    const/4 v9, 0x1

    goto :goto_2

    .line 230
    .end local v2    # "dstRect":Landroid/graphics/Rect;
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v6    # "srcSize":I
    .end local v7    # "srcX":I
    .end local v8    # "srcY":I
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_8

    .line 231
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_8
    throw v11
.end method

.method public static approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "pProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .param p1, "pMapTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pZoomDiff"    # I

    .prologue
    const/4 v4, 0x0

    .line 168
    if-gtz p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v4

    .line 171
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v5

    sub-int v3, v5, p2

    .line 172
    .local v3, "srcZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 178
    new-instance v2, Lorg/osmdroid/tileprovider/MapTile;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v5

    shr-int/2addr v5, p2

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v6

    shr-int/2addr v6, p2

    invoke-direct {v2, v3, v5, v6}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 180
    .local v2, "srcTile":Lorg/osmdroid/tileprovider/MapTile;
    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .local v1, "srcDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 184
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private computeZoomLevels()V
    .locals 5

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "first":Z
    const/4 v3, 0x0

    iput v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    .line 60
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 61
    .local v2, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v1

    .line 62
    .local v1, "otherMin":I
    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    iput v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    goto :goto_0

    .line 66
    :cond_0
    iget v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    goto :goto_0

    .line 69
    .end local v1    # "otherMin":I
    .end local v2    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_1
    return-void
.end method

.method public static getTileBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pTileSizePx"    # I

    .prologue
    .line 246
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Lorg/osmdroid/tileprovider/BitmapPool;->obtainSizedBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 250
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->computeZoomLevels()V

    .line 55
    return-void
.end method

.method public approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pMapTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 129
    const/4 v1, 0x1

    .local v1, "zoomDiff":I
    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_1

    .line 130
    invoke-virtual {p0, p1, v1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 135
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 129
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "pMapTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pZoomDiff"    # I

    .prologue
    .line 147
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->mProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 148
    .local v1, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-static {v1, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->minZoomLevel:I

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Offline Tile Approximation Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "approximater"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileApproximater;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileApproximater$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 0
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    return-void
.end method
