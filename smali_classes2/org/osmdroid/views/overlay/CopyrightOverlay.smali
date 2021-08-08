.class public Lorg/osmdroid/views/overlay/CopyrightOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "CopyrightOverlay.java"


# instance fields
.field protected alignBottom:Z

.field protected alignRight:Z

.field final dm:Landroid/util/DisplayMetrics;

.field private paint:Landroid/graphics/Paint;

.field xOffset:I

.field yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 53
    iput v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    .line 54
    iput v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    .line 55
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "map"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 107
    if-eqz p3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getCopyrightNotice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getCopyrightNotice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 117
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 119
    .local v0, "height":I
    const/4 v2, 0x0

    .line 120
    .local v2, "x":F
    const/4 v3, 0x0

    .line 122
    .local v3, "y":F
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    if-eqz v4, :cond_2

    .line 123
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    sub-int v4, v1, v4

    int-to-float v2, v4

    .line 124
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    :goto_1
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    if-eqz v4, :cond_3

    .line 131
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    sub-int v4, v0, v4

    int-to-float v3, v4

    .line 136
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 139
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getCopyrightNotice()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 126
    :cond_2
    iget v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    int-to-float v2, v4

    .line 127
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 133
    :cond_3
    iget-object v4, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    iget v5, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    int-to-float v5, v5

    add-float v3, v4, v5

    goto :goto_2
.end method

.method public setAlignBottom(Z)V
    .locals 0
    .param p1, "alignBottom"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignBottom:Z

    .line 86
    return-void
.end method

.method public setAlignRight(Z)V
    .locals 0
    .param p1, "alignRight"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->alignRight:Z

    .line 92
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->xOffset:I

    .line 102
    iput p2, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->yOffset:I

    .line 103
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "fontSize"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/CopyrightOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    return-void
.end method
