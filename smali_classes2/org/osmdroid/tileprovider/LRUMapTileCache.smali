.class public Lorg/osmdroid/tileprovider/LRUMapTileCache;
.super Ljava/util/LinkedHashMap;
.source "LRUMapTileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7828608cbd546d7L


# instance fields
.field private mCapacity:I

.field private mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "aCapacity"    # I

    .prologue
    .line 27
    add-int/lit8 v0, p1, 0x2

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 28
    iput p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 66
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "aCapacity"    # I

    .prologue
    .line 32
    iget v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le p1, v0, :cond_0

    .line 33
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tile cache increased from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    .line 36
    :cond_0
    return-void
.end method

.method public getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "aKey"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 42
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 43
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 44
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    move-result-object v2

    check-cast p1, Lorg/osmdroid/tileprovider/MapTile;

    .end local p1    # "aKey":Ljava/lang/Object;
    invoke-interface {v2, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;->onTileRemoved(Lorg/osmdroid/tileprovider/MapTile;)V

    .line 52
    :cond_1
    instance-of v2, v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v2, :cond_2

    .line 53
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v3, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    .line 54
    :cond_2
    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "aEldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->size()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le v1, v2, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/MapTile;

    .line 72
    .local v0, "eldest":Lorg/osmdroid/tileprovider/MapTile;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "OsmDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LRU Remove old tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 78
    .end local v0    # "eldest":Lorg/osmdroid/tileprovider/MapTile;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setTileRemovedListener(Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;)V
    .locals 0
    .param p1, "tileRemovedListener"    # Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    .line 87
    return-void
.end method
