.class public Lorg/osmdroid/tileprovider/MapTileProviderArray;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase;
.source "MapTileProviderArray.java"


# instance fields
.field protected mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

.field protected final mTileProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "aRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p3, "pTileProviderArray"    # [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    .line 66
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 76
    .local v0, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    goto :goto_0

    .line 79
    .end local v0    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileCache;->clear()V

    .line 82
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 83
    :try_start_2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 84
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V

    .line 86
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->destroy()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 90
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 91
    return-void

    .line 84
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 8
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    const/4 v3, 0x0

    .local v3, "providerDoesntExist":Z
    const/4 v1, 0x0

    .local v1, "providerCantGetDataConnection":Z
    const/4 v2, 0x0

    .line 201
    .local v2, "providerCantServiceZoomlevel":Z
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 206
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->useDataConnection()Z

    move-result v7

    if-nez v7, :cond_5

    .line 207
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    .line 208
    :goto_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v4

    .line 209
    .local v4, "zoomLevel":I
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v7

    if-gt v4, v7, :cond_1

    .line 210
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v7

    if-ge v4, v7, :cond_6

    :cond_1
    move v2, v5

    .line 212
    .end local v4    # "zoomLevel":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 214
    :cond_3
    return-object v0

    :cond_4
    move v3, v6

    .line 205
    goto :goto_0

    :cond_5
    move v1, v6

    .line 207
    goto :goto_1

    .restart local v4    # "zoomLevel":I
    :cond_6
    move v2, v6

    .line 210
    goto :goto_2
.end method

.method public getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 102
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v3, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, "tile":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 104
    invoke-static {v2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->isDowngradedMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    :cond_2
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MapTileProviderArray.getMapTile() requested but not in cache, trying from async providers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    new-instance v1, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-direct {v1, p1, v3, p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;-><init>(Lorg/osmdroid/tileprovider/MapTile;Ljava/util/List;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V

    .line 122
    .local v1, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v4

    .line 124
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    monitor-exit v4

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 127
    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 131
    .local v0, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {p0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0
.end method

.method public getMaximumZoomLevel()I
    .locals 5

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "result":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v3

    .line 240
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 241
    .local v1, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 242
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0

    .line 245
    .end local v1    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_1
    monitor-exit v3

    .line 246
    return v0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMinimumZoomLevel()I
    .locals 5

    .prologue
    .line 225
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    .line 226
    .local v0, "result":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v3

    .line 227
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 228
    .local v1, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 229
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    .line 232
    .end local v1    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_1
    monitor-exit v3

    .line 233
    return v0

    .line 232
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z
    .locals 2
    .param p1, "provider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 218
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-long v0, v0

    .line 187
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDowngradedMode()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 141
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 169
    .local v0, "nextProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 151
    .local v0, "nextProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 4
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 253
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 255
    .local v0, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 256
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V

    goto :goto_0

    .line 258
    .end local v0    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    return-void
.end method
