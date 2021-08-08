.class public Lorg/osmdroid/tileprovider/modules/TileWriter;
.super Ljava/lang/Object;
.source "TileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field static hasInited:Z

.field private static mUsedCacheSpace:J


# instance fields
.field initThread:Ljava/lang/Thread;

.field private mMaximumCachedFileAge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    .line 58
    sget-boolean v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    if-nez v0, :cond_0

    .line 59
    sput-boolean v1, Lorg/osmdroid/tileprovider/modules/TileWriter;->hasInited:Z

    .line 61
    new-instance v0, Lorg/osmdroid/tileprovider/modules/TileWriter$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    .line 76
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 77
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 35
    sput-wide p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide p0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/TileWriter;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/modules/TileWriter;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V

    return-void
.end method

.method private calculateDirectorySize(Ljava/io/File;)V
    .locals 8
    .param p1, "pDirectory"    # Ljava/io/File;

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 213
    .local v1, "z":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 214
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 215
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    sget-wide v4, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private createFolderAndCheckIfExists(Ljava/io/File;)Z
    .locals 4
    .param p1, "pFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - wait and check again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seems like another thread created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File still doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private cutCurrentCache()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 272
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v4

    .line 273
    .local v4, "lock":Ljava/io/File;
    monitor-enter v4

    .line 275
    :try_start_0
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 277
    const-string v7, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming tile cache from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 278
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 283
    .local v5, "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/io/File;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 284
    .local v1, "files":[Ljava/io/File;
    new-instance v7, Lorg/osmdroid/tileprovider/modules/TileWriter$2;

    invoke-direct {v7, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$2;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    invoke-static {v1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 291
    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 292
    .local v0, "file":Ljava/io/File;
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 305
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v6, "OsmDroid"

    const-string v7, "Finished trimming tile cache"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v1    # "files":[Ljava/io/File;
    .end local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1
    monitor-exit v4

    .line 308
    return-void

    .line 296
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 297
    .local v2, "length":J
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 298
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 299
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cache trim deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    sub-long/2addr v8, v2

    sput-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 291
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "length":J
    .end local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private getDirectoryFileList(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p1, "aDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 252
    .local v2, "z":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 253
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 254
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return-object v1
.end method

.method public static getUsedCacheSpace()J
    .locals 2

    .prologue
    .line 92
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method private isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p1, "pParentDirectory"    # Ljava/io/File;
    .param p2, "pDirectory"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "canonicalParentPath1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "canonicalParentPath2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 243
    .end local v0    # "canonicalParentPath1":Ljava/lang/String;
    .end local v1    # "canonicalParentPath2":Ljava/lang/String;
    :goto_0
    return v3

    .line 237
    .restart local v0    # "canonicalParentPath1":Ljava/lang/String;
    .restart local v1    # "canonicalParentPath2":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 238
    .end local v0    # "canonicalParentPath1":Ljava/lang/String;
    .end local v1    # "canonicalParentPath2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method


# virtual methods
.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/Long;
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v1

    .line 320
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    const/4 v0, 0x0

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 328
    .local v6, "now":J
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 329
    .local v4, "lastModified":J
    iget-wide v8, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    sub-long v8, v6, v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    const/4 v2, 0x1

    .line 331
    .local v2, "fileExpired":Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    const-string v3, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tile expired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2
    const/4 v3, -0x2

    invoke-static {v0, v3}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 329
    .end local v2    # "fileExpired":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->initThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 5
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 160
    :goto_0
    return v2

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cached tile from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    .locals 12
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    const-string v8, "OsmDroid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TileWrite "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 113
    .local v6, "parent":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v6}, Lorg/osmdroid/tileprovider/modules/TileWriter;->createFolderAndCheckIfExists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 135
    :cond_1
    :goto_0
    return v7

    .line 117
    :cond_2
    const/4 v4, 0x0

    .line 119
    .local v4, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {p3, v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 123
    .local v2, "length":J
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    add-long/2addr v8, v2

    sput-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 124
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 125
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :cond_3
    if-eqz v5, :cond_4

    .line 132
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 135
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "length":J
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget v8, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    if-eqz v4, :cond_1

    .line 132
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_5

    .line 132
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_5
    throw v7

    .line 131
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 127
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public setMaximumCachedFileAge(J)V
    .locals 1
    .param p1, "mMaximumCachedFileAge"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mMaximumCachedFileAge:J

    .line 97
    return-void
.end method
