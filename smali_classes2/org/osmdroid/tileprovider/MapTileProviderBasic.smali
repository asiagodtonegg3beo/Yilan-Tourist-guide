.class public Lorg/osmdroid/tileprovider/MapTileProviderBasic;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;
.source "MapTileProviderBasic.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field private final mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

.field protected tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 53
    new-instance v1, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v2, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .prologue
    .line 61
    new-instance v1, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v2, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 7
    .param p1, "pRegisterReceiver"    # Lorg/osmdroid/tileprovider/IRegisterReceiver;
    .param p2, "aNetworkAvailablityCheck"    # Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;
    .param p3, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p4, "pContext"    # Landroid/content/Context;
    .param p5, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .prologue
    const/16 v6, 0xa

    .line 71
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    .line 72
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    .line 74
    if-eqz p5, :cond_0

    .line 75
    iput-object p5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 83
    :goto_0
    new-instance v2, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    .line 84
    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v2, p1, v5, p3}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Landroid/content/res/AssetManager;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 85
    .local v2, "assetsProvider":Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v6, :cond_2

    .line 89
    new-instance v3, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {v3, p1, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 93
    .local v3, "cacheProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    :goto_1
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;

    invoke-direct {v1, p1, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 97
    .local v1, "archiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v4, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-direct {v4, p3, v5, p2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    .line 101
    .local v4, "downloaderProvider":Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;-><init>()V

    .line 104
    .local v0, "approximationProvider":Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, v2}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 106
    invoke-virtual {v0, v3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 107
    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 108
    return-void

    .line 77
    .end local v0    # "approximationProvider":Lorg/osmdroid/tileprovider/modules/MapTileApproximater;
    .end local v1    # "archiveProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileArchiveProvider;
    .end local v2    # "assetsProvider":Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
    .end local v3    # "cacheProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .end local v4    # "downloaderProvider":Lorg/osmdroid/tileprovider/modules/MapTileDownloader;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v6, :cond_1

    .line 78
    new-instance v5, Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-direct {v5}, Lorg/osmdroid/tileprovider/modules/TileWriter;-><init>()V

    iput-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v5, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v5}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    .line 91
    .restart local v2    # "assetsProvider":Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
    :cond_2
    new-instance v3, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    invoke-direct {v3, p1, p3}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .restart local v3    # "cacheProvider":Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    goto :goto_1
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 122
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    .line 123
    return-void
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->tileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object v0
.end method

.method protected isDowngradedMode()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;->mNetworkAvailabilityCheck:Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;->getNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
