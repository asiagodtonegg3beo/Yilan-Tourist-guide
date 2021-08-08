.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "PathProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 35
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .param p3, "doGudermann"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    .line 25
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "List of GeoPoints needs to be at least 2."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v19, p2

    .line 29
    .local v19, "out":Landroid/graphics/Path;
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Path;->incReserve(I)V

    .line 31
    const/4 v15, 0x1

    .line 32
    .local v15, "first":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/osmdroid/util/GeoPoint;

    .line 34
    .local v16, "gp":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 33
    invoke-static/range {v4 .. v10}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v25

    .line 36
    .local v25, "underGeopointTileCoords":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v26

    .line 37
    .local v26, "tileSize":D
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v4, v6, v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    .line 43
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    move-wide/from16 v0, v26

    invoke-static {v4, v6, v0, v1, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v31

    .line 45
    .local v31, "upperRight":Landroid/graphics/Point;
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 46
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 47
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    .line 45
    move-wide/from16 v0, v26

    invoke-static {v4, v6, v0, v1, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v17

    .line 48
    .local v17, "lowerLeft":Landroid/graphics/Point;
    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    const/4 v7, 0x0

    .line 48
    invoke-static {v4, v6, v8, v9, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v18

    .line 50
    .local v18, "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    const/4 v7, 0x0

    .line 50
    invoke-static {v4, v6, v8, v9, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v22

    .line 52
    .local v22, "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v5, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    .line 53
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v22 .. v22}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    .line 54
    invoke-virtual/range {v22 .. v22}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 57
    .local v5, "bb":Lorg/osmdroid/util/BoundingBox;
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_2

    .line 60
    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 59
    invoke-virtual/range {v5 .. v10}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v20

    .line 67
    .local v20, "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v21

    .line 68
    .local v21, "screenRect":Landroid/graphics/Rect;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 69
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    const/4 v7, 0x0

    .line 68
    move-wide/from16 v0, v26

    invoke-static {v4, v6, v0, v1, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v14

    .line 70
    .local v14, "centerMapTileCoords":Landroid/graphics/Point;
    iget v4, v14, Landroid/graphics/Point;->x:I

    iget v6, v14, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    move-wide/from16 v0, v26

    invoke-static {v4, v6, v0, v1, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v30

    .line 72
    .local v30, "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    iget v4, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int v23, v4, v6

    .line 73
    .local v23, "tileDiffX":I
    iget v4, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int v24, v4, v6

    .line 74
    .local v24, "tileDiffY":I
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 75
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    mul-int v6, v6, v23

    sub-int v28, v4, v6

    .line 76
    .local v28, "underGeopointTileScreenLeft":I
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 77
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    mul-int v6, v6, v24

    sub-int v29, v4, v6

    .line 79
    .local v29, "underGeopointTileScreenTop":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 80
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int v32, v28, v4

    .line 81
    .local v32, "x":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 82
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int v33, v29, v4

    .line 85
    .local v33, "y":I
    if-eqz v15, :cond_3

    .line 86
    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    :goto_3
    const/4 v15, 0x0

    .line 93
    goto/16 :goto_1

    .line 28
    .end local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    .end local v14    # "centerMapTileCoords":Landroid/graphics/Point;
    .end local v15    # "first":Z
    .end local v16    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v17    # "lowerLeft":Landroid/graphics/Point;
    .end local v18    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v19    # "out":Landroid/graphics/Path;
    .end local v20    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .end local v21    # "screenRect":Landroid/graphics/Rect;
    .end local v22    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v23    # "tileDiffX":I
    .end local v24    # "tileDiffY":I
    .end local v25    # "underGeopointTileCoords":Landroid/graphics/Point;
    .end local v26    # "tileSize":D
    .end local v28    # "underGeopointTileScreenLeft":I
    .end local v29    # "underGeopointTileScreenTop":I
    .end local v30    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .end local v31    # "upperRight":Landroid/graphics/Point;
    .end local v32    # "x":I
    .end local v33    # "y":I
    :cond_1
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    goto/16 :goto_0

    .line 64
    .restart local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    .restart local v15    # "first":Z
    .restart local v16    # "gp":Lorg/osmdroid/util/GeoPoint;
    .restart local v17    # "lowerLeft":Landroid/graphics/Point;
    .restart local v18    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v19    # "out":Landroid/graphics/Path;
    .restart local v22    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v25    # "underGeopointTileCoords":Landroid/graphics/Point;
    .restart local v26    # "tileSize":D
    .restart local v31    # "upperRight":Landroid/graphics/Point;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 63
    invoke-virtual/range {v5 .. v10}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v20

    .restart local v20    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    goto/16 :goto_2

    .line 90
    .restart local v14    # "centerMapTileCoords":Landroid/graphics/Point;
    .restart local v21    # "screenRect":Landroid/graphics/Rect;
    .restart local v23    # "tileDiffX":I
    .restart local v24    # "tileDiffY":I
    .restart local v28    # "underGeopointTileScreenLeft":I
    .restart local v29    # "underGeopointTileScreenTop":I
    .restart local v30    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .restart local v32    # "x":I
    .restart local v33    # "y":I
    :cond_3
    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 95
    .end local v5    # "bb":Lorg/osmdroid/util/BoundingBox;
    .end local v14    # "centerMapTileCoords":Landroid/graphics/Point;
    .end local v16    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v17    # "lowerLeft":Landroid/graphics/Point;
    .end local v18    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v20    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .end local v21    # "screenRect":Landroid/graphics/Rect;
    .end local v22    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v23    # "tileDiffX":I
    .end local v24    # "tileDiffY":I
    .end local v25    # "underGeopointTileCoords":Landroid/graphics/Point;
    .end local v26    # "tileSize":D
    .end local v28    # "underGeopointTileScreenLeft":I
    .end local v29    # "underGeopointTileScreenTop":I
    .end local v30    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .end local v31    # "upperRight":Landroid/graphics/Point;
    .end local v32    # "x":I
    .end local v33    # "y":I
    :cond_4
    return-object v19
.end method
