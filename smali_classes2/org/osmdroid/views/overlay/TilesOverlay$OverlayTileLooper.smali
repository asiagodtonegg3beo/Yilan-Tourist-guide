.class Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
.super Lorg/osmdroid/util/TileLooper;
.source "TilesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/TilesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayTileLooper"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mOutputTileSizePx:D

.field final synthetic this$0:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;Lorg/osmdroid/views/overlay/TilesOverlay$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/views/overlay/TilesOverlay;
    .param p2, "x1"    # Lorg/osmdroid/views/overlay/TilesOverlay$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    return-void
.end method

.method private fillRect(IID)V
    .locals 11
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pOutputTileSizePx"    # D

    .prologue
    .line 291
    int-to-double v4, p1

    mul-double v0, v4, p3

    .line 292
    .local v0, "x":D
    int-to-double v4, p2

    mul-double v2, v4, p3

    .line 293
    .local v2, "y":D
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-double v8, v0, p3

    .line 295
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    add-double v8, v2, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 293
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    return-void
.end method


# virtual methods
.method public handleTile(Lorg/osmdroid/tileprovider/MapTile;II)V
    .locals 11
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "pX"    # I
    .param p3, "pY"    # I

    .prologue
    .line 253
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 254
    .local v8, "currentMapTile":Landroid/graphics/drawable/Drawable;
    instance-of v9, v8, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 255
    .local v9, "isReusable":Z
    if-eqz v9, :cond_5

    move-object v2, v8

    check-cast v2, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v10, v2

    .line 257
    .local v10, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_0
    if-nez v8, :cond_0

    .line 258
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 261
    :cond_0
    if-eqz v8, :cond_3

    .line 262
    iget-wide v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mOutputTileSizePx:D

    invoke-direct {p0, p2, p3, v2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->fillRect(IID)V

    .line 263
    if-eqz v9, :cond_1

    .line 264
    invoke-virtual {v10}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 267
    :cond_1
    if-eqz v9, :cond_2

    :try_start_0
    move-object v0, v8

    check-cast v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 269
    const/4 v9, 0x0

    .line 271
    :cond_2
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v9, :cond_3

    .line 274
    invoke-virtual {v10}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 278
    :cond_3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    iget-wide v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mOutputTileSizePx:D

    invoke-direct {p0, p2, p3, v2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->fillRect(IID)V

    .line 280
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 281
    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v6, v6, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v6, v6, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v7, v7, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v7, v7, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    :cond_4
    return-void

    .line 255
    .end local v10    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 273
    .restart local v10    # "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 274
    invoke-virtual {v10}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_6
    throw v2
.end method

.method public initialiseLoop()V
    .locals 6

    .prologue
    .line 236
    const/4 v4, 0x1

    iget v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTileZoomLevel:I

    shl-int v1, v4, v5

    .line 238
    .local v1, "mapTileUpperBound":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    .line 239
    .local v3, "width":I
    if-gtz v3, :cond_0

    .line 240
    add-int/2addr v3, v1

    .line 242
    :cond_0
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 243
    .local v0, "height":I
    if-gtz v0, :cond_1

    .line 244
    add-int/2addr v0, v1

    .line 247
    :cond_1
    mul-int v2, v0, v3

    .line 248
    .local v2, "numNeeded":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    .line 249
    return-void
.end method

.method public loop(DLandroid/graphics/Rect;Landroid/graphics/Canvas;D)V
    .locals 1
    .param p1, "pZoomLevel"    # D
    .param p3, "pViewPort"    # Landroid/graphics/Rect;
    .param p4, "pCanvas"    # Landroid/graphics/Canvas;
    .param p5, "pOutputTileSizePx"    # D

    .prologue
    .line 229
    iput-object p4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    .line 230
    iput-wide p5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mOutputTileSizePx:D

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLandroid/graphics/Rect;)V

    .line 232
    return-void
.end method
