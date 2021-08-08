.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# instance fields
.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapViewHeight:I

.field private final mMapViewWidth:I

.field protected final mMultiTouchScale:F

.field protected final mOffsetX:I

.field protected final mOffsetY:I

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:D

.field private mapView:Lorg/osmdroid/views/MapView;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 11
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 52
    iput-object p1, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    .line 53
    invoke-virtual {p1, v5}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    .line 54
    invoke-virtual {p1, v4}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p1, v4}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    .line 60
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    .line 62
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p1, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 63
    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 64
    iget v1, p1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iput v1, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    .line 66
    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    invoke-virtual {p0, v1, v5, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 67
    .local v0, "neGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    invoke-virtual {p0, v5, v1, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v10

    .line 69
    .local v10, "swGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    .line 70
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface {v10}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    .line 71
    invoke-interface {v10}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 72
    return-void
.end method

.method public static metersToPixels(FDD)F
    .locals 5
    .param p0, "meters"    # F
    .param p1, "latitude"    # D
    .param p3, "zoomLevel"    # D

    .prologue
    .line 255
    float-to-double v0, p0

    invoke-static {p1, p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 130
    if-eqz p3, :cond_5

    move-object v3, p3

    .line 131
    .local v3, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 132
    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 133
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 134
    .local v2, "mapSize":I
    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 135
    .local v0, "absX":I
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 136
    .local v1, "absY":I
    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    if-le v2, v5, :cond_6

    move v4, v2

    .line 137
    .local v4, "yCompare":I
    :goto_1
    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v0, v5, :cond_0

    .line 138
    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 140
    :cond_0
    iget v5, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v0, v5, :cond_1

    .line 141
    iget v5, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 144
    :cond_1
    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v1, v5, :cond_2

    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v5, v5, 0x2

    if-ge v5, v2, :cond_2

    .line 145
    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 147
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v1, v5, :cond_3

    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v5, v5, 0x2

    if-lt v5, v2, :cond_4

    .line 148
    :cond_3
    iget v5, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 150
    :cond_4
    iget v5, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 151
    return-object v3

    .line 130
    .end local v0    # "absX":I
    .end local v1    # "absY":I
    .end local v2    # "mapSize":I
    .end local v3    # "out":Landroid/graphics/Point;
    .end local v4    # "yCompare":I
    :cond_5
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    .line 136
    .restart local v0    # "absX":I
    .restart local v1    # "absY":I
    .restart local v2    # "mapSize":I
    .restart local v3    # "out":Landroid/graphics/Point;
    :cond_6
    iget v4, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    goto :goto_1
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    .line 317
    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 111
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int v1, p2, v1

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    invoke-static {v0, v1, v2, v3, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixelsRotationSensitive(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 116
    .local v0, "point":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr v2, v3

    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    invoke-static {v1, v2, v4, v5, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    return-object v1
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    new-instance v1, Lorg/osmdroid/util/BoundingBoxE6;

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 85
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 86
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    .line 87
    .local v1, "x":Lorg/osmdroid/util/BoundingBoxE6;
    return-object v1
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    return-wide v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 4
    .param p1, "meters"    # F

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    invoke-static {p1, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v0

    return v0
.end method

.method public metersToPixels(F)F
    .locals 4
    .param p1, "meters"    # F

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    invoke-static {p1, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result v0

    return v0
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    if-nez p3, :cond_0

    .line 300
    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "reuse":Landroid/graphics/Point;
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 302
    .restart local p3    # "reuse":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 303
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    .line 304
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    .line 305
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 306
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 309
    :goto_0
    return-object p3

    .line 308
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 227
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 228
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 229
    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    neg-int v1, v1

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 230
    return-object v0

    .line 227
    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "in"    # Lorg/osmdroid/api/IGeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    move-object v6, p2

    .line 121
    invoke-static/range {v0 .. v6}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 124
    .local v7, "out":Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 125
    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v7}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 126
    return-object v7
.end method

.method public toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 220
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 221
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 222
    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 223
    return-object v0

    .line 220
    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p1, "in"    # Landroid/graphics/Point;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 206
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 208
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    int-to-double v6, v1

    .line 209
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 210
    .local v4, "zoomDifference":D
    invoke-static {v4, v5}, Lorg/osmdroid/util/TileSystem;->getFactor(D)D

    move-result-wide v2

    .line 211
    .local v2, "power":D
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-double v6, v1

    div-double/2addr v6, v2

    double-to-int v1, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    div-double/2addr v6, v2

    double-to-int v6, v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->set(II)V

    .line 213
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v6, v0}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 214
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v6, v0}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 216
    return-object v0

    .line 206
    .end local v0    # "out":Landroid/graphics/Point;
    .end local v2    # "power":D
    .end local v4    # "zoomDifference":D
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 191
    .line 192
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-wide v0, p1

    move-wide v2, p3

    move-object v5, p5

    .line 191
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "latituteE6"    # I
    .param p2, "longitudeE6"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 174
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    .line 175
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-object v5, p3

    .line 174
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "geoPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    if-nez p3, :cond_0

    .line 282
    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "reuse":Landroid/graphics/Point;
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 284
    .restart local p3    # "reuse":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    .line 286
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    .line 287
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 288
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 291
    :goto_0
    return-object p3

    .line 290
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
