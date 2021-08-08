.class public final Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field public static final EarthRadius:D = 6378137.0

.field public static final MaxLatitude:D = 85.05112878

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.05112878

.field public static final MinLongitude:D = -180.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Clip(DDD)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    .line 181
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolution(DD)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # D

    .prologue
    .line 79
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/osmdroid/util/TileSystem;->GroundResolutionMapSize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolution(DI)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 72
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolutionMapSize(DD)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "mapSize"    # D

    .prologue
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 87
    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p0

    .line 88
    mul-double v0, p0, v6

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v2

    div-double/2addr v0, p2

    return-wide v0
.end method

.method public static LatLongToPixelXY(DDDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "zoomLevel"    # D
    .param p6, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 112
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    .line 113
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v8

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4076800000000000L    # 360.0

    move-wide v0, p2

    .line 114
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v2

    .line 115
    invoke-static {p4, p5}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v4

    move-wide v0, v8

    move-object/from16 v6, p6

    .line 112
    invoke-static/range {v0 .. v6}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXYMapSize(DDDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "levelOfDetail"    # I
    .param p5, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 101
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    move-wide v0, p0

    .line 102
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4076800000000000L    # 360.0

    move-wide v2, p2

    .line 103
    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v2

    move v4, p4

    move-object v5, p5

    .line 101
    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static LatLongToPixelXYMapSize(DDDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 14
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "mapSize"    # D
    .param p6, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 124
    if-nez p6, :cond_0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 126
    .local v6, "out":Landroid/graphics/Point;
    :goto_0
    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p0

    .line 127
    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p2

    .line 129
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double v0, v0, p2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v10, v0, v2

    .line 130
    .local v10, "x":D
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 131
    .local v8, "sinLatitude":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v2, v4

    sub-double v12, v0, v2

    .line 133
    .local v12, "y":D
    mul-double v0, v10, p4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, p4, v4

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 134
    mul-double v0, v12, p4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, p4, v4

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 135
    return-object v6

    .end local v6    # "out":Landroid/graphics/Point;
    .end local v8    # "sinLatitude":D
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_0
    move-object/from16 v6, p6

    .line 124
    goto :goto_0
.end method

.method public static MapScale(DII)D
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I
    .param p3, "screenDpi"    # I

    .prologue
    .line 94
    invoke-static {p0, p1, p2, p3}, Lmicrosoft/mappoint/TileSystem;->MapScale(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static MapSize(D)D
    .locals 4
    .param p0, "pZoomLevel"    # D

    .prologue
    .line 60
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getFactor(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static MapSize(I)I
    .locals 1
    .param p0, "levelOfDetail"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    return v0
.end method

.method public static PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "zoomLevel"    # D
    .param p4, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 153
    invoke-static {p2, p3}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v6

    .line 154
    .local v6, "mapSize":D
    int-to-double v0, p0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    .line 155
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v8, v0

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    .line 156
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 154
    invoke-static {v8, v0, v6, v7, p4}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLongMapSize(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "levelOfDetail"    # I
    .param p3, "reuse"    # Lorg/osmdroid/util/GeoPoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    invoke-static {p2}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v8

    .line 142
    .local v8, "mapSize":I
    int-to-double v0, p0

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    .line 143
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v9, v0

    int-to-double v0, p1

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    .line 144
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 142
    invoke-static {v9, v0, p2, p3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToLatLongMapSize(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 20
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "mapSize"    # D
    .param p4, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 166
    if-nez p4, :cond_0

    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 167
    .local v12, "out":Lorg/osmdroid/util/GeoPoint;
    :goto_0
    move/from16 v0, p0

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p2, v6

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v2

    div-double v2, v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v14, v2, v4

    .line 168
    .local v14, "x":D
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    move/from16 v0, p1

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, p2, v6

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v2

    div-double v2, v2, p2

    sub-double v16, v18, v2

    .line 169
    .local v16, "y":D
    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    move-wide/from16 v0, v16

    neg-double v6, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v18

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    sub-double v8, v2, v4

    .line 170
    .local v8, "latitude":D
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v10, v2, v14

    .line 171
    .local v10, "longitude":D
    invoke-virtual {v12, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 172
    invoke-virtual {v12, v10, v11}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 173
    return-object v12

    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "out":Lorg/osmdroid/util/GeoPoint;
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_0
    move-object/from16 v12, p4

    .line 166
    goto :goto_0
.end method

.method public static PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p0, "pPixelX"    # I
    .param p1, "pPixelY"    # I
    .param p2, "pTileSize"    # D
    .param p4, "pReuse"    # Landroid/graphics/Point;

    .prologue
    .line 194
    if-nez p4, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 195
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    int-to-double v2, p0

    div-double/2addr v2, p2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 196
    int-to-double v2, p1

    div-double/2addr v2, p2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 197
    return-object v0

    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    move-object v0, p4

    .line 194
    goto :goto_0
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToTileXY(Landroid/graphics/Rect;DLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "pTileSize"    # D
    .param p3, "pReuse"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    if-nez p3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 205
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-double v2, v1

    div-double/2addr v2, p1

    double-to-int v1, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    div-double/2addr v2, p1

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-double v4, v3

    div-double/2addr v4, p1

    double-to-int v3, v4

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    div-double/2addr v4, p1

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    return-object v0

    .end local v0    # "out":Landroid/graphics/Rect;
    :cond_0
    move-object v0, p3

    .line 204
    goto :goto_0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "quadKey"    # Ljava/lang/String;
    .param p1, "reuse"    # Landroid/graphics/Point;

    .prologue
    .line 233
    invoke-static {p0, p1}, Lmicrosoft/mappoint/TileSystem;->QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToPixelXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p0, "pTileX"    # I
    .param p1, "pTileY"    # I
    .param p2, "pTileSize"    # D
    .param p4, "pReuse"    # Landroid/graphics/Point;

    .prologue
    .line 220
    if-nez p4, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 221
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    int-to-double v2, p0

    mul-double/2addr v2, p2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 222
    int-to-double v2, p1

    mul-double/2addr v2, p2

    double-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 223
    return-object v0

    .end local v0    # "out":Landroid/graphics/Point;
    :cond_0
    move-object v0, p4

    .line 220
    goto :goto_0
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 1
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "levelOfDetail"    # I

    .prologue
    .line 228
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToQuadKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFactor(D)D
    .locals 2
    .param p0, "pZoomLevel"    # D

    .prologue
    .line 67
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInputTileZoomLevel(D)I
    .locals 2
    .param p0, "pZoomLevel"    # D

    .prologue
    .line 46
    double-to-int v0, p0

    return v0
.end method

.method public static getTileSize(D)D
    .locals 2
    .param p0, "pZoomLevel"    # D

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    int-to-double v0, v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getTileSize()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getTileSize()I

    move-result v0

    return v0
.end method

.method public static setTileSize(I)V
    .locals 0
    .param p0, "tileSize"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    .line 28
    return-void
.end method

.method private static wrap(DDDD)D
    .locals 4
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D
    .param p6, "interval"    # D

    .prologue
    .line 252
    cmpl-double v0, p2, p4

    if-lez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minValue must be smaller than maxValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v0, p6, v0

    if-lez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    :goto_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_2

    .line 262
    add-double/2addr p0, p6

    goto :goto_0

    .line 264
    :cond_2
    :goto_1
    cmpl-double v0, p0, p4

    if-lez v0, :cond_3

    .line 265
    sub-double/2addr p0, p6

    goto :goto_1

    .line 267
    :cond_3
    return-wide p0
.end method
