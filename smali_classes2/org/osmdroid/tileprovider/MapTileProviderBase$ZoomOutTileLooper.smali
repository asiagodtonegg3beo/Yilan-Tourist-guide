.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomOutTileLooper"
.end annotation


# static fields
.field private static final MAX_ZOOM_OUT_DIFF:I = 0x4


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .prologue
    .line 417
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/MapTileProviderBase$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method protected computeTile(Lorg/osmdroid/tileprovider/MapTile;II)V
    .locals 17
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pX"    # I
    .param p3, "pY"    # I

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v8, v11, v12

    .line 429
    .local v8, "xx":I
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v10, v11, v12

    .line 430
    .local v10, "yy":I
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int v3, v11, v12

    .line 431
    .local v3, "numTiles":I
    const/4 v1, 0x0

    .line 432
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 433
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v3, :cond_5

    .line 434
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_2
    if-ge v9, v3, :cond_4

    .line 435
    new-instance v6, Lorg/osmdroid/tileprovider/MapTile;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mOldTileZoomLevel:I

    add-int v12, v8, v7

    add-int v13, v10, v9

    invoke-direct {v6, v11, v12, v13}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 436
    .local v6, "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v11, v11, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v11, v6}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 437
    .local v5, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_3

    .line 438
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 439
    .local v4, "oldBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 440
    if-nez v1, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize:I

    invoke-static {v11}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 442
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    const v11, -0x333334

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 445
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v13, v9

    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v14, v15

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 448
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v11, v11, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    iget-object v11, v11, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v11, v6}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 434
    .end local v4    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 433
    .end local v6    # "oldTile":Lorg/osmdroid/tileprovider/MapTile;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 455
    .end local v9    # "y":I
    :cond_5
    if-eqz v1, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mNewTiles:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
