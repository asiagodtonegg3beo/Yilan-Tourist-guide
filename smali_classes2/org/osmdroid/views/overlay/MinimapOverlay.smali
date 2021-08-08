.class public Lorg/osmdroid/views/overlay/MinimapOverlay;
.super Lorg/osmdroid/views/overlay/TilesOverlay;
.source "MinimapOverlay.java"


# instance fields
.field private mBottomRightMercator:Landroid/graphics/Point;

.field private mHeight:I

.field private final mIntersectionRect:Landroid/graphics/Rect;

.field private final mMiniMapCanvasRect:Landroid/graphics/Rect;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private final mTileArea:Landroid/graphics/Rect;

.field private mTopLeftMercator:Landroid/graphics/Point;

.field private mWidth:I

.field private mZoomDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;

    .prologue
    .line 117
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p3, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .prologue
    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p3, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p4, "pZoomDifference"    # I

    .prologue
    const/16 v1, 0x64

    .line 69
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 35
    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 36
    const/16 v1, 0xa

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    .line 44
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    .line 52
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    .line 70
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    .line 72
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 75
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getLoadingBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setLoadingLineColor(I)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v0, "density":F
    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 80
    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 134
    if-eqz p3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    .line 144
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v10

    .line 147
    .local v10, "zoomLevel":D
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 149
    .local v8, "screenRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 150
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 151
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v7

    .line 158
    .local v7, "miniMapZoomLevelDifference":I
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v0

    int-to-double v0, v0

    sub-double v0, v10, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 159
    int-to-double v0, v7

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v2

    int-to-double v2, v2

    sub-double v2, v10, v2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 160
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v7, v0

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    shr-int/2addr v1, v7

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v7

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    shr-int/2addr v3, v7

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    shr-int/2addr v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 172
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 173
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 177
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 178
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 176
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    int-to-double v4, v7

    sub-double v4, v0, v4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, p1

    invoke-super/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLandroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 235
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "currentMapTile"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tileRect"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 193
    .local v0, "xOffset":I
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v1, v2, v3

    .line 196
    .local v1, "yOffset":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 197
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v1

    .line 196
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 207
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 210
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 275
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 293
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 294
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 122
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 255
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 256
    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0
    .param p1, "zoomDifference"    # I

    .prologue
    .line 129
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    .line 130
    return-void
.end method
