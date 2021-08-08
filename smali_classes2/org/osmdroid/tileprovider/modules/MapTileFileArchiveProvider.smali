.class public Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapTileFileArchiveProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
    }
.end annotation


# instance fields
.field private final mArchiveFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecificArchivesProvided:Z

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V
    .locals 3
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "pArchives"    # [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .prologue
    .line 58
    .line 59
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v1

    .line 60
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v2

    .line 58
    invoke-direct {p0, p1, v1, v2}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 64
    if-nez p3, :cond_1

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    .line 66
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    .line 74
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    .line 69
    array-length v1, p3

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    .param p1, "x1"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "x2"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->getInputStream(Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private findArchiveFiles()V
    .locals 7

    .prologue
    .line 158
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-static {}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->isSdCardAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    :cond_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, "cachePaths":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 167
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 168
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 169
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v0

    .line 170
    .local v0, "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v0, :cond_2

    .line 171
    iget-object v6, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getInputStream(Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)Ljava/io/InputStream;
    .locals 5
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 180
    .local v0, "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p2, p1}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found tile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "archiveFile":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 145
    .local v0, "t":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mArchiveFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "t":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->detach()V

    .line 150
    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 118
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v1

    :goto_0
    return v1

    .line 119
    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    goto :goto_0
.end method

.method public getMinimumZoomLevel()I
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 112
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMinimumZoomLevel()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "File Archive Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "filearchive"

    return-object v0
.end method

.method public getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;)V

    return-object v0
.end method

.method public bridge synthetic getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider$TileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onMediaMounted()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mSpecificArchivesProvided:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->findArchiveFiles()V

    .line 134
    :cond_0
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 139
    return-void
.end method
