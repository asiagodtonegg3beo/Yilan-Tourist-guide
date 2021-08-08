.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    .prologue
    .line 859
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressModulo()I
    .locals 1

    .prologue
    .line 872
    const/16 v0, 0xa

    return v0
.end method

.method public preCheck()Z
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    instance-of v0, v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x1

    .line 866
    :goto_0
    return v0

    .line 865
    :cond_0
    const-string v0, "OsmDroid"

    const-string v1, "TileSource is not an online tile source"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tileAction(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 2
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 877
    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$3;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v1, v0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
