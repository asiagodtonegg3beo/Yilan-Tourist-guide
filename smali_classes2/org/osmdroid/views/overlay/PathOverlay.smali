.class public Lorg/osmdroid/views/overlay/PathOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "PathOverlay.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mLineBounds:Landroid/graphics/Rect;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsPrecomputed:I

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 79
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IF)V

    .line 80
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "width"    # F

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    .line 84
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PathOverlay;->clearPath()V

    .line 89
    return-void
.end method

.method public constructor <init>(IFLandroid/content/Context;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "width"    # F
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IF)V

    .line 76
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 3
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 111
    invoke-virtual {p1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    .line 114
    .local v0, "greatCircleLength":I
    const v2, 0x186a0

    div-int v1, v0, v2

    .line 116
    .local v1, "numberOfPoints":I
    invoke-virtual {p0, p1, p2, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 117
    return-void
.end method

.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 46
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "numberOfPoints"    # I

    .prologue
    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v36

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    mul-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    div-double v18, v36, v38

    .line 131
    .local v18, "lat1":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v36

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    mul-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    div-double v24, v36, v38

    .line 132
    .local v24, "lon1":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v36

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    mul-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    div-double v20, v36, v38

    .line 133
    .local v20, "lat2":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v36

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    mul-double v36, v36, v38

    const-wide v38, 0x4066800000000000L    # 180.0

    div-double v26, v36, v38

    .line 135
    .local v26, "lon2":D
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    sub-double v38, v18, v20

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    sub-double v42, v24, v26

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v42, v44

    .line 136
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v42

    mul-double v40, v40, v42

    add-double v38, v38, v40

    .line 135
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->asin(D)D

    move-result-wide v38

    mul-double v12, v36, v38

    .line 137
    .local v12, "d":D
    sub-double v36, v24, v26

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    .line 138
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    sub-double v42, v24, v26

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    sub-double v38, v38, v40

    .line 137
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v36

    const-wide v38, -0x406e20b95dad62c7L    # -0.017453292519943295

    div-double v10, v36, v38

    .line 140
    .local v10, "bearing":D
    const-wide/16 v36, 0x0

    cmpg-double v36, v10, v36

    if-gez v36, :cond_0

    const-wide v36, 0x4076800000000000L    # 360.0

    add-double v10, v10, v36

    .line 142
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    add-int/lit8 v17, p3, 0x1

    .local v17, "j":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 143
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v14, v36, v38

    .line 144
    .local v14, "f":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v36, v36, v14

    mul-double v36, v36, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    div-double v6, v36, v38

    .line 145
    .local v6, "A":D
    mul-double v36, v14, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    div-double v8, v36, v38

    .line 146
    .local v8, "B":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v38, v38, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v30, v36, v38

    .line 147
    .local v30, "x":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v38, v38, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v32, v36, v38

    .line 148
    .local v32, "y":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v38, v38, v8

    add-double v34, v36, v38

    .line 150
    .local v34, "z":D
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v38

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    .line 151
    .local v22, "latN":D
    move-wide/from16 v0, v32

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v28

    .line 152
    .local v28, "lonN":D
    const-wide v36, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v36, v22, v36

    const-wide v38, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v38, v28, v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(DD)V

    .line 142
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 154
    .end local v6    # "A":D
    .end local v8    # "B":D
    .end local v14    # "f":D
    .end local v22    # "latN":D
    .end local v28    # "lonN":D
    .end local v30    # "x":D
    .end local v32    # "y":D
    .end local v34    # "z":D
    :cond_1
    return-void
.end method

.method public addPoint(DD)V
    .locals 5
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 177
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    double-to-int v2, p1

    double-to-int v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public addPoint(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4
    .param p1, "aPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(DD)V

    .line 174
    return-void
.end method

.method public addPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "aPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/api/IGeoPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    .line 188
    .local v0, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    .line 190
    .end local v0    # "point":Lorg/osmdroid/api/IGeoPoint;
    :cond_0
    return-void
.end method

.method public varargs addPoints([Lorg/osmdroid/api/IGeoPoint;)V
    .locals 3
    .param p1, "aPoints"    # [Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 181
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 182
    .local v0, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "point":Lorg/osmdroid/api/IGeoPoint;
    :cond_0
    return-void
.end method

.method public clearPath()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    .line 170
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 203
    if-eqz p3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 208
    .local v17, "size":I
    const/4 v4, 0x2

    move/from16 v0, v17

    if-lt v0, v4, :cond_0

    .line 213
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 216
    .local v3, "pj":Lorg/osmdroid/views/Projection;
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    .line 218
    .local v14, "pt":Landroid/graphics/Point;
    iget v4, v14, Landroid/graphics/Point;->x:I

    iget v5, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v14}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 220
    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    goto :goto_1

    .line 223
    .end local v14    # "pt":Landroid/graphics/Point;
    :cond_2
    const/4 v15, 0x0

    .line 229
    .local v15, "screenPoint0":Landroid/graphics/Point;
    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v9

    .line 230
    .local v9, "boundingBox":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    .line 231
    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    const/4 v8, 0x0

    .line 230
    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v18

    .line 232
    .local v18, "topLeft":Landroid/graphics/Point;
    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    .line 233
    invoke-virtual {v9}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    const/4 v8, 0x0

    .line 232
    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 234
    .local v2, "bottomRight":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v10, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 236
    .local v10, "clipBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v5, v17, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 238
    .local v12, "projectedPoint0":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v5, v12, Landroid/graphics/Point;->x:I

    iget v6, v12, Landroid/graphics/Point;->y:I

    iget v7, v12, Landroid/graphics/Point;->x:I

    iget v8, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    add-int/lit8 v11, v17, -0x2

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 243
    .local v13, "projectedPoint1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Point;->x:I

    iget v6, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->union(II)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v10, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    move-object v12, v13

    .line 248
    const/4 v15, 0x0

    .line 240
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 254
    :cond_4
    if-nez v15, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v3, v12, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v15

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v5, v15, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v15, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v3, v13, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v16

    .line 262
    .local v16, "screenPoint1":Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v15, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    move-object v12, v13

    .line 270
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v15, Landroid/graphics/Point;->x:I

    .line 271
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, v15, Landroid/graphics/Point;->y:I

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v5, v12, Landroid/graphics/Point;->x:I

    iget v6, v12, Landroid/graphics/Point;->y:I

    iget v7, v12, Landroid/graphics/Point;->x:I

    iget v8, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 275
    .end local v13    # "projectedPoint1":Landroid/graphics/Point;
    .end local v16    # "screenPoint1":Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getNumberOfPoints()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    .line 165
    return-void
.end method
