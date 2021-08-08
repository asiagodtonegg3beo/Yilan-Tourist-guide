.class public Lorg/osmdroid/views/overlay/Polyline;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Polyline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polyline$OnDragListener;,
        Lorg/osmdroid/views/overlay/Polyline$OnClickListener;
    }
.end annotation


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;

.field private mDragMatrix:Landroid/graphics/Matrix;

.field protected mDragStartPoint:Landroid/view/MotionEvent;

.field protected mDraggable:Z

.field protected mGeodesic:Z

.field protected mIsDragged:Z

.field private final mLineBounds:Landroid/graphics/Rect;

.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

.field protected mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

.field private mOriginalPoints:[[D

.field protected mPaint:Landroid/graphics/Paint;

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

.field private mPts:[F

.field public mRepeatPath:Z

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    .line 54
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mRepeatPath:Z

    .line 56
    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    .line 67
    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    .line 86
    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    .line 87
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 76
    return-void
.end method

.method private cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 16
    .param p1, "A"    # Landroid/graphics/Point;
    .param p2, "B"    # Landroid/graphics/Point;
    .param p3, "C"    # Landroid/graphics/Point;

    .prologue
    .line 501
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v2, v12

    .line 502
    .local v2, "AB_X":D
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    int-to-double v4, v12

    .line 503
    .local v4, "AB_Y":D
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v6, v12

    .line 504
    .local v6, "AC_X":D
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    int-to-double v8, v12

    .line 505
    .local v8, "AC_Y":D
    mul-double v12, v2, v8

    mul-double v14, v4, v6

    sub-double v10, v12, v14

    .line 506
    .local v10, "cross":D
    return-wide v10
.end method

.method private distance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8
    .param p1, "A"    # Landroid/graphics/Point;
    .param p2, "B"    # Landroid/graphics/Point;

    .prologue
    .line 511
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 512
    .local v0, "dX":D
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v2, v4

    .line 513
    .local v2, "dY":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 16
    .param p1, "A"    # Landroid/graphics/Point;
    .param p2, "B"    # Landroid/graphics/Point;
    .param p3, "C"    # Landroid/graphics/Point;

    .prologue
    .line 491
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v2, v12

    .line 492
    .local v2, "AB_X":D
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    int-to-double v4, v12

    .line 493
    .local v4, "AB_Y":D
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v6, v12

    .line 494
    .local v6, "BC_X":D
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    int-to-double v8, v12

    .line 495
    .local v8, "BC_Y":D
    mul-double v12, v2, v6

    mul-double v14, v4, v8

    add-double v10, v12, v14

    .line 496
    .local v10, "dot":D
    return-wide v10
.end method

.method private linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D
    .locals 10
    .param p1, "A"    # Landroid/graphics/Point;
    .param p2, "B"    # Landroid/graphics/Point;
    .param p3, "C"    # Landroid/graphics/Point;
    .param p4, "isSegment"    # Z

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 525
    .local v0, "dAB":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-nez v8, :cond_0

    .line 526
    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v8

    .line 536
    :goto_0
    return-wide v8

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v8

    div-double v2, v8, v0

    .line 528
    .local v2, "dist":D
    if-eqz p4, :cond_2

    .line 529
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    .line 530
    .local v4, "dot1":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_1

    .line 531
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v8

    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v6

    .line 533
    .local v6, "dot2":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    .line 534
    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v8

    goto :goto_0

    .line 536
    .end local v4    # "dot1":D
    .end local v6    # "dot2":D
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;

    .prologue
    .line 668
    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;->visit(Lorg/osmdroid/views/overlay/Polyline;)V

    .line 669
    return-void
.end method

.method protected addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 44
    .param p1, "startPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "numberOfPoints"    # I

    .prologue
    .line 174
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v34

    const-wide v36, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v16, v34, v36

    .line 175
    .local v16, "lat1":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v34

    const-wide v36, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v22, v34, v36

    .line 176
    .local v22, "lon1":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v34

    const-wide v36, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v18, v34, v36

    .line 177
    .local v18, "lat2":D
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v34

    const-wide v36, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v24, v34, v36

    .line 179
    .local v24, "lon2":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    sub-double v36, v16, v18

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v40, v22, v24

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    .line 180
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v36, v36, v38

    .line 179
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->asin(D)D

    move-result-wide v36

    mul-double v10, v34, v36

    .line 181
    .local v10, "d":D
    sub-double v34, v22, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    .line 182
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v40, v22, v24

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    sub-double v36, v36, v38

    .line 181
    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    const-wide v36, -0x406e20b960000000L    # -0.01745329238474369

    div-double v8, v34, v36

    .line 184
    .local v8, "bearing":D
    const-wide/16 v34, 0x0

    cmpg-double v15, v8, v34

    if-gez v15, :cond_0

    const-wide v34, 0x4076800000000000L    # 360.0

    add-double v8, v8, v34

    .line 186
    :cond_0
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    if-gt v14, v0, :cond_1

    .line 187
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v14

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    add-int/lit8 v15, p3, 0x1

    int-to-double v0, v15

    move-wide/from16 v36, v0

    div-double v12, v34, v36

    .line 188
    .local v12, "f":D
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    sub-double v34, v34, v12

    mul-double v34, v34, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v4, v34, v36

    .line 189
    .local v4, "A":D
    mul-double v34, v12, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v6, v34, v36

    .line 190
    .local v6, "B":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v28, v34, v36

    .line 191
    .local v28, "x":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    add-double v30, v34, v36

    .line 192
    .local v30, "y":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    add-double v32, v34, v36

    .line 194
    .local v32, "z":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    add-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    .line 195
    .local v20, "latN":D
    move-wide/from16 v0, v30

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    .line 196
    .local v26, "lonN":D
    const-wide v34, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v34, v34, v20

    const-wide v36, 0x412e848000000000L    # 1000000.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v15, v0

    const-wide v34, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v34, v34, v26

    const-wide v36, 0x412e848000000000L    # 1000000.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v15, v1}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    .line 186
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 198
    .end local v4    # "A":D
    .end local v6    # "B":D
    .end local v12    # "f":D
    .end local v20    # "latN":D
    .end local v26    # "lonN":D
    .end local v28    # "x":D
    .end local v30    # "y":D
    .end local v32    # "z":D
    :cond_1
    return-void
.end method

.method protected addPoint(II)V
    .locals 2
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method protected addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "aPoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    .line 98
    return-void
.end method

.method protected clearPath()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    .line 94
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 323
    if-eqz p3, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 328
    .local v13, "size":I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v13, v0, :cond_0

    .line 333
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v8

    .line 336
    .local v8, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v4, v0

    .line 337
    .local v4, "halfMapSize":I
    const/16 v19, 0x0

    mul-int/lit8 v20, v4, 0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v14, v0, Landroid/graphics/Point;->y:I

    .line 340
    .local v14, "southLimit":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_3

    .line 344
    :cond_2
    const/16 v19, 0x100

    mul-int/lit8 v20, v13, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    .line 345
    :cond_3
    const/4 v6, 0x0

    .line 347
    .local v6, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 349
    .local v9, "projectedPoint0":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v9, v0}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    .line 352
    .local v11, "screenPoint0":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 354
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_16

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    .line 357
    .local v10, "projectedPoint1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v10, v0}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v12

    .line 361
    .local v12, "screenPoint1":Landroid/graphics/Point;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 354
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 363
    :cond_4
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    :cond_5
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    :cond_6
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    :cond_7
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 368
    :cond_8
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 369
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 375
    :cond_9
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    if-gt v0, v4, :cond_a

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v14, :cond_10

    const/16 v19, 0x1

    :goto_3
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v14, :cond_11

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 379
    :cond_a
    iget v15, v11, Landroid/graphics/Point;->x:I

    .line 380
    .local v15, "x0":I
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 381
    .local v17, "y0":I
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    .line 382
    .local v16, "x1":I
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 385
    .local v18, "y1":I
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    if-le v0, v4, :cond_b

    .line 386
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 388
    mul-int/lit8 v19, v4, 0x2

    add-int v16, v16, v19

    .line 389
    mul-int/lit8 v19, v4, 0x2

    sub-int v15, v15, v19

    .line 397
    :cond_b
    :goto_5
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v14, :cond_13

    const/16 v19, 0x1

    :goto_6
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v14, :cond_14

    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 399
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v14, :cond_15

    .line 401
    mul-int/lit8 v19, v4, 0x2

    sub-int v18, v18, v19

    .line 402
    mul-int/lit8 v19, v4, 0x2

    add-int v17, v17, v19

    .line 409
    :cond_c
    :goto_8
    add-int/lit8 v19, v6, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 412
    const/4 v6, 0x0

    .line 414
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v7

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v7

    .line 419
    iput v15, v11, Landroid/graphics/Point;->x:I

    .line 420
    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 423
    .end local v15    # "x0":I
    .end local v16    # "x1":I
    .end local v17    # "y0":I
    .end local v18    # "y1":I
    :cond_e
    add-int/lit8 v19, v6, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 426
    const/4 v6, 0x0

    .line 428
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v7

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v19, v7

    .line 434
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 435
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 375
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 391
    .restart local v15    # "x0":I
    .restart local v16    # "x1":I
    .restart local v17    # "y0":I
    .restart local v18    # "y1":I
    :cond_12
    mul-int/lit8 v19, v4, 0x2

    sub-int v16, v16, v19

    .line 392
    mul-int/lit8 v19, v4, 0x2

    add-int v15, v15, v19

    goto/16 :goto_5

    .line 397
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 404
    :cond_15
    mul-int/lit8 v19, v4, 0x2

    add-int v18, v18, v19

    .line 405
    mul-int/lit8 v19, v4, 0x2

    sub-int v17, v17, v19

    goto/16 :goto_8

    .line 438
    .end local v10    # "projectedPoint1":Landroid/graphics/Point;
    .end local v12    # "screenPoint1":Landroid/graphics/Point;
    .end local v15    # "x0":I
    .end local v16    # "x1":I
    .end local v17    # "y0":I
    .end local v18    # "y1":I
    :cond_16
    if-lez v6, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mDragMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPts:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 11
    .param p1, "start"    # Landroid/view/MotionEvent;
    .param p2, "end"    # Landroid/view/MotionEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 621
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 622
    .local v1, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 623
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v7, v2, v3

    .line 624
    .local v7, "dy":F
    new-instance v8, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 625
    .local v8, "gp":Lorg/osmdroid/util/GeoPoint;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v2, v2

    if-ge v9, v2, :cond_0

    .line 626
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    .line 627
    .local v10, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v2, v2, v9

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v9

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    .line 628
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 629
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    float-to-int v3, v0

    float-to-int v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 630
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    .line 631
    const-string v2, "Polyline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving from ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v9

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v9

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 633
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v2, v2, v9

    const/4 v3, 0x1

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 634
    const-string v2, "Polyline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v9

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v9

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v1, v8, v10}, Lorg/osmdroid/views/Projection;->toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 625
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 637
    .end local v10    # "pt":Landroid/graphics/Point;
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 638
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 639
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getNumberOfPoints()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v0, v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 108
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v3, v3, v1

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 109
    .local v0, "gp":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "gp":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    return-object v2
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 10
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "tolerance"    # D
    .param p4, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v6, 0x1

    .line 467
    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 468
    .local v3, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    .line 469
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 470
    .local v2, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 471
    .local v1, "i":I
    const/4 v0, 0x0

    .line 472
    .local v0, "found":Z
    :goto_0
    iget v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 473
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 474
    .local v4, "projectedPoint1":Landroid/graphics/Point;
    if-nez v1, :cond_0

    .line 475
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 480
    :goto_1
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 481
    .local v5, "projectedPoint2":Landroid/graphics/Point;
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v3, v5, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 482
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v7, v8, v2, v6}, Lorg/osmdroid/views/overlay/Polyline;->linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D

    move-result-wide v8

    cmpg-double v7, v8, p2

    if-gtz v7, :cond_1

    move v0, v6

    .line 484
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 485
    goto :goto_0

    .line 478
    .end local v5    # "projectedPoint2":Landroid/graphics/Point;
    :cond_0
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 482
    .restart local v5    # "projectedPoint2":Landroid/graphics/Point;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 486
    .end local v4    # "projectedPoint1":Landroid/graphics/Point;
    .end local v5    # "projectedPoint2":Landroid/graphics/Point;
    :cond_2
    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 614
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 615
    .local v1, "dy":F
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 616
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 617
    return-void
.end method

.method protected onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "eventPos"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 656
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 663
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->onDestroy()V

    .line 664
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 561
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 562
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 563
    .local v0, "eventPos":Lorg/osmdroid/util/GeoPoint;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    float-to-double v2, v5

    .line 564
    .local v2, "tolerance":D
    invoke-virtual {p0, v0, v2, v3, p2}, Lorg/osmdroid/views/overlay/Polyline;->isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z

    move-result v4

    .line 565
    .local v4, "touched":Z
    if-eqz v4, :cond_0

    .line 566
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    if-eqz v5, :cond_1

    .line 567
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 572
    :cond_0
    :goto_0
    return v4

    .line 569
    :cond_1
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    invoke-interface {v5, p0, p2, v0}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 546
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 547
    .local v1, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 548
    .local v0, "eventPos":Lorg/osmdroid/util/GeoPoint;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    float-to-double v2, v5

    .line 549
    .local v2, "tolerance":D
    invoke-virtual {p0, v0, v2, v3, p2}, Lorg/osmdroid/views/overlay/Polyline;->isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z

    move-result v4

    .line 550
    .local v4, "touched":Z
    if-eqz v4, :cond_0

    .line 551
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-nez v5, :cond_1

    .line 552
    invoke-virtual {p0, p0, p2, v0}, Lorg/osmdroid/views/overlay/Polyline;->onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v4

    .line 557
    .end local v4    # "touched":Z
    :cond_0
    :goto_0
    return v4

    .line 554
    .restart local v4    # "touched":Z
    :cond_1
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    invoke-interface {v5, p0, p2, v0}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    .line 576
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mIsDragged:Z

    if-eqz v6, :cond_2

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 578
    iput-boolean v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mIsDragged:Z

    .line 579
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v5, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 580
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 581
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    if-eqz v5, :cond_0

    .line 582
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    invoke-interface {v5, p0}, Lorg/osmdroid/views/overlay/Polyline$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polyline;)V

    .line 609
    :cond_0
    :goto_0
    return v4

    .line 584
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 585
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 586
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    if-eqz v5, :cond_0

    .line 587
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    invoke-interface {v5, p0}, Lorg/osmdroid/views/overlay/Polyline$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polyline;)V

    goto :goto_0

    .line 590
    :cond_2
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 592
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 593
    .local v1, "dy":F
    float-to-double v6, v0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_3

    float-to-double v6, v1

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_3

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    .line 594
    :cond_3
    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mIsDragged:Z

    .line 595
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->closeInfoWindow()V

    .line 596
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    if-eqz v5, :cond_4

    .line 597
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    invoke-interface {v5, p0}, Lorg/osmdroid/views/overlay/Polyline$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polyline;)V

    .line 598
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 601
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_5
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mDragStartPoint:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_6

    .line 602
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-eqz v5, :cond_0

    .line 603
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 604
    .local v3, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 605
    .local v2, "eventPos":Lorg/osmdroid/util/GeoPoint;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    invoke-interface {v5, p0, p2, v2}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    goto/16 :goto_0

    .end local v2    # "eventPos":Lorg/osmdroid/util/GeoPoint;
    .end local v3    # "pj":Lorg/osmdroid/views/Projection;
    :cond_6
    move v4, v5

    .line 609
    goto/16 :goto_0
.end method

.method protected precomputePoints(Lorg/osmdroid/views/Projection;)V
    .locals 4
    .param p1, "pj"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 235
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, "size":I
    :goto_0
    iget v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    if-ge v2, v1, :cond_0

    .line 237
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    iget v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 238
    .local v0, "pt":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3, v0}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 239
    iget v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    goto :goto_0

    .line 241
    .end local v0    # "pt":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mDraggable:Z

    .line 125
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0
    .param p1, "geodesic"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    .line 232
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 163
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnDragListener:Lorg/osmdroid/views/overlay/Polyline$OnDragListener;

    .line 167
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 207
    .local v5, "size":I
    const/4 v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    iput-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 210
    .local v3, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 211
    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x1

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 212
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    if-nez v6, :cond_0

    .line 213
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    .line 208
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    if-lez v1, :cond_1

    .line 217
    add-int/lit8 v6, v1, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    .line 218
    .local v4, "prev":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v4, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    .line 220
    .local v0, "greatCircleLength":I
    const v6, 0x186a0

    div-int v2, v0, v6

    .line 221
    .local v2, "numberOfPoints":I
    invoke-virtual {p0, v4, v3, v2}, Lorg/osmdroid/views/overlay/Polyline;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 223
    .end local v0    # "greatCircleLength":I
    .end local v2    # "numberOfPoints":I
    .end local v4    # "prev":Lorg/osmdroid/util/GeoPoint;
    :cond_1
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_1

    .line 226
    .end local v3    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_2
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    .line 676
    :cond_0
    return-void
.end method

.method public showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2
    .param p1, "position"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    goto :goto_0
.end method
