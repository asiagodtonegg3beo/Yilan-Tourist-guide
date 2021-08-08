.class public abstract Lorg/osmdroid/util/TileLooper;
.super Ljava/lang/Object;
.source "TileLooper.java"


# instance fields
.field protected mTileZoomLevel:I

.field protected final mTiles:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public abstract handleTile(Lorg/osmdroid/tileprovider/MapTile;II)V
.end method

.method public initialiseLoop()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected loop(DLandroid/graphics/Rect;)V
    .locals 15
    .param p1, "pZoomLevel"    # D
    .param p3, "pViewPort"    # Landroid/graphics/Rect;

    .prologue
    .line 16
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v12

    iget-object v14, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13, v14}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(Landroid/graphics/Rect;DLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 17
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v12

    iput v12, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    .line 19
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    .line 21
    const/4 v12, 0x1

    iget v13, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    shl-int v5, v12, v13

    .line 23
    .local v5, "mapTileUpperBound":I
    iget-object v12, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    .line 24
    .local v9, "width":I
    if-gtz v9, :cond_0

    .line 25
    add-int/2addr v9, v5

    .line 27
    :cond_0
    iget-object v12, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v13, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    add-int/lit8 v2, v12, 0x1

    .line 28
    .local v2, "height":I
    if-gtz v2, :cond_1

    .line 29
    add-int/2addr v2, v5

    .line 33
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 34
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 35
    iget-object v12, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int v10, v12, v3

    .line 36
    .local v10, "x":I
    iget-object v12, p0, Lorg/osmdroid/util/TileLooper;->mTiles:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int v11, v12, v4

    .line 37
    .local v11, "y":I
    invoke-static {v10, v5}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v7

    .line 38
    .local v7, "tileX":I
    invoke-static {v11, v5}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v8

    .line 39
    .local v8, "tileY":I
    new-instance v6, Lorg/osmdroid/tileprovider/MapTile;

    iget v12, p0, Lorg/osmdroid/util/TileLooper;->mTileZoomLevel:I

    invoke-direct {v6, v12, v7, v8}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    .line 40
    .local v6, "tile":Lorg/osmdroid/tileprovider/MapTile;
    invoke-virtual {p0, v6, v10, v11}, Lorg/osmdroid/util/TileLooper;->handleTile(Lorg/osmdroid/tileprovider/MapTile;II)V

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    .end local v6    # "tile":Lorg/osmdroid/tileprovider/MapTile;
    .end local v7    # "tileX":I
    .end local v8    # "tileY":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->finaliseLoop()V

    .line 45
    return-void
.end method
