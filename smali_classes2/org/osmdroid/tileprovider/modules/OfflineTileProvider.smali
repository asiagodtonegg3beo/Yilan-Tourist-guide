.class public Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "OfflineTileProvider.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;[Ljava/io/File;)V
    .locals 8
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "source"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;->getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_1

    .line 36
    aget-object v5, p2, v2

    invoke-static {v5}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v4

    .line 37
    .local v4, "temp":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", no tile provider is registered to handle the file extension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    .end local v4    # "temp":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object v5, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 44
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    iput-object v5, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 45
    new-instance v3, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-direct {v3, p1, v5, v6}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    .line 46
    .local v3, "mapTileFileArchiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    .line 49
    .local v0, "approximationProvider":Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, v3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 52
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    .line 64
    return-void
.end method

.method public getArchives()[Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/OfflineTileProvider;->archives:[Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    return-object v0
.end method
