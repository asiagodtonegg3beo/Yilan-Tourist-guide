.class public Lorg/osmdroid/tileprovider/MapTileCache;
.super Ljava/lang/Object;
.source "MapTileCache.java"


# instance fields
.field protected mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

.field protected final mCachedTilesLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getCacheMapTileCount()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "aMaximumCacheSize"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    .line 39
    new-instance v0, Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    .line 40
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->clear()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 75
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "aCapacity"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->ensureCapacity(I)V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 53
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putTile(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    if-eqz p2, :cond_0

    .line 60
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1

    .line 64
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
