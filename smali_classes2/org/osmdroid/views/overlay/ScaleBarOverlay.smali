.class public Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ScaleBarOverlay.java"

# interfaces
.implements Lorg/osmdroid/util/constants/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    }
.end annotation


# static fields
.field private static final sTextBoundsRect:Landroid/graphics/Rect;


# instance fields
.field private adjustLength:Z

.field protected alignBottom:Z

.field protected alignRight:Z

.field private barPaint:Landroid/graphics/Paint;

.field protected final barPath:Landroid/graphics/Path;

.field private bgPaint:Landroid/graphics/Paint;

.field private centred:Z

.field private context:Landroid/content/Context;

.field private lastLatitude:D

.field private lastZoomLevel:I

.field latitudeBar:Z

.field protected final latitudeBarRect:Landroid/graphics/Rect;

.field longitudeBar:Z

.field protected final longitudeBarRect:Landroid/graphics/Rect;

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private maxLength:F

.field minZoom:I

.field public screenHeight:I

.field public screenWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field xOffset:I

.field public xdpi:F

.field yOffset:I

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 15
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/high16 v14, 0x43840000    # 264.0f

    const-wide/high16 v12, 0x400e000000000000L    # 3.75

    const-wide v10, 0x4000cccccccccccdL    # 2.1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 65
    const/16 v6, 0xa

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 66
    const/16 v6, 0xa

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 67
    iput v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    .line 69
    sget-object v6, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 71
    iput-boolean v9, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 72
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 74
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 75
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 83
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    .line 87
    const/4 v6, -0x1

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 88
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 99
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 100
    iput-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 109
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 111
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 113
    .local v2, "dm":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41200000    # 10.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 129
    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 131
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 132
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 135
    const/4 v4, 0x0

    .line 137
    .local v4, "manufacturer":Ljava/lang/String;
    :try_start_0
    const-class v6, Landroid/os/Build;

    const-string v7, "MANUFACTURER"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 138
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const-string v6, "motorola"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "DROIDX"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    const-string v7, "window"

    .line 146
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 147
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v6

    if-lez v6, :cond_1

    .line 148
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v6, v6

    div-double/2addr v6, v12

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 149
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v10

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 162
    .end local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_1
    const v6, 0x40228f5c    # 2.54f

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 163
    return-void

    .line 151
    .restart local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v6, v6

    div-double/2addr v6, v10

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 152
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v12

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 155
    .end local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_2
    const-string v6, "motorola"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Droid"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    iput v14, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 158
    iput v14, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 139
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private adjustScaleBarLength(D)D
    .locals 9
    .param p1, "length"    # D

    .prologue
    .line 606
    const-wide/16 v2, 0x0

    .line 607
    .local v2, "pow":J
    const/4 v0, 0x0

    .line 608
    .local v0, "feet":Z
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_2

    .line 609
    const-wide v4, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_1

    .line 610
    const-wide v4, 0x409925604189374cL    # 1609.344

    div-double/2addr p1, v4

    .line 624
    :cond_0
    :goto_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_4

    .line 625
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 626
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v4

    goto :goto_0

    .line 612
    :cond_1
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v4

    .line 613
    const/4 v0, 0x1

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_0

    .line 616
    const-wide v4, 0x4077266666666666L    # 370.4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 617
    const-wide v4, 0x409cf00000000000L    # 1852.0

    div-double/2addr p1, v4

    goto :goto_0

    .line 619
    :cond_3
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v4

    .line 620
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :cond_4
    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_5

    const-wide/16 v4, 0x0

    cmpl-double v1, p1, v4

    if-lez v1, :cond_5

    .line 629
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 630
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v4

    goto :goto_1

    .line 633
    :cond_5
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_7

    .line 634
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 640
    :goto_2
    if-eqz v0, :cond_9

    .line 641
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    div-double/2addr p1, v4

    .line 646
    :cond_6
    :goto_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    long-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr p1, v4

    .line 647
    return-wide p1

    .line 635
    :cond_7
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_8

    .line 636
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    goto :goto_2

    .line 638
    :cond_8
    const-wide/high16 p1, 0x4014000000000000L    # 5.0

    goto :goto_2

    .line 642
    :cond_9
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_a

    .line 643
    const-wide v4, 0x409925604189374cL    # 1609.344

    mul-double/2addr p1, v4

    goto :goto_3

    .line 644
    :cond_a
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_6

    .line 645
    const-wide v4, 0x409cf00000000000L    # 1852.0

    mul-double/2addr p1, v4

    goto :goto_3
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v14, v14

    const-wide v16, 0x400451eb851eb852L    # 2.54

    div-double v14, v14, v16

    double-to-int v12, v14

    .line 439
    .local v12, "xdpcm":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v15, v12

    mul-float/2addr v14, v15

    float-to-int v6, v14

    .line 442
    .local v6, "xLen":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v6, 0x2

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 443
    .local v2, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 446
    .local v3, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .end local v2    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v7

    .line 448
    .local v7, "xMeters":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v14, :cond_1

    int-to-double v14, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v8

    .line 450
    .local v8, "xMetersAdjusted":D
    :goto_0
    int-to-double v14, v6

    mul-double/2addr v14, v8

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v5, v14

    .line 453
    .local v5, "xBarLengthPixels":I
    double-to-int v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "xMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    sget-object v17, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v10, v15, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 455
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v14, v14, v16

    double-to-int v11, v14

    .line 457
    .local v11, "xTextSpacing":I
    div-int/lit8 v14, v5, 0x2

    sget-object v15, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v4, v14

    .line 458
    .local v4, "x":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    sub-int/2addr v14, v5

    int-to-float v14, v14

    add-float/2addr v4, v14

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    mul-int/lit8 v15, v11, 0x2

    sub-int/2addr v14, v15

    int-to-float v13, v14

    .line 462
    .local v13, "y":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 463
    return-void

    .line 448
    .end local v4    # "x":F
    .end local v5    # "xBarLengthPixels":I
    .end local v8    # "xMetersAdjusted":D
    .end local v10    # "xMsg":Ljava/lang/String;
    .end local v11    # "xTextSpacing":I
    .end local v13    # "y":F
    :cond_1
    int-to-double v8, v7

    goto :goto_0

    .line 461
    .restart local v4    # "x":F
    .restart local v5    # "xBarLengthPixels":I
    .restart local v8    # "xMetersAdjusted":D
    .restart local v10    # "xMsg":Ljava/lang/String;
    .restart local v11    # "xTextSpacing":I
    :cond_2
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v11

    int-to-float v13, v14

    .restart local v13    # "y":F
    goto :goto_1
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v14, v14

    const-wide v16, 0x400451eb851eb852L    # 2.54

    div-double v14, v14, v16

    double-to-int v13, v14

    .line 470
    .local v13, "ydpcm":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v7, v14

    .line 473
    .local v7, "yLen":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v7, 0x2

    sub-int v15, v15, v16

    const/16 v16, 0x0

    .line 474
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 475
    .local v2, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v7, 0x2

    add-int v15, v15, v16

    const/16 v16, 0x0

    .line 476
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 479
    .local v3, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .end local v2    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v8

    .line 481
    .local v8, "yMeters":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v14, :cond_1

    int-to-double v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v10

    .line 483
    .local v10, "yMetersAdjusted":D
    :goto_0
    int-to-double v14, v7

    mul-double/2addr v14, v10

    int-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v6, v14

    .line 486
    .local v6, "yBarLengthPixels":I
    double-to-int v14, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "yMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    sget-object v17, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v9, v15, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 488
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v14, v14, v16

    double-to-int v12, v14

    .line 491
    .local v12, "yTextSpacing":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    mul-int/lit8 v15, v12, 0x2

    sub-int/2addr v14, v15

    int-to-float v4, v14

    .line 493
    .local v4, "x":F
    :goto_1
    div-int/lit8 v14, v6, 0x2

    sget-object v15, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v5, v14

    .line 494
    .local v5, "y":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    sub-int/2addr v14, v6

    int-to-float v14, v14

    add-float/2addr v5, v14

    .line 495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    const/high16 v14, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 499
    return-void

    .line 481
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "yBarLengthPixels":I
    .end local v9    # "yMsg":Ljava/lang/String;
    .end local v10    # "yMetersAdjusted":D
    .end local v12    # "yTextSpacing":I
    :cond_1
    int-to-double v10, v8

    goto :goto_0

    .line 492
    .restart local v6    # "yBarLengthPixels":I
    .restart local v9    # "yMsg":Ljava/lang/String;
    .restart local v10    # "yMetersAdjusted":D
    .restart local v12    # "yTextSpacing":I
    :cond_2
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v12

    int-to-float v4, v14

    .restart local v4    # "x":F
    goto :goto_1
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 428
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 359
    if-eqz p3, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v16

    .line 370
    .local v16, "zoomLevel":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_0

    .line 371
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v14

    .line 373
    .local v14, "projection":Lorg/osmdroid/views/Projection;
    if-eqz v14, :cond_0

    .line 377
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v9

    .line 378
    .local v9, "_screenWidth":I
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v8

    .line 379
    .local v8, "_screenHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    if-ne v8, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    if-eq v9, v2, :cond_d

    :cond_2
    const/4 v15, 0x1

    .line 380
    .local v15, "screenSizeChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iput v8, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 381
    move-object/from16 v0, p0

    iput v9, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v10

    .line 383
    .local v10, "center":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 384
    invoke-interface {v10}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    double-to-int v3, v4

    if-ne v2, v3, :cond_3

    if-eqz v15, :cond_4

    .line 385
    :cond_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 386
    invoke-interface {v10}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 391
    .local v12, "offsetX":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 392
    .local v13, "offsetY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v2, :cond_5

    mul-int/lit8 v13, v13, -0x1

    .line 393
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v2, :cond_6

    mul-int/lit8 v12, v12, -0x1

    .line 394
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_7

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v12, v2

    .line 396
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_8

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v2

    .line 399
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 400
    invoke-virtual {v14}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 401
    int-to-float v2, v12

    int-to-float v3, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 403
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_9

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    .line 407
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 408
    .local v11, "offsetTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 411
    .end local v11    # "offsetTop":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 412
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_b

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 415
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_c

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 418
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 379
    .end local v10    # "center":Lorg/osmdroid/api/IGeoPoint;
    .end local v12    # "offsetX":I
    .end local v13    # "offsetY":I
    .end local v15    # "screenSizeChanged":Z
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 407
    .restart local v10    # "center":Lorg/osmdroid/api/IGeoPoint;
    .restart local v12    # "offsetX":I
    .restart local v13    # "offsetY":I
    .restart local v15    # "screenSizeChanged":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public drawLatitudeScale(Z)V
    .locals 1
    .param p1, "latitude"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 236
    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 1
    .param p1, "longitude"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 246
    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 432
    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v0, 0x0

    .line 690
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 691
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 692
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 693
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 694
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 695
    return-void
.end method

.method protected rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 36
    .param p1, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x400451eb851eb852L    # 2.54

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v21, v0

    .line 507
    .local v21, "xdpcm":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x400451eb851eb852L    # 2.54

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    .line 510
    .local v31, "ydpcm":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    move/from16 v32, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v13, v0

    .line 511
    .local v13, "xLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v23, v0

    .line 514
    .local v23, "yLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    div-int/lit8 v33, v13, 0x2

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v10

    .line 515
    .local v10, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    div-int/lit8 v33, v13, 0x2

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v11

    .line 518
    .local v11, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v10, Lorg/osmdroid/util/GeoPoint;

    .end local v10    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v10, v11}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v14

    .line 520
    .local v14, "xMeters":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    int-to-double v0, v14

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v16

    .line 522
    .local v16, "xMetersAdjusted":D
    :goto_0
    int-to-double v0, v13

    move-wide/from16 v32, v0

    mul-double v32, v32, v16

    int-to-double v0, v14

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v12, v0

    .line 525
    .local v12, "xBarLengthPixels":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    div-int/lit8 v34, v23, 0x2

    sub-int v33, v33, v34

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v10

    .line 526
    .restart local v10    # "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    div-int/lit8 v34, v23, 0x2

    add-int v33, v33, v34

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v11

    .line 529
    check-cast v10, Lorg/osmdroid/util/GeoPoint;

    .end local v10    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v10, v11}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v24

    .line 531
    .local v24, "yMeters":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v26

    .line 533
    .local v26, "yMetersAdjusted":D
    :goto_1
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v26

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v22, v0

    .line 536
    .local v22, "yBarLengthPixels":I
    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v15

    .line 537
    .local v15, "xMsg":Ljava/lang/String;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 538
    .local v19, "xTextRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 539
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v20, v0

    .line 542
    .local v20, "xTextSpacing":I
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v25

    .line 543
    .local v25, "yMsg":Ljava/lang/String;
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 544
    .local v29, "yTextRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 545
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v30, v0

    .line 546
    .local v30, "yTextSpacing":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 547
    .local v18, "xTextHeight":I
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v28

    .line 549
    .local v28, "yTextHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Path;->rewind()V

    .line 552
    const/4 v6, 0x0

    .line 553
    .local v6, "barOriginX":I
    const/4 v7, 0x0

    .line 554
    .local v7, "barOriginY":I
    move v8, v12

    .line 555
    .local v8, "barToX":I
    move/from16 v9, v22

    .line 556
    .local v9, "barToY":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 557
    mul-int/lit8 v20, v20, -0x1

    .line 558
    mul-int/lit8 v18, v18, -0x1

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v7

    .line 560
    sub-int v9, v7, v22

    .line 563
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 564
    mul-int/lit8 v30, v30, -0x1

    .line 565
    mul-int/lit8 v28, v28, -0x1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v6

    .line 567
    sub-int v8, v6, v12

    .line 570
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v8

    move/from16 v33, v0

    add-int v34, v7, v18

    mul-int/lit8 v35, v20, 0x2

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->moveTo(FF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v8

    move/from16 v33, v0

    int-to-float v0, v7

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    int-to-float v0, v7

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    move/from16 v32, v0

    if-nez v32, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    add-int v34, v7, v18

    mul-int/lit8 v35, v20, 0x2

    add-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 579
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    add-int v33, v7, v18

    mul-int/lit8 v34, v20, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 582
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    move/from16 v32, v0

    if-nez v32, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    add-int v33, v6, v28

    mul-int/lit8 v34, v30, 0x2

    add-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    int-to-float v0, v7

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->moveTo(FF)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    int-to-float v0, v7

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 589
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v32, v0

    add-int v33, v6, v28

    mul-int/lit8 v34, v30, 0x2

    add-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Path;->lineTo(FF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    add-int v33, v6, v28

    mul-int/lit8 v34, v30, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 594
    :cond_5
    return-void

    .line 520
    .end local v6    # "barOriginX":I
    .end local v7    # "barOriginY":I
    .end local v8    # "barToX":I
    .end local v9    # "barToY":I
    .end local v12    # "xBarLengthPixels":I
    .end local v15    # "xMsg":Ljava/lang/String;
    .end local v16    # "xMetersAdjusted":D
    .end local v18    # "xTextHeight":I
    .end local v19    # "xTextRect":Landroid/graphics/Rect;
    .end local v20    # "xTextSpacing":I
    .end local v22    # "yBarLengthPixels":I
    .end local v24    # "yMeters":I
    .end local v25    # "yMsg":Ljava/lang/String;
    .end local v26    # "yMetersAdjusted":D
    .end local v28    # "yTextHeight":I
    .end local v29    # "yTextRect":Landroid/graphics/Rect;
    .end local v30    # "yTextSpacing":I
    :cond_6
    int-to-double v0, v14

    move-wide/from16 v16, v0

    goto/16 :goto_0

    .line 531
    .restart local v12    # "xBarLengthPixels":I
    .restart local v16    # "xMetersAdjusted":D
    .restart local v24    # "yMeters":I
    :cond_7
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_1
.end method

.method protected scaleBarLengthText(I)Ljava/lang/String;
    .locals 12
    .param p1, "meters"    # I

    .prologue
    const-wide v6, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 651
    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 654
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    .line 655
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v4, [Ljava/lang/Object;

    div-int/lit16 v3, p1, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 656
    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    .line 657
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    .line 658
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_meters:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :pswitch_0
    int-to-double v0, p1

    const-wide v2, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 664
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409925604189374cL    # 1609.344

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 668
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x40641de69ad42c3dL    # 160.9344

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    .line 669
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 672
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 675
    :pswitch_1
    int-to-double v0, p1

    const-wide v2, 0x40c2160000000000L    # 9260.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    .line 676
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409cf00000000000L    # 1852.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 677
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 678
    :cond_4
    int-to-double v0, p1

    const-wide v2, 0x4077266666666666L    # 370.4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    .line 679
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x4067266666666666L    # 185.2

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    .line 680
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 682
    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 682
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAlignBottom(Z)V
    .locals 1
    .param p1, "alignBottom"    # Z

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 264
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 266
    return-void
.end method

.method public setAlignRight(Z)V
    .locals 1
    .param p1, "alignRight"    # Z

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 270
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 272
    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "pBgPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 328
    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pBarPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pBarPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 294
    return-void
.end method

.method public setCentred(Z)V
    .locals 3
    .param p1, "centred"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 257
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 258
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 260
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 258
    goto :goto_1
.end method

.method public setEnableAdjustLength(Z)V
    .locals 1
    .param p1, "adjustLength"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 338
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    return-void
.end method

.method public setMaxLength(F)V
    .locals 1
    .param p1, "pMaxLengthInCm"    # F

    .prologue
    .line 349
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 351
    return-void
.end method

.method public setMinZoom(I)V
    .locals 0
    .param p1, "zoom"    # I

    .prologue
    .line 176
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    .line 177
    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 189
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 190
    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 191
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pTextPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTextPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 317
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 1
    .param p1, "unitsOfMeasure"    # Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 219
    return-void
.end method
