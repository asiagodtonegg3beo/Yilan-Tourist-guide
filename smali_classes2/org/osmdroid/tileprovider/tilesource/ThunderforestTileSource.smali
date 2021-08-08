.class public Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "ThunderforestTileSource.java"


# static fields
.field public static final CYCLE:I = 0x0

.field public static final LANDSCAPE:I = 0x2

.field public static final MOBILE_ATLAS:I = 0x7

.field public static final NEIGHBOURHOOD:I = 0x8

.field public static final OUTDOORS:I = 0x3

.field public static final PIONEER:I = 0x6

.field public static final SPINAL_MAP:I = 0x5

.field private static final THUNDERFOREST_MAPID:Ljava/lang/String; = "THUNDERFOREST_MAPID"

.field public static final TRANSPORT:I = 0x1

.field public static final TRANSPORT_DARK:I = 0x4

.field private static final baseUrl:[Ljava/lang/String;

.field private static final uiMap:[Ljava/lang/String;

.field private static final urlMap:[Ljava/lang/String;


# instance fields
.field private final mMap:I

.field private final mMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cycle"

    aput-object v1, v0, v3

    const-string v1, "transport"

    aput-object v1, v0, v4

    const-string v1, "landscape"

    aput-object v1, v0, v5

    const-string v1, "outdoors"

    aput-object v1, v0, v6

    const-string v1, "transport-dark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "spinal-map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pioneer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobile-atlas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "neighbourhood"

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CycleMap"

    aput-object v1, v0, v3

    const-string v1, "Transport"

    aput-object v1, v0, v4

    const-string v1, "Landscape"

    aput-object v1, v0, v5

    const-string v1, "Outdoors"

    aput-object v1, v0, v6

    const-string v1, "TransportDark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Spinal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Pioneer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MobileAtlas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Neighbourhood"

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "https://a.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v3

    const-string v1, "https://b.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v4

    const-string v1, "https://c.tile.thunderforest.com/{map}/"

    aput-object v1, v0, v5

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "aMap"    # I

    .prologue
    .line 82
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    aget-object v1, v0, p2

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->baseUrl:[Ljava/lang/String;

    const-string v7, "Maps \u00a9 Thunderforest, Data \u00a9 OpenStreetMap contributors."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    .line 84
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->retrieveMapId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static haveMapId(Landroid/content/Context;)Z
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final mapName(I)Ljava/lang/String;
    .locals 1
    .param p0, "m"    # I

    .prologue
    .line 70
    if-ltz p0, :cond_0

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 71
    :cond_0
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->uiMap:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 6
    .param p1, "aMapTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{map}"

    sget-object v4, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->urlMap:[Ljava/lang/String;

    iget v5, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMap:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, ".png?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "apikey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/ThunderforestTileSource;->mMapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method

.method public final retrieveMapId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v0, "THUNDERFOREST_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
