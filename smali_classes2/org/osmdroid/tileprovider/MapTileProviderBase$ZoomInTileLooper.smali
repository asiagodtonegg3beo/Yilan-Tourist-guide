.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomInTileLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .prologue
    .line 398
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/MapTileProviderBase$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method public computeTile(Lorg/osmdroid/tileprovider/MapTile;II)V
    .locals 7
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pX"    # I
    .param p3, "pY"    # I

    .prologue
    .line 404
    new-instance v2, Lorg/osmdroid/tileprovider/MapTile;

    iget v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mOldTileZoomLevel:I

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v4

    iget v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v4, v5

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v5

    iget v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 405
    .local v2, "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v3, v3, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v3, v2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 407
    .local v1, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 408
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    invoke-static {v1, p1, v3}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;Lorg/osmdroid/tileprovider/MapTile;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 411
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
