.class public abstract Lorg/osmdroid/tileprovider/MapTileProviderBase;
.super Ljava/lang/Object;
.source "MapTileProviderBase.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    }
.end annotation


# instance fields
.field protected final mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

.field protected mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

.field protected mTileRequestCompleteHandler:Landroid/os/Handler;

.field private mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected mUseDataConnection:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pDownloadFinishedListener"    # Landroid/os/Handler;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    .line 130
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 132
    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileCache;->clear()V

    .line 263
    return-void
.end method

.method public createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>()V

    return-object v0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v2

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v2, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 79
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "pCapacity"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->ensureCapacity(I)V

    .line 256
    return-void
.end method

.method public abstract getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method public abstract getQueueSize()J
.end method

.method public getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-object v0
.end method

.method public abstract getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;I)V

    .line 161
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapTileProviderBase.mapTileRequestCompleted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    return-void
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v0

    invoke-static {p2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;I)V

    .line 210
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapTileProviderBase.mapTileRequestExpiredTile(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    return-void
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 3
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;I)V

    .line 182
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapTileProviderBase.mapTileRequestFailed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected putExpiredTileIntoCache(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v0, p2, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;I)V

    .line 248
    return-void
.end method

.method protected putTileIntoCache(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pState"    # I

    .prologue
    .line 226
    if-nez p2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    .local v0, "before":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 231
    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 232
    .local v1, "stateBefore":I
    if-gt v1, p3, :cond_0

    .line 236
    .end local v1    # "stateBefore":I
    :cond_2
    invoke-static {p2, p3}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 237
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v2, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->putTile(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public rescaleCache(Lorg/osmdroid/views/Projection;DDLandroid/graphics/Rect;)V
    .locals 16
    .param p1, "pProjection"    # Lorg/osmdroid/views/Projection;
    .param p2, "pNewZoomLevel"    # D
    .param p4, "pOldZoomLevel"    # D
    .param p6, "pViewPort"    # Landroid/graphics/Rect;

    .prologue
    .line 293
    cmpl-double v3, p2, p4

    if-nez v3, :cond_0

    .line 314
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 299
    .local v12, "startMs":J
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rescale tile cache from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v14

    .line 302
    .local v14, "topLeftMercator":Landroid/graphics/Point;
    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    .line 304
    .local v9, "bottomRightMercator":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Rect;

    iget v3, v14, Landroid/graphics/Point;->x:I

    iget v4, v14, Landroid/graphics/Point;->y:I

    iget v6, v9, Landroid/graphics/Point;->x:I

    iget v7, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .local v5, "viewPort":Landroid/graphics/Rect;
    cmpl-double v3, p2, p4

    if-lez v3, :cond_1

    new-instance v2, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    .line 310
    .local v2, "tileLooper":Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v8

    move-wide/from16 v3, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->loop(DLandroid/graphics/Rect;DI)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 313
    .local v10, "endMs":J
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished rescale in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v10, v12

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    .end local v2    # "tileLooper":Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    .end local v10    # "endMs":J
    :cond_1
    new-instance v2, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    goto :goto_1
.end method

.method public setTileLoadFailureImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    .line 144
    return-void
.end method

.method public setTileRequestCompleteHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 252
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 0
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 104
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 105
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 0
    .param p1, "pMode"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    .line 282
    return-void
.end method

.method public useDataConnection()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    return v0
.end method
