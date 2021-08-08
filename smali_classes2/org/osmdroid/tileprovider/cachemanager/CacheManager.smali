.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    }
.end annotation


# instance fields
.field protected final mMaxZoomLevel:I

.field protected final mMinZoomLevel:I

.field protected mPendingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected final mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

.field protected verifyCancel:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 1
    .param p1, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "pWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pMinZoomLevel"    # I
    .param p4, "pMaxZoomLevel"    # I

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .param p3, "pMinZoomLevel"    # I
    .param p4, "pMaxZoomLevel"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    .line 103
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 104
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 105
    iput p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    .line 106
    iput p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 3
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "writer"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;II)V

    .line 85
    return-void
.end method

.method public static getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;
    .locals 14
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "zoom"    # I

    .prologue
    .line 125
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, p1

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    shl-int v10, v10, p2

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 126
    .local v4, "n":D
    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    neg-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double v0, v6, v8

    .line 127
    .local v0, "lat":D
    const-wide v6, 0x4076800000000000L    # 360.0

    int-to-double v8, p0

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    shl-int v8, v8, p2

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    sub-double v2, v6, v8

    .line 128
    .local v2, "lon":D
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v6
.end method

.method public static getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;
    .locals 4
    .param p0, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p1, "tile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 132
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-interface {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static getMapTileFromCoordinates(DDI)Landroid/graphics/Point;
    .locals 12
    .param p0, "aLat"    # D
    .param p2, "aLon"    # D
    .param p4, "zoom"    # I

    .prologue
    .line 118
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p0

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, p0

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    shl-int v4, v4, p4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 119
    .local v1, "y":I
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    shl-int v4, v4, p4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 120
    .local v0, "x":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;
    .locals 42
    .param p1, "pZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 332
    .local v30, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/osmdroid/tileprovider/MapTile;>;"
    const/16 v28, 0x0

    .line 333
    .local v28, "prevPoint":Lorg/osmdroid/util/GeoPoint;
    const/16 v29, 0x0

    .line 335
    .local v29, "prevTile":Landroid/graphics/Point;
    const/4 v4, 0x1

    shl-int v15, v4, p1

    .line 336
    .local v15, "mapTileUpperBound":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_0
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/osmdroid/util/GeoPoint;

    .line 338
    .local v14, "geoPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    move/from16 v0, p1

    invoke-static {v4, v5, v0}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v12

    .line 340
    .local v12, "d":D
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_a

    .line 342
    if-eqz v28, :cond_e

    .line 344
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v38

    sub-double v6, v6, v38

    div-double v18, v4, v6

    .line 346
    .local v18, "leadCoef":D
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    .line 347
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    sub-double v10, v4, v6

    .line 352
    .local v10, "brng":D
    :goto_1
    new-instance v34, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 354
    .local v34, "wayPoint":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    :goto_2
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 355
    :cond_1
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_e

    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    .line 356
    :cond_2
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 357
    :cond_3
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_e

    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    .line 359
    :cond_4
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 360
    .local v9, "lastPoint":Landroid/graphics/Point;
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move/from16 v8, p1

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 362
    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v24, v4, v6

    .line 363
    .local v24, "prevLatRad":D
    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v26, v4, v6

    .line 365
    .local v26, "prevLonRad":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v38, 0x415854a640000000L    # 6378137.0

    div-double v38, v12, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v6, v6, v38

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v6, v6, v38

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    .line 366
    .local v16, "latRad":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v6, v6, v38

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double v20, v26, v4

    .line 368
    .local v20, "lonRad":D
    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v4, v4, v16

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 369
    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v4, v4, v20

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 371
    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v34 .. v34}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v31

    .line 373
    .local v31, "tile":Landroid/graphics/Point;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 375
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_6

    const/16 v22, 0x0

    .line 376
    .local v22, "ofsx":I
    :goto_3
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_7

    const/16 v23, 0x0

    .line 377
    .local v23, "ofsy":I
    :goto_4
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int v35, v4, v22

    .local v35, "xAround":I
    :goto_5
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v22

    move/from16 v0, v35

    if-gt v0, v4, :cond_9

    .line 378
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int v36, v4, v23

    .local v36, "yAround":I
    :goto_6
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v23

    move/from16 v0, v36

    if-gt v0, v4, :cond_8

    .line 379
    move/from16 v0, v36

    invoke-static {v0, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v33

    .line 380
    .local v33, "tileY":I
    move/from16 v0, v35

    invoke-static {v0, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v32

    .line 381
    .local v32, "tileX":I
    new-instance v4, Lorg/osmdroid/tileprovider/MapTile;

    move/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v4, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 349
    .end local v9    # "lastPoint":Landroid/graphics/Point;
    .end local v10    # "brng":D
    .end local v16    # "latRad":D
    .end local v20    # "lonRad":D
    .end local v22    # "ofsx":I
    .end local v23    # "ofsy":I
    .end local v24    # "prevLatRad":D
    .end local v26    # "prevLonRad":D
    .end local v31    # "tile":Landroid/graphics/Point;
    .end local v32    # "tileX":I
    .end local v33    # "tileY":I
    .end local v34    # "wayPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v35    # "xAround":I
    .end local v36    # "yAround":I
    :cond_5
    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    sub-double v10, v4, v6

    .restart local v10    # "brng":D
    goto/16 :goto_1

    .line 375
    .restart local v9    # "lastPoint":Landroid/graphics/Point;
    .restart local v16    # "latRad":D
    .restart local v20    # "lonRad":D
    .restart local v24    # "prevLatRad":D
    .restart local v26    # "prevLonRad":D
    .restart local v31    # "tile":Landroid/graphics/Point;
    .restart local v34    # "wayPoint":Lorg/osmdroid/util/GeoPoint;
    :cond_6
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v4

    move/from16 v22, v0

    goto :goto_3

    .line 376
    .restart local v22    # "ofsx":I
    :cond_7
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v4

    move/from16 v23, v0

    goto :goto_4

    .line 377
    .restart local v23    # "ofsy":I
    .restart local v35    # "xAround":I
    .restart local v36    # "yAround":I
    :cond_8
    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    .line 385
    .end local v36    # "yAround":I
    :cond_9
    move-object/from16 v29, v31

    goto/16 :goto_2

    .line 391
    .end local v9    # "lastPoint":Landroid/graphics/Point;
    .end local v10    # "brng":D
    .end local v16    # "latRad":D
    .end local v18    # "leadCoef":D
    .end local v20    # "lonRad":D
    .end local v22    # "ofsx":I
    .end local v23    # "ofsy":I
    .end local v24    # "prevLatRad":D
    .end local v26    # "prevLonRad":D
    .end local v31    # "tile":Landroid/graphics/Point;
    .end local v34    # "wayPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v35    # "xAround":I
    :cond_a
    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    move/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v31

    .line 392
    .restart local v31    # "tile":Landroid/graphics/Point;
    move-object/from16 v29, v31

    .line 394
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_b

    const/16 v22, 0x0

    .line 395
    .restart local v22    # "ofsx":I
    :goto_7
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_c

    const/16 v23, 0x0

    .line 396
    .restart local v23    # "ofsy":I
    :goto_8
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int v35, v4, v22

    .restart local v35    # "xAround":I
    :goto_9
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v22

    move/from16 v0, v35

    if-gt v0, v4, :cond_e

    .line 397
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int v36, v4, v23

    .restart local v36    # "yAround":I
    :goto_a
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v23

    move/from16 v0, v36

    if-gt v0, v4, :cond_d

    .line 398
    move/from16 v0, v36

    invoke-static {v0, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v33

    .line 399
    .restart local v33    # "tileY":I
    move/from16 v0, v35

    invoke-static {v0, v15}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v32

    .line 400
    .restart local v32    # "tileX":I
    new-instance v4, Lorg/osmdroid/tileprovider/MapTile;

    move/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v4, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v36, v36, 0x1

    goto :goto_a

    .line 394
    .end local v22    # "ofsx":I
    .end local v23    # "ofsy":I
    .end local v32    # "tileX":I
    .end local v33    # "tileY":I
    .end local v35    # "xAround":I
    .end local v36    # "yAround":I
    :cond_b
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v4

    move/from16 v22, v0

    goto :goto_7

    .line 395
    .restart local v22    # "ofsx":I
    :cond_c
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v4

    move/from16 v23, v0

    goto :goto_8

    .line 396
    .restart local v23    # "ofsy":I
    .restart local v35    # "xAround":I
    .restart local v36    # "yAround":I
    :cond_d
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 405
    .end local v22    # "ofsx":I
    .end local v23    # "ofsy":I
    .end local v31    # "tile":Landroid/graphics/Point;
    .end local v35    # "xAround":I
    .end local v36    # "yAround":I
    :cond_e
    move-object/from16 v28, v14

    .line 406
    goto/16 :goto_0

    .line 407
    .end local v12    # "d":D
    .end local v14    # "geoPoint":Lorg/osmdroid/util/GeoPoint;
    :cond_f
    return-object v30
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;
    .locals 14
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/osmdroid/tileprovider/MapTile;>;"
    const/4 v10, 0x1

    shl-int v4, v10, p1

    .line 289
    .local v4, "mapTileUpperBound":I
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v10

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v12

    .line 288
    invoke-static {v10, v11, v12, v13, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v3

    .line 291
    .local v3, "lowerRight":Landroid/graphics/Point;
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v10

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v12

    .line 290
    invoke-static {v10, v11, v12, v13, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v6

    .line 292
    .local v6, "upperLeft":Landroid/graphics/Point;
    iget v10, v3, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    add-int/lit8 v7, v10, 0x1

    .line 293
    .local v7, "width":I
    if-gtz v7, :cond_0

    .line 294
    add-int/2addr v7, v4

    .line 296
    :cond_0
    iget v10, v3, Landroid/graphics/Point;->y:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    add-int/lit8 v0, v10, 0x1

    .line 297
    .local v0, "height":I
    if-gtz v0, :cond_1

    .line 298
    add-int/2addr v0, v4

    .line 300
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 301
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 302
    iget v10, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v1

    invoke-static {v10, v4}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v8

    .line 303
    .local v8, "x":I
    iget v10, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v2

    invoke-static {v10, v4}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v9

    .line 304
    .local v9, "y":I
    new-instance v10, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v10, p1, v8, v9}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "j":I
    :cond_3
    return-object v5
.end method

.method public static getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;
    .locals 3
    .param p1, "pZoomMin"    # I
    .param p2, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/MapTile;>;"
    move v2, p1

    .local v2, "zoomLevel":I
    :goto_0
    if-gt v2, p2, :cond_0

    .line 318
    invoke-static {p0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;I)Ljava/util/Collection;

    move-result-object v1

    .line 319
    .local v1, "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osmdroid/tileprovider/MapTile;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osmdroid/tileprovider/MapTile;>;"
    :cond_0
    return-object v0
.end method

.method public static getTilesCoverage(Lorg/osmdroid/util/BoundingBox;II)Ljava/util/List;
    .locals 3
    .param p0, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p1, "pZoomMin"    # I
    .param p2, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/MapTile;>;"
    move v2, p1

    .local v2, "zoomLevel":I
    :goto_0
    if-gt v2, p2, :cond_0

    .line 275
    invoke-static {p0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Lorg/osmdroid/util/BoundingBox;I)Ljava/util/Collection;

    move-result-object v1

    .line 276
    .local v1, "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osmdroid/tileprovider/MapTile;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "resultForZoom":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osmdroid/tileprovider/MapTile;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cacheCapacity()J
    .locals 2

    .prologue
    .line 967
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAllJobs()V
    .locals 3

    .prologue
    .line 524
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 525
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 527
    .local v1, "next":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->cancel(Z)Z

    goto :goto_0

    .line 529
    .end local v1    # "next":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 530
    return-void
.end method

.method public checkTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 2
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    return v0
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 924
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 925
    .local v0, "extendedBounds":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 931
    .local p2, "tiles":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/MapTile;>;"
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 932
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 933
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .prologue
    .line 910
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 911
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 912
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public currentCacheUsage()J
    .locals 2

    .prologue
    .line 959
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 2
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0, v1, p1}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public directorySize(Ljava/io/File;)J
    .locals 8
    .param p1, "pDirectory"    # Ljava/io/File;

    .prologue
    .line 974
    const-wide/16 v2, 0x0

    .line 975
    .local v2, "usedCacheSpace":J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 976
    .local v1, "z":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 977
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 978
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 979
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 977
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 982
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 987
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return-wide v2
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 455
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 456
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 483
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 484
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 485
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/List;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "pTiles":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/MapTile;>;"
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 542
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 543
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .prologue
    .line 440
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 441
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 442
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .prologue
    .line 467
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 468
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 469
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 470
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V

    .line 499
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 500
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    move-result-object v1

    return-object v1
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bb"    # Lorg/osmdroid/util/BoundingBox;
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I
    .param p5, "callback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .prologue
    .line 513
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V

    .line 514
    .local v0, "task":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    invoke-virtual {v0, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V

    .line 515
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 516
    return-object v0
.end method

.method public execute(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 1
    .param p1, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    .line 426
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    return-object p1
.end method

.method public extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;
    .locals 16
    .param p2, "minZoomLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "geoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    .line 943
    .local v2, "bb":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    move/from16 v0, p2

    invoke-static {v4, v5, v6, v7, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v13

    .line 944
    .local v13, "mLowerRight":Landroid/graphics/Point;
    iget v4, v13, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v12

    .line 945
    .local v12, "lowerRightPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    move/from16 v0, p2

    invoke-static {v4, v5, v6, v7, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v14

    .line 946
    .local v14, "mUpperLeft":Landroid/graphics/Point;
    iget v4, v14, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v14, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v15

    .line 948
    .local v15, "upperLeftPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v15}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 950
    .local v3, "extendedBounds":Lorg/osmdroid/util/BoundingBox;
    return-object v3
.end method

.method public forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 16
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .param p2, "tile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 161
    const/4 v8, 0x0

    .line 162
    .local v8, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 167
    .local v2, "c":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "tileURLString":Ljava/lang/String;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 170
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Downloading Maptile from url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    .line 174
    const/4 v11, 0x0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 239
    .end local v10    # "tileURLString":Ljava/lang/String;
    :goto_0
    return v11

    .line 177
    .restart local v10    # "tileURLString":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 178
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 179
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v12

    invoke-interface {v12}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 181
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 219
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "tileURLString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 221
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_3
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UnknownHostException downloading MapTile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    const/4 v11, 0x0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 183
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .restart local v10    # "tileURLString":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 188
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_3

    .line 189
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem downloading MapTile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HTTP response: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    const/4 v11, 0x0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 237
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 195
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 199
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v9

    .line 200
    .local v9, "override":Ljava/lang/Long;
    if-eqz v9, :cond_5

    .line 201
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v3, "dateExpires":Ljava/util/Date;
    :cond_4
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/osmdroid/tileprovider/MapTile;->setExpires(Ljava/util/Date;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v8}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    const/4 v11, 0x1

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 237
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .line 203
    .end local v3    # "dateExpires":Ljava/util/Date;
    :cond_5
    :try_start_9
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x240c8400

    add-long/2addr v12, v14

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 204
    .restart local v3    # "dateExpires":Ljava/util/Date;
    const-string v11, "Expires"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "expires":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v11

    if-lez v11, :cond_4

    .line 207
    :try_start_a
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/util/Date;->setTime(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 209
    :catch_4
    move-exception v6

    .line 210
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 211
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse expiration tag for tile, using default, server returned "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 224
    .end local v3    # "dateExpires":Ljava/util/Date;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "expires":Ljava/lang/String;
    .end local v9    # "override":Ljava/lang/Long;
    .end local v10    # "tileURLString":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 225
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 226
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tile not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 239
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 227
    :catch_6
    move-exception v4

    .line 228
    .local v4, "e":Ljava/io/IOException;
    :try_start_e
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 229
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException downloading MapTile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_3

    .line 237
    :catch_7
    move-exception v11

    goto :goto_3

    .line 230
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 231
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_10
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    .line 232
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error downloading MapTile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 234
    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_3

    .line 237
    :catch_9
    move-exception v11

    goto :goto_3

    .line 234
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    invoke-static {v8}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 236
    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 237
    :goto_4
    throw v11

    .restart local v10    # "tileURLString":Ljava/lang/String;
    :catch_a
    move-exception v12

    goto/16 :goto_0

    .end local v10    # "tileURLString":Ljava/lang/String;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v11

    goto :goto_3

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v12

    goto :goto_4
.end method

.method public getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1

    .prologue
    .line 883
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V

    return-object v0
.end method

.method public getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    .line 821
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .locals 1

    .prologue
    .line 859
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V

    return-object v0
.end method

.method public getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
    .locals 1
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    .line 806
    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V

    return-object v0
.end method

.method public getPendingJobs()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getVerifyCancel()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    return v0
.end method

.method public isTileToBeDownloaded(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 6
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v4, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/Long;

    move-result-object v0

    .line 260
    .local v0, "expiration":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 264
    .local v2, "now":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 3
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
    .param p2, "tile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-static {p1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v2, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->forceLoadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v1

    goto :goto_0
.end method

.method public possibleTilesCovered(Ljava/util/ArrayList;II)I
    .locals 1
    .param p2, "pZoomMin"    # I
    .param p3, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I
    .locals 1
    .param p1, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p2, "pZoomMin"    # I
    .param p3, "pZoomMax"    # I

    .prologue
    .line 414
    invoke-static {p1, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Lorg/osmdroid/util/BoundingBox;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setVerifyCancel(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->verifyCancel:Z

    .line 553
    return-void
.end method
