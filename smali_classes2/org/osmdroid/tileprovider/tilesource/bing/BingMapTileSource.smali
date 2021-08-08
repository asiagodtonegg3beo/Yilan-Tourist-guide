.class public Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;
.source "BingMapTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_URL_PATTERN:Ljava/lang/String; = "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s"

.field private static final BING_KEY:Ljava/lang/String; = "BING_KEY"

.field private static final FILENAME_ENDING:Ljava/lang/String; = ".jpeg"

.field public static final IMAGERYSET_AERIAL:Ljava/lang/String; = "Aerial"

.field public static final IMAGERYSET_AERIALWITHLABELS:Ljava/lang/String; = "AerialWithLabels"

.field public static final IMAGERYSET_ROAD:Ljava/lang/String; = "Road"

.field private static mBingMapKey:Ljava/lang/String;


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

.field private mLocale:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "aLocale"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "BingMaps"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".jpeg"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 60
    const-string v0, "Road"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 63
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 78
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    .line 82
    :cond_0
    return-void
.end method

.method public static getBingKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-object v0
.end method

.method private getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 217
    const-string v7, "OsmDroid"

    const-string v8, "getMetaData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "client":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 225
    const-string v7, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "make request "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 228
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "OsmDroid"

    const-string v8, "Error getting imagery meta data"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v1, :cond_0

    .line 250
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 254
    :cond_0
    :goto_1
    const-string v7, "OsmDroid"

    const-string v8, "end getMetaData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 256
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .line 230
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 232
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_3

    .line 233
    const-string v7, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot get response for url "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    if-eqz v1, :cond_2

    .line 250
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    :cond_2
    :goto_3
    const-string v7, "OsmDroid"

    const-string v8, "end getMetaData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 234
    goto :goto_2

    .line 237
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 238
    .local v5, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v2, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 240
    .local v6, "out":Ljava/io/BufferedOutputStream;
    invoke-static {v5, v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 241
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 243
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;->getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 249
    if-eqz v1, :cond_4

    .line 250
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 254
    :cond_4
    :goto_4
    const-string v8, "OsmDroid"

    const-string v9, "end getMetaData"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 248
    .end local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v7

    .line 249
    if-eqz v1, :cond_5

    .line 250
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 254
    :cond_5
    :goto_5
    const-string v8, "OsmDroid"

    const-string v9, "end getMetaData"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .line 251
    :catch_1
    move-exception v7

    goto :goto_3

    .restart local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v8

    goto :goto_4

    .end local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_5
.end method

.method public static retrieveBingKey(Landroid/content/Context;)V
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v0, "BING_KEY"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static setBingKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    sput-object p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    return v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTileSizePixels()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    return v0
.end method

.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 4
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->quadTree(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v1, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v1, :cond_1

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v1, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    .line 201
    .local v0, "imageryData":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    if-eqz v0, :cond_0

    .line 202
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 203
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getTileSizePixels()I

    move-result v1

    invoke-static {v1}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 204
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->updateBaseUrl()V

    .line 207
    .end local v0    # "imageryData":Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    return-object v1

    .line 207
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "pStyle"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    monitor-enter v1

    .line 173
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->pathBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    .line 180
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected updateBaseUrl()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    const-string v2, "OsmDroid"

    const-string v3, "updateBaseUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getSubDomain()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "subDomain":Ljava/lang/String;
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "idx":I
    if-lez v0, :cond_1

    .line 269
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 274
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 275
    if-eqz v1, :cond_0

    .line 277
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v4, "%s"

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 280
    :cond_0
    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v2, "OsmDroid"

    const-string v3, "end updateBaseUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method
