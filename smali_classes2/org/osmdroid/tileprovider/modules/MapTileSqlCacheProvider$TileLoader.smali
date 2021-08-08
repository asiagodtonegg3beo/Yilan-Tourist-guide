.class public Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileSqlCacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-static {v4}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 165
    .local v2, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-nez v2, :cond_0

    move-object v1, v3

    .line 192
    :goto_0
    return-object v1

    .line 170
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->isSdCardAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No sdcard - do nothing for tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    move-object v1, v3

    .line 175
    goto :goto_0

    .line 178
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-static {v4}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 180
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 185
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LowMemoryException downloading MapTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    .line 189
    new-instance v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;

    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {v3, v4, v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V

    throw v3

    .line 182
    .end local v0    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    sget v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I
    :try_end_1
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 190
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "OsmDroid"

    const-string v5, "Error loading tile"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 192
    goto/16 :goto_0
.end method
