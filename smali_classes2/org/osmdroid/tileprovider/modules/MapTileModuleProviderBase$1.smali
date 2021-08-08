.class Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;
.super Ljava/util/LinkedHashMap;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Lorg/osmdroid/tileprovider/MapTileRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5995f716368a7532L


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field final synthetic val$pPendingQueueSize:I


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;IFZI)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 99
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iput p5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "pEldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/osmdroid/tileprovider/MapTile;Lorg/osmdroid/tileprovider/MapTileRequestState;>;"
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->size()I

    move-result v4

    iget v5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    if-le v4, v5, :cond_2

    .line 107
    const/4 v1, 0x0

    .line 110
    .local v1, "result":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/MapTile;>;"
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/MapTile;

    .line 114
    .local v3, "tile":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    move-object v1, v3

    goto :goto_0

    .line 119
    .end local v3    # "tile":Lorg/osmdroid/tileprovider/MapTile;
    :cond_1
    if-eqz v1, :cond_2

    .line 120
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 121
    .local v2, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v4, v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(Lorg/osmdroid/tileprovider/MapTile;)V

    .line 122
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 125
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/tileprovider/MapTile;>;"
    .end local v1    # "result":Lorg/osmdroid/tileprovider/MapTile;
    .end local v2    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method
