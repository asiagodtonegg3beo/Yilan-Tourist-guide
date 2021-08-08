.class public Lorg/osmdroid/config/DefaultConfigurationProvider;
.super Ljava/lang/Object;
.source "DefaultConfigurationProvider.java"

# interfaces
.implements Lorg/osmdroid/config/IConfigurationProvider;


# instance fields
.field protected animationSpeedDefault:I

.field protected animationSpeedShort:I

.field protected cacheMapTileCount:S

.field protected debugMapTileDownloader:Z

.field protected debugMapView:Z

.field protected debugMode:Z

.field protected debugTileProviders:Z

.field protected expirationAdder:J

.field protected expirationOverride:Ljava/lang/Long;

.field protected gpsWaitTime:J

.field protected httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

.field protected httpProxy:Ljava/net/Proxy;

.field protected isMapViewHardwareAccelerated:Z

.field private final mAdditionalHttpRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mapViewRecycler:Z

.field protected osmdroidBasePath:Ljava/io/File;

.field protected osmdroidTileCache:Ljava/io/File;

.field protected tileDownloadMaxQueueSize:S

.field protected tileDownloadThreads:S

.field protected tileFileSystemCacheMaxBytes:J

.field protected tileFileSystemCacheTrimBytes:J

.field protected tileFileSystemMaxQueueSize:S

.field protected tileFileSystemThreads:S

.field protected userAgentHttpHeader:Ljava/lang/String;

.field protected userAgentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x28

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    .line 46
    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    .line 47
    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    .line 48
    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    .line 49
    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    .line 50
    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    .line 51
    const-string v0, "osmdroid"

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    .line 52
    const-string v0, "User-Agent"

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    .line 54
    const/16 v0, 0x9

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    .line 55
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    .line 56
    const/16 v0, 0x8

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    .line 57
    iput-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    .line 58
    iput-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    .line 59
    const-wide/32 v0, 0x25800000

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    .line 60
    const-wide/32 v0, 0x1f400000

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    .line 65
    iput-object v4, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 66
    iput-object v4, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    .line 75
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v1

    const-string v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    .line 77
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "pPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 409
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p0, "pPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "pEdit"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 428
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 432
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 433
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .restart local v1    # "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 436
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAdditionalHttpRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAnimationSpeedDefault()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    return v0
.end method

.method public getAnimationSpeedShort()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    return v0
.end method

.method public getCacheMapTileCount()S
    .locals 1

    .prologue
    .line 166
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return v0
.end method

.method public getExpirationExtendedDuration()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-wide v0
.end method

.method public getExpirationOverrideDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsWaitTime()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-wide v0
.end method

.method public getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getHttpProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getOsmdroidBasePath()Ljava/io/File;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-object v0
.end method

.method public getOsmdroidTileCache()Ljava/io/File;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-object v0
.end method

.method public getTileDownloadMaxQueueSize()S
    .locals 1

    .prologue
    .line 196
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return v0
.end method

.method public getTileDownloadThreads()S
    .locals 1

    .prologue
    .line 176
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return v0
.end method

.method public getTileFileSystemCacheMaxBytes()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-wide v0
.end method

.method public getTileFileSystemCacheTrimBytes()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-wide v0
.end method

.method public getTileFileSystemMaxQueueSize()S
    .locals 1

    .prologue
    .line 206
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return v0
.end method

.method public getTileFileSystemThreads()S
    .locals 1

    .prologue
    .line 186
    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return v0
.end method

.method public getUserAgentHttpHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugMapTileDownloader()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return v0
.end method

.method public isDebugMapView()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return v0
.end method

.method public isDebugTileProviders()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return v0
.end method

.method public isMapViewHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return v0
.end method

.method public isMapViewRecyclerFriendly()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 290
    const-string v8, "osmdroid.basePath"

    invoke-interface {p2, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 292
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v3

    .line 293
    .local v3, "discoveredBestPath":Ljava/io/File;
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v4

    .line 294
    .local v4, "discoveredCachPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 296
    :cond_0
    new-instance v3, Ljava/io/File;

    .end local v3    # "discoveredBestPath":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/osmdroid/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "discoveredBestPath":Ljava/io/File;
    move-object v4, v3

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 300
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 301
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "osmdroid.basePath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v8, "osmdroid.cachePath"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    invoke-virtual {p0, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 305
    invoke-virtual {p0, v4}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 338
    .end local v3    # "discoveredBestPath":Ljava/io/File;
    .end local v4    # "discoveredCachPath":Ljava/io/File;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    .line 339
    .local v0, "cacheSize":J
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x9

    if-lt v8, v9, :cond_3

    .line 348
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cache.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "dbFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 351
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 354
    .local v6, "freeSpace":J
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v8

    add-long v10, v6, v0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 355
    add-long v8, v6, v0

    long-to-double v8, v8

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    .line 356
    add-long v8, v6, v0

    long-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    .line 367
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v6    # "freeSpace":J
    :cond_3
    :goto_1
    return-void

    .line 310
    .end local v0    # "cacheSize":J
    :cond_4
    new-instance v8, Ljava/io/File;

    const-string v9, "osmdroid.basePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 311
    new-instance v8, Ljava/io/File;

    const-string v9, "osmdroid.cachePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 312
    const-string v8, "osmdroid.DebugMode"

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMode(Z)V

    .line 313
    const-string v8, "osmdroid.DebugDownloading"

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapTileDownloader(Z)V

    .line 314
    const-string v8, "osmdroid.DebugMapView"

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapView(Z)V

    .line 315
    const-string v8, "osmdroid.DebugTileProvider"

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugTileProviders(Z)V

    .line 316
    const-string v8, "osmdroid.HardwareAcceleration"

    const/4 v9, 0x0

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewHardwareAccelerated(Z)V

    .line 317
    const-string v8, "osmdroid.userAgentValue"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 318
    iget-object v8, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v9, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->load(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)V

    .line 319
    const-string v8, "osmdroid.gpsWaitTime"

    iget-wide v10, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setGpsWaitTime(J)V

    .line 320
    const-string v8, "osmdroid.tileDownloadThreads"

    iget-short v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadThreads(S)V

    .line 321
    const-string v8, "osmdroid.tileFileSystemThreads"

    iget-short v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemThreads(S)V

    .line 322
    const-string v8, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadMaxQueueSize(S)V

    .line 323
    const-string v8, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemMaxQueueSize(S)V

    .line 324
    const-string v8, "osmdroid.ExpirationExtendedDuration"

    iget-wide v10, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setExpirationExtendedDuration(J)V

    .line 325
    const-string v8, "osmdroid.mapViewRecycler"

    iget-boolean v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewRecyclerFriendly(Z)V

    .line 326
    const-string v8, "osmdroid.ZoomSpeedDefault"

    iget v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedDefault(I)V

    .line 327
    const-string v8, "osmdroid.animationSpeedShort"

    iget v9, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setAnimationSpeedShort(I)V

    .line 329
    const-string v8, "osmdroid.ExpirationOverride"

    invoke-interface {p2, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    const-string v8, "osmdroid.ExpirationOverride"

    const-wide/16 v10, -0x1

    invoke-interface {p2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 331
    iget-object v8, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 332
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    goto/16 :goto_0

    .line 360
    .restart local v0    # "cacheSize":J
    .restart local v2    # "dbFile":Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 361
    .restart local v6    # "freeSpace":J
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_3

    .line 362
    long-to-double v8, v6

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    .line 363
    long-to-double v8, v6

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    goto/16 :goto_1
.end method

.method public save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 371
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "osmdroid.basePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v1, "osmdroid.cachePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v1, "osmdroid.DebugMode"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMode()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string v1, "osmdroid.DebugDownloading"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v1, "osmdroid.DebugMapView"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapView()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v1, "osmdroid.DebugTileProvider"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v1, "osmdroid.HardwareAcceleration"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v1, "osmdroid.userAgentValue"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mAdditionalHttpRequestProperties:Ljava/util/Map;

    const-string v2, "osmdroid.additionalHttpRequestProperty."

    invoke-static {p2, v0, v1, v2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Ljava/lang/String;)V

    .line 381
    const-string v1, "osmdroid.gpsWaitTime"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v1, "osmdroid.cacheMapTileCount"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v1, "osmdroid.tileDownloadThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v1, "osmdroid.tileFileSystemThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v1, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v1, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string v1, "osmdroid.ExpirationExtendedDuration"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 388
    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "osmdroid.ExpirationOverride"

    iget-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 391
    :cond_0
    const-string v1, "osmdroid.ZoomSpeedDefault"

    iget v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string v1, "osmdroid.animationSpeedShort"

    iget v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    const-string v1, "osmdroid.mapViewRecycler"

    iget-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    return-void
.end method

.method public setAnimationSpeedDefault(I)V
    .locals 0
    .param p1, "durationsMilliseconds"    # I

    .prologue
    .line 463
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedDefault:I

    .line 464
    return-void
.end method

.method public setAnimationSpeedShort(I)V
    .locals 0
    .param p1, "durationsMilliseconds"    # I

    .prologue
    .line 473
    iput p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->animationSpeedShort:I

    .line 474
    return-void
.end method

.method public setCacheMapTileCount(S)V
    .locals 0
    .param p1, "cacheMapTileCount"    # S

    .prologue
    .line 171
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    .line 172
    return-void
.end method

.method public setDebugMapTileDownloader(Z)V
    .locals 0
    .param p1, "debugMapTileDownloader"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    .line 137
    return-void
.end method

.method public setDebugMapView(Z)V
    .locals 0
    .param p1, "debugMapView"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    .line 117
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debugMode"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    .line 107
    return-void
.end method

.method public setDebugTileProviders(Z)V
    .locals 0
    .param p1, "debugTileProviders"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    .line 127
    return-void
.end method

.method public setExpirationExtendedDuration(J)V
    .locals 5
    .param p1, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 445
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 446
    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    goto :goto_0
.end method

.method public setExpirationOverrideDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Long;

    .prologue
    .line 453
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    .line 454
    return-void
.end method

.method public setGpsWaitTime(J)V
    .locals 1
    .param p1, "gpsWaitTime"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    .line 97
    return-void
.end method

.method public setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "httpHeaderDateTimeFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 242
    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "httpProxy"    # Ljava/net/Proxy;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpProxy:Ljava/net/Proxy;

    .line 252
    return-void
.end method

.method public setMapViewHardwareAccelerated(Z)V
    .locals 0
    .param p1, "mapViewHardwareAccelerated"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    .line 147
    return-void
.end method

.method public setMapViewRecyclerFriendly(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->mapViewRecycler:Z

    .line 489
    return-void
.end method

.method public setOsmdroidBasePath(Ljava/io/File;)V
    .locals 0
    .param p1, "osmdroidBasePath"    # Ljava/io/File;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    .line 262
    return-void
.end method

.method public setOsmdroidTileCache(Ljava/io/File;)V
    .locals 0
    .param p1, "osmdroidTileCache"    # Ljava/io/File;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    .line 272
    return-void
.end method

.method public setTileDownloadMaxQueueSize(S)V
    .locals 0
    .param p1, "tileDownloadMaxQueueSize"    # S

    .prologue
    .line 201
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    .line 202
    return-void
.end method

.method public setTileDownloadThreads(S)V
    .locals 0
    .param p1, "tileDownloadThreads"    # S

    .prologue
    .line 181
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    .line 182
    return-void
.end method

.method public setTileFileSystemCacheMaxBytes(J)V
    .locals 1
    .param p1, "tileFileSystemCacheMaxBytes"    # J

    .prologue
    .line 221
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    .line 222
    return-void
.end method

.method public setTileFileSystemCacheTrimBytes(J)V
    .locals 1
    .param p1, "tileFileSystemCacheTrimBytes"    # J

    .prologue
    .line 231
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    .line 232
    return-void
.end method

.method public setTileFileSystemMaxQueueSize(S)V
    .locals 0
    .param p1, "tileFileSystemMaxQueueSize"    # S

    .prologue
    .line 211
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    .line 212
    return-void
.end method

.method public setTileFileSystemThreads(S)V
    .locals 0
    .param p1, "tileFileSystemThreads"    # S

    .prologue
    .line 191
    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    .line 192
    return-void
.end method

.method public setUserAgentHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgentHttpHeader"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setUserAgentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgentValue"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    .line 157
    return-void
.end method
