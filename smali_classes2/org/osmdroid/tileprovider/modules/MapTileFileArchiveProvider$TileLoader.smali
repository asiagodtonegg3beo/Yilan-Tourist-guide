.class public Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileFileArchiveProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method


# virtual methods
.method public loadTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v4}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 204
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    invoke-static {}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->isSdCardAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
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

    goto :goto_0

    .line 216
    :cond_2
    const/4 v2, 0x0

    .line 218
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Archives - Tile doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-static {v4, p1, v3}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_5

    .line 224
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 225
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use tile from archive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    invoke-interface {v3, v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 233
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 234
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 233
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v2, :cond_0

    .line 234
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "OsmDroid"

    const-string v5, "Error loading tile"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz v2, :cond_0

    .line 234
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_6

    .line 234
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_6
    throw v4
.end method
