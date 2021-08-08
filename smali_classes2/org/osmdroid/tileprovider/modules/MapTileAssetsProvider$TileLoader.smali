.class public Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;
.super Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;
.source "MapTileAssetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TileLoader"
.end annotation


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;
    .param p2, "pAssets"    # Landroid/content/res/AssetManager;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    .line 128
    iput-object p2, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    .line 129
    return-void
.end method


# virtual methods
.method public loadTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    invoke-static {v4}, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;->access$000(Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 134
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-nez v3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->mAssets:Landroid/content/res/AssetManager;

    invoke-interface {v3, p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 140
    .local v2, "is":Ljava/io/InputStream;
    invoke-interface {v3, v2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    new-instance v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider$TileLoader;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileAssetsProvider;

    invoke-direct {v4, v5, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V

    throw v4

    .line 146
    .end local v1    # "e":Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
