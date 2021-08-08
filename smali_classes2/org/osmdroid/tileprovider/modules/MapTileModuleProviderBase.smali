.class public abstract Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.super Ljava/lang/Object;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;,
        Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field

.field protected final mQueueLockObject:Ljava/lang/Object;

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
.method public constructor <init>(II)V
    .locals 6
    .param p1, "pThreadPoolSize"    # I
    .param p2, "pPendingQueueSize"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    .line 90
    if-ge p2, p1, :cond_0

    .line 91
    const-string v0, "OsmDroid"

    const-string v1, "The pending queue size is smaller than the thread pool size. Automatically reducing the thread pool size."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move p1, p2

    .line 94
    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;

    const/4 v1, 0x5

    .line 95
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getThreadGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/ConfigurablePriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 94
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    .line 98
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;

    add-int/lit8 v2, p2, 0x2

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;IFZI)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->clearQueue()V

    return-void
.end method

.method private clearQueue()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 159
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->clearQueue()V

    .line 168
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 170
    return-void
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getThreadGroupName()Ljava/lang/String;
.end method

.method public abstract getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.end method

.method public abstract getUsesDataConnection()Z
.end method

.method public loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 5
    .param p1, "pState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    .line 132
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string v1, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapTileModuleProviderBase.loadMaptileAsync() on provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for tile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string v1, "OsmDroid"

    const-string v3, "MapTileModuleProviderBase.loadMaptileAsync() tile already exists in request queue for modular provider. Moving to front of queue."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "OsmDroid"

    const-string v2, "RejectedExecutionException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_2
    :try_start_2
    const-string v1, "OsmDroid"

    const-string v3, "MapTileModuleProviderBase.loadMaptileAsync() adding tile to request queue for modular provider."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected removeTileFromQueues(Lorg/osmdroid/tileprovider/MapTile;)V
    .locals 4
    .param p1, "mapTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 173
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mQueueLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapTileModuleProviderBase.removeTileFromQueues() on provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
.end method
