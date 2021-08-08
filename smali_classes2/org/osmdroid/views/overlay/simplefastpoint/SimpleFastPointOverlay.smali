.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;
    }
.end annotation


# instance fields
.field private clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

.field private curX:F

.field private curY:F

.field private grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

.field private gridBool:[[Z

.field private gridHei:I

.field private gridWid:I

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

.field private mSelectedPoint:Ljava/lang/Integer;

.field private final mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

.field private numLabels:I

.field private offsetX:F

.field private offsetY:F

.field private prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private prevNumPointers:I

.field private startX:F

.field private startY:F

.field private viewHei:I

.field private viewWid:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;)V
    .locals 1
    .param p1, "pointList"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .prologue
    .line 87
    invoke-static {}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->getDefaultStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V
    .locals 16
    .param p1, "pointList"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;
    .param p2, "style"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 41
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 68
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .line 71
    const/4 v2, 0x0

    .local v2, "east":Ljava/lang/Double;
    const/4 v15, 0x0

    .local v15, "west":Ljava/lang/Double;
    const/4 v12, 0x0

    .local v12, "north":Ljava/lang/Double;
    const/4 v14, 0x0

    .line 72
    .local v14, "south":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/osmdroid/api/IGeoPoint;

    .line 73
    .local v13, "p":Lorg/osmdroid/api/IGeoPoint;
    if-eqz v13, :cond_0

    .line 74
    if-eqz v2, :cond_1

    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    :cond_1
    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 75
    :cond_2
    if-eqz v15, :cond_3

    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    :cond_3
    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 76
    :cond_4
    if-eqz v12, :cond_5

    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    :cond_5
    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 77
    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    :cond_7
    invoke-interface {v13}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_0

    .line 80
    .end local v13    # "p":Lorg/osmdroid/api/IGeoPoint;
    :cond_8
    if-eqz v2, :cond_9

    .line 81
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 84
    :goto_1
    return-void

    .line 83
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    goto :goto_1
.end method

.method private computeGrid(Lorg/osmdroid/views/MapView;)V
    .locals 18
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v17

    .line 116
    .local v17, "viewBBox":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 117
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 118
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 119
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_6

    .line 121
    :cond_0
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    .line 122
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 125
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    .line 134
    :cond_2
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 135
    .local v13, "mPositionPixels":Landroid/graphics/Point;
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v14

    .line 136
    .local v14, "pj":Lorg/osmdroid/views/Projection;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/osmdroid/api/IGeoPoint;

    .line 139
    .local v15, "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-eqz v15, :cond_3

    .line 140
    invoke-interface {v15}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-lez v3, :cond_3

    .line 141
    invoke-interface {v15}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 142
    invoke-interface {v15}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-lez v3, :cond_3

    .line 143
    invoke-interface {v15}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 144
    invoke-virtual {v14, v15, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 146
    iget v3, v13, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 147
    .local v2, "gridX":I
    iget v3, v13, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v12, v6

    .line 148
    .local v12, "gridY":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v12, v3, :cond_3

    if-ltz v2, :cond_3

    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v3, v3, v2

    aget-object v3, v3, v12

    if-nez v3, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v5, v3, v2

    new-instance v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .line 152
    invoke-interface {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast v15, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    .end local v15    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v15}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;)V

    aput-object v6, v5, v12

    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    goto/16 :goto_0

    .line 129
    .end local v2    # "gridX":I
    .end local v12    # "gridY":I
    .end local v13    # "mPositionPixels":Landroid/graphics/Point;
    .end local v14    # "pj":Lorg/osmdroid/views/Projection;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v16, v4, v3

    .line 130
    .local v16, "row":[Landroid/graphics/Point;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 152
    .end local v16    # "row":[Landroid/graphics/Point;
    .restart local v2    # "gridX":I
    .restart local v12    # "gridY":I
    .restart local v13    # "mPositionPixels":Landroid/graphics/Point;
    .restart local v14    # "pj":Lorg/osmdroid/views/Projection;
    .restart local v15    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 157
    .end local v2    # "gridX":I
    .end local v12    # "gridY":I
    .end local v13    # "mPositionPixels":Landroid/graphics/Point;
    .end local v14    # "pj":Lorg/osmdroid/views/Projection;
    .end local v15    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_6
    return-void
.end method

.method private updateGrid(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    .line 92
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    .line 93
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    .line 94
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    if-ne v0, v1, :cond_0

    .line 97
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "b"    # Z

    .prologue
    .line 265
    if-eqz p3, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 267
    .local v10, "mPositionPixels":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v13

    .line 271
    .local v13, "pj":Lorg/osmdroid/views/Projection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    .line 272
    sget-object v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$simplefastpoint$SimpleFastPointOverlayOptions$RenderingAlgorithm:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 404
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    .line 405
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    invoke-virtual {v13, v2, v10}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v2, v3, :cond_14

    .line 409
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 277
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 278
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_4

    .line 279
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    .line 281
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    if-le v2, v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v2, v3, :cond_8

    .line 285
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_8

    :cond_6
    const/16 v16, 0x1

    .line 287
    .local v16, "showLabels":Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    sub-float v11, v2, v3

    .line 288
    .local v11, "offX":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    sub-float v12, v2, v3

    .line 289
    .local v12, "offY":F
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 290
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_a

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    if-eqz v2, :cond_7

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v2, v3, :cond_9

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v3, v3, v19

    aget-object v3, v3, v20

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 304
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    .line 305
    invoke-static {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;)Ljava/lang/String;

    move-result-object v17

    .local v17, "tmpLabel":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v3, v3, v19

    aget-object v3, v3, v20

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 290
    .end local v17    # "tmpLabel":Ljava/lang/String;
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 285
    .end local v11    # "offX":F
    .end local v12    # "offY":F
    .end local v16    # "showLabels":Z
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 297
    .restart local v11    # "offX":F
    .restart local v12    # "offY":F
    .restart local v16    # "showLabels":Z
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    move-object/from16 v0, p0

    iget v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v19

    aget-object v2, v2, v20

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v6, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v7, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 289
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 319
    .end local v11    # "offX":F
    .end local v12    # "offY":F
    .end local v16    # "showLabels":Z
    .end local v19    # "x":I
    .end local v20    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    .line 320
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 321
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    .line 326
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v2, v3, :cond_f

    .line 327
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_f

    const/16 v16, 0x1

    .line 330
    .restart local v16    # "showLabels":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v18

    .line 331
    .local v18, "viewBBox":Lorg/osmdroid/util/BoundingBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_d
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/osmdroid/api/IGeoPoint;

    .line 332
    .local v14, "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-eqz v14, :cond_d

    .line 333
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_d

    .line 334
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_d

    .line 335
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_d

    .line 336
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_d

    .line 337
    invoke-virtual {v13, v14, v10}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 340
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 341
    .local v8, "gridX":I
    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v9, v2

    .line 342
    .local v9, "gridY":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v8, v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v9, v2, :cond_d

    if-ltz v8, :cond_d

    if-ltz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v2, v2, v8

    aget-boolean v2, v2, v9

    if-nez v2, :cond_d

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v2, v2, v8

    const/4 v3, 0x1

    aput-boolean v3, v2, v9

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v2, v3, :cond_10

    .line 348
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 358
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v16, :cond_d

    check-cast v14, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    .line 359
    .end local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v14}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tmpLabel":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 360
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 323
    .end local v8    # "gridX":I
    .end local v9    # "gridY":I
    .end local v16    # "showLabels":Z
    .end local v17    # "tmpLabel":Ljava/lang/String;
    .end local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v4, v3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_c

    aget-object v15, v3, v2

    .line 324
    .local v15, "row":[Z
    const/4 v5, 0x0

    invoke-static {v15, v5}, Ljava/util/Arrays;->fill([ZZ)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 327
    .end local v15    # "row":[Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 352
    .restart local v8    # "gridX":I
    .restart local v9    # "gridY":I
    .restart local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v16    # "showLabels":Z
    .restart local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :cond_10
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v3, v2, v3

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v4, v2, v4

    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v5, v2

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v7, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 370
    .end local v8    # "gridX":I
    .end local v9    # "gridY":I
    .end local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .end local v16    # "showLabels":Z
    .end local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v2, v3, :cond_12

    .line 371
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_12

    const/16 v16, 0x1

    .line 372
    .restart local v16    # "showLabels":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v18

    .line 373
    .restart local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_11
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/osmdroid/api/IGeoPoint;

    .line 374
    .restart local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-eqz v14, :cond_11

    .line 375
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_11

    .line 376
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_11

    .line 377
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_11

    .line 378
    invoke-interface {v14}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_11

    .line 379
    invoke-virtual {v13, v14, v10}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v2, v3, :cond_13

    .line 381
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 391
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v16, :cond_11

    check-cast v14, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    .line 392
    .end local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v14}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tmpLabel":Ljava/lang/String;
    if-eqz v17, :cond_11

    .line 393
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 371
    .end local v16    # "showLabels":Z
    .end local v17    # "tmpLabel":Ljava/lang/String;
    .end local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 385
    .restart local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v16    # "showLabels":Z
    .restart local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :cond_13
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v3, v2, v3

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v4, v2, v4

    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v5, v2

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v7, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 412
    .end local v14    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .end local v16    # "showLabels":Z
    .end local v18    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :cond_14
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v3, v2, v3

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v4, v2, v4

    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float/2addr v5, v2

    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v7, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getSelectedPoint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    return-object v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v6, 0x0

    const/high16 v11, 0x42480000    # 50.0f

    .line 213
    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-boolean v7, v7, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    if-nez v7, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v6

    .line 215
    :cond_1
    const/4 v3, 0x0

    .line 216
    .local v3, "minHyp":Ljava/lang/Float;
    const/4 v0, -0x1

    .line 217
    .local v0, "closest":I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 218
    .local v5, "tmp":Landroid/graphics/Point;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    .line 220
    .local v4, "pj":Lorg/osmdroid/views/Projection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v7}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 221
    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v7, v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    if-nez v7, :cond_3

    .line 220
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_3
    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v7, v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 227
    .local v1, "hyp":F
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    .line 228
    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 229
    move v0, v2

    goto :goto_2

    .line 232
    .end local v1    # "hyp":F
    :cond_5
    if-eqz v3, :cond_0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->setSelectedPoint(Ljava/lang/Integer;)V

    .line 234
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 235
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Ljava/lang/Integer;)V

    .line 236
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    if-eq v1, v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    .line 166
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    .line 167
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    .line 168
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    if-ge v0, v1, :cond_2

    .line 169
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    .line 170
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_2
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    .line 173
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    .line 179
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    .line 180
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 181
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    .line 182
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 184
    :cond_3
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    .line 185
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    if-eq v1, v2, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    .line 190
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    .line 191
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    goto/16 :goto_0

    .line 196
    .end local v0    # "i":I
    :pswitch_2
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    .line 197
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    .line 198
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    .line 199
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    .line 200
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    .line 201
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    .line 202
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    .line 260
    return-void
.end method

.method public setSelectedPoint(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "toSelect"    # Ljava/lang/Integer;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    goto :goto_0
.end method
