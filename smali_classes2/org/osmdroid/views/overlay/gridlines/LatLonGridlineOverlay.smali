.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;
.super Ljava/lang/Object;
.source "LatLonGridlineOverlay.java"


# static fields
.field public static DEBUG:Z

.field public static DEBUG2:Z

.field public static backgroundColor:I

.field static final df:Ljava/text/DecimalFormat;

.field public static fontColor:I

.field public static fontSizeDp:S

.field public static lineColor:I

.field public static lineWidth:F

.field private static multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x1000000

    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    .line 28
    sput v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    .line 29
    const/4 v0, -0x1

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    .line 30
    const/16 v0, 0x18

    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    .line 31
    sput v3, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    .line 32
    sput v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    .line 34
    sput-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 35
    sput-boolean v4, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    .line 38
    sput v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1
    .param p0, "m"    # Lorg/osmdroid/views/overlay/Marker;

    .prologue
    .line 41
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelBackgroundColor(I)V

    .line 42
    sget-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelFontSize(I)V

    .line 43
    sget v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setTextLabelForegroundColor(I)V

    .line 44
    return-void
.end method

.method private static getIncrementor(I)D
    .locals 4
    .param p0, "zoom"    # I

    .prologue
    .line 417
    packed-switch p0, :pswitch_data_0

    .line 465
    const-wide v0, 0x3ef999999999999aL    # 2.44140625E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    .line 420
    :pswitch_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 422
    :pswitch_1
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 424
    :pswitch_2
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 426
    :pswitch_3
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 428
    :pswitch_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 431
    :pswitch_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 433
    :pswitch_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 435
    :pswitch_7
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 437
    :pswitch_8
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 441
    :pswitch_9
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 443
    :pswitch_a
    const-wide v0, 0x3fa999999999999aL    # 0.05

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 445
    :pswitch_b
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 447
    :pswitch_c
    const-wide v0, 0x3f8999999999999aL    # 0.0125

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 449
    :pswitch_d
    const-wide v0, 0x3f7999999999999aL    # 0.00625

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 451
    :pswitch_e
    const-wide v0, 0x3f6999999999999aL    # 0.003125

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 453
    :pswitch_f
    const-wide v0, 0x3f5999999999999aL    # 0.0015625

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 455
    :pswitch_10
    const-wide v0, 0x3f4999999999999aL    # 7.8125E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 457
    :pswitch_11
    const-wide v0, 0x3f3999999999999aL    # 3.90625E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 459
    :pswitch_12
    const-wide v0, 0x3f2999999999999aL    # 1.953125E-4

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 461
    :pswitch_13
    const-wide v0, 0x3f1999999999999aL    # 9.765625E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 463
    :pswitch_14
    const-wide v0, 0x3f0999999999999aL    # 4.8828125E-5

    sget v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->multiplier:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static getLatLonGrid(Landroid/content/Context;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/FolderOverlay;
    .locals 42
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v6

    .line 48
    .local v6, "box":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v31

    .line 50
    .local v31, "zoom":I
    const/16 v38, 0x1

    sput-boolean v38, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    .line 53
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_0

    .line 54
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "######### getLatLonGrid "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v11, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v11}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 57
    .local v11, "gridlines":Lorg/osmdroid/views/overlay/FolderOverlay;
    const/16 v38, 0x2

    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 276
    :cond_1
    return-object v11

    .line 93
    :cond_2
    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v18

    .line 94
    .local v18, "north":D
    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v28

    .line 95
    .local v28, "south":D
    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v8

    .line 96
    .local v8, "east":D
    invoke-virtual {v6}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v34

    .line 98
    .local v34, "west":D
    const-wide/16 v20, 0x0

    .line 100
    .local v20, "north_south_delta":D
    cmpg-double v38, v18, v28

    if-ltz v38, :cond_1

    .line 104
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_3

    .line 105
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "N "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " S "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_3
    const/4 v7, 0x0

    .line 109
    .local v7, "dateLineVisible":Z
    const-wide/16 v38, 0x0

    cmpg-double v38, v8, v38

    if-gez v38, :cond_4

    const-wide/16 v38, 0x0

    cmpl-double v38, v34, v38

    if-lez v38, :cond_4

    .line 111
    const/4 v7, 0x1

    .line 114
    :cond_4
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_5

    .line 115
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "delta "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_5
    invoke-static/range {v31 .. v31}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v16

    .line 126
    .local v16, "incrementor":D
    move-wide/from16 v0, v18

    move-wide/from16 v2, v28

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsNS(DDI)[D

    move-result-object v30

    .line 127
    .local v30, "startend":[D
    const/16 v38, 0x0

    aget-wide v24, v30, v38

    .line 128
    .local v24, "sn_start_point":D
    const/16 v38, 0x1

    aget-wide v26, v30, v38

    .line 131
    .local v26, "sn_stop_point":D
    move-wide/from16 v14, v24

    .local v14, "i":D
    :goto_0
    cmpg-double v38, v14, v26

    if-gtz v38, :cond_8

    .line 132
    new-instance v22, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v22 .. v22}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 133
    .local v22, "p":Lorg/osmdroid/views/overlay/Polyline;
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 134
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 135
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v23, "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v12, v14, v15, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 139
    .local v12, "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-wide/from16 v0, v34

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 141
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_6

    .line 143
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "drawing NS "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", zoom "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_6
    invoke-virtual/range {v22 .. v23}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 148
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 151
    new-instance v13, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 152
    .local v13, "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v13}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 153
    const-wide/16 v38, 0x0

    cmpl-double v38, v14, v38

    if-lez v38, :cond_7

    .line 154
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "N"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 159
    :goto_1
    const/16 v38, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    new-instance v38, Lorg/osmdroid/util/GeoPoint;

    add-double v40, v34, v16

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v14, v15, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 161
    invoke-virtual {v11, v13}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 131
    add-double v14, v14, v16

    goto/16 :goto_0

    .line 156
    :cond_7
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "S"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_8
    move-wide/from16 v0, v34

    move/from16 v2, v31

    invoke-static {v0, v1, v8, v9, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getStartEndPointsWE(DDI)[D

    move-result-object v10

    .line 165
    .local v10, "ew":[D
    const/16 v38, 0x1

    aget-wide v32, v10, v38

    .line 166
    .local v32, "we_startpoint":D
    const/16 v38, 0x0

    aget-wide v36, v10, v38

    .line 169
    .local v36, "ws_stoppoint":D
    move-wide/from16 v14, v32

    :goto_2
    cmpg-double v38, v14, v36

    if-gtz v38, :cond_b

    .line 170
    new-instance v22, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v22 .. v22}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 171
    .restart local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 172
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 173
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .restart local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v0, v18

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 175
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-wide/from16 v0, v28

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 177
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual/range {v22 .. v23}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 180
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_9

    .line 181
    sget-object v38, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "drawing EW "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", zoom "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 186
    new-instance v13, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 187
    .restart local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v13}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 188
    const/high16 v38, -0x3d4c0000    # -90.0f

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 189
    const-wide/16 v38, 0x0

    cmpl-double v38, v14, v38

    if-lez v38, :cond_a

    .line 190
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "E"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 195
    :goto_3
    const/16 v38, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v38, Lorg/osmdroid/util/GeoPoint;

    add-double v40, v28, v16

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 197
    invoke-virtual {v11, v13}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 169
    add-double v14, v14, v16

    goto/16 :goto_2

    .line 192
    :cond_a
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "W"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 199
    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_b
    if-eqz v7, :cond_1

    .line 201
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v38, :cond_c

    .line 202
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DATELINE zoom "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    :cond_c
    move-wide/from16 v14, v32

    :goto_4
    const-wide v38, 0x4066800000000000L    # 180.0

    cmpg-double v38, v14, v38

    if-gtz v38, :cond_e

    .line 207
    new-instance v22, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v22 .. v22}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 208
    .restart local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 209
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 210
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v0, v18

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 212
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-wide/from16 v0, v28

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 214
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual/range {v22 .. v23}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 217
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v38, :cond_d

    .line 218
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DATELINE drawing NS"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", zoom "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 206
    add-double v14, v14, v16

    goto/16 :goto_4

    .line 224
    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_e
    const-wide v14, -0x3f99800000000000L    # -180.0

    :goto_5
    cmpg-double v38, v14, v36

    if-gtz v38, :cond_11

    .line 225
    new-instance v22, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct/range {v22 .. v22}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 226
    .restart local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 227
    sget v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 228
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .restart local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v0, v18

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 230
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-wide/from16 v0, v28

    invoke-direct {v12, v0, v1, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 232
    .restart local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual/range {v22 .. v23}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 235
    sget-boolean v38, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    if-eqz v38, :cond_f

    .line 236
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DATELINE drawing EW"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", zoom "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    :cond_f
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 241
    new-instance v13, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 242
    .restart local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v13}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 243
    const/high16 v38, -0x3d4c0000    # -90.0f

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 244
    const-wide/16 v38, 0x0

    cmpl-double v38, v14, v38

    if-lez v38, :cond_10

    .line 245
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "E"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 250
    :goto_6
    const/16 v38, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    new-instance v38, Lorg/osmdroid/util/GeoPoint;

    add-double v40, v28, v16

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 252
    invoke-virtual {v11, v13}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 224
    add-double v14, v14, v16

    goto/16 :goto_5

    .line 247
    :cond_10
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "W"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_6

    .line 256
    .end local v12    # "gx":Lorg/osmdroid/util/GeoPoint;
    .end local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    .end local v22    # "p":Lorg/osmdroid/views/overlay/Polyline;
    .end local v23    # "pts":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_11
    move-wide/from16 v14, v32

    :goto_7
    const-wide v38, 0x4066800000000000L    # 180.0

    cmpg-double v38, v14, v38

    if-gez v38, :cond_1

    .line 258
    new-instance v13, Lorg/osmdroid/views/overlay/Marker;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 260
    .restart local v13    # "m":Lorg/osmdroid/views/overlay/Marker;
    invoke-static {v13}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->applyMarkerAttributes(Lorg/osmdroid/views/overlay/Marker;)V

    .line 261
    const/high16 v38, -0x3d4c0000    # -90.0f

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    .line 262
    const-wide/16 v38, 0x0

    cmpl-double v38, v14, v38

    if-lez v38, :cond_12

    .line 263
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "E"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 268
    :goto_8
    const/16 v38, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 269
    new-instance v38, Lorg/osmdroid/util/GeoPoint;

    add-double v40, v28, v16

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 270
    invoke-virtual {v11, v13}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    .line 256
    add-double v14, v14, v16

    goto :goto_7

    .line 265
    :cond_12
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v39, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, v39

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "W"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static getStartEndPointsNS(DDI)[D
    .locals 16
    .param p0, "north"    # D
    .param p2, "south"    # D
    .param p4, "zoom"    # I

    .prologue
    .line 289
    const/16 v13, 0xa

    move/from16 v0, p4

    if-ge v0, v13, :cond_4

    .line 290
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 291
    .local v6, "sn_start_point":D
    invoke-static/range {p4 .. p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v4

    .line 294
    .local v4, "incrementor":D
    const-wide v10, -0x3fa9800000000000L    # -90.0

    .line 295
    .local v10, "x":D
    :goto_0
    cmpg-double v13, v10, v6

    if-gez v13, :cond_0

    .line 296
    add-double/2addr v10, v4

    goto :goto_0

    .line 297
    :cond_0
    move-wide v6, v10

    .line 299
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 300
    .local v8, "sn_stop_point":D
    const-wide v10, 0x4056800000000000L    # 90.0

    .line 301
    :goto_1
    cmpl-double v13, v10, v8

    if-lez v13, :cond_1

    .line 302
    sub-double/2addr v10, v4

    goto :goto_1

    .line 303
    :cond_1
    move-wide v8, v10

    .line 305
    const-wide v14, 0x4056800000000000L    # 90.0

    cmpl-double v13, v8, v14

    if-lez v13, :cond_2

    .line 306
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 308
    :cond_2
    const-wide v14, -0x3fa9800000000000L    # -90.0

    cmpg-double v13, v6, v14

    if-gez v13, :cond_3

    .line 309
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 311
    :cond_3
    const/4 v13, 0x2

    new-array v13, v13, [D

    const/4 v14, 0x0

    aput-wide v6, v13, v14

    const/4 v14, 0x1

    aput-wide v8, v13, v14

    .line 340
    .end local v4    # "incrementor":D
    .end local v10    # "x":D
    :goto_2
    return-object v13

    .line 314
    .end local v6    # "sn_start_point":D
    .end local v8    # "sn_stop_point":D
    :cond_4
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 315
    .restart local v6    # "sn_start_point":D
    const-wide/16 v14, 0x0

    cmpl-double v13, p2, v14

    if-lez v13, :cond_5

    .line 316
    const-wide/16 v6, 0x0

    .line 318
    :cond_5
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 319
    .restart local v8    # "sn_stop_point":D
    const-wide/16 v14, 0x0

    cmpg-double v13, p0, v14

    if-gez v13, :cond_6

    .line 320
    const-wide/16 v8, 0x0

    .line 323
    :cond_6
    const/4 v12, 0x2

    .local v12, "xx":I
    :goto_3
    move/from16 v0, p4

    if-gt v12, v0, :cond_a

    .line 324
    invoke-static {v12}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v2

    .line 325
    .local v2, "inc":D
    :cond_7
    :goto_4
    sub-double v14, p2, v2

    cmpg-double v13, v6, v14

    if-gez v13, :cond_8

    .line 326
    add-double/2addr v6, v2

    .line 327
    sget-boolean v13, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 328
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "south "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 332
    :cond_8
    :goto_5
    add-double v14, p0, v2

    cmpl-double v13, v8, v14

    if-lez v13, :cond_9

    .line 333
    sub-double/2addr v8, v2

    .line 334
    sget-boolean v13, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 335
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "north "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 323
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 340
    .end local v2    # "inc":D
    :cond_a
    const/4 v13, 0x2

    new-array v13, v13, [D

    const/4 v14, 0x0

    aput-wide v6, v13, v14

    const/4 v14, 0x1

    aput-wide v8, v13, v14

    goto :goto_2
.end method

.method private static getStartEndPointsWE(DDI)[D
    .locals 20
    .param p0, "west"    # D
    .param p2, "east"    # D
    .param p4, "zoom"    # I

    .prologue
    .line 355
    invoke-static/range {p4 .. p4}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v6

    .line 357
    .local v6, "incrementor":D
    const/16 v17, 0xa

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 358
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 359
    .local v8, "we_startpoint":D
    const-wide v14, 0x4066800000000000L    # 180.0

    .line 360
    .local v14, "x":D
    :goto_0
    cmpl-double v17, v14, v8

    if-lez v17, :cond_0

    .line 361
    sub-double/2addr v14, v6

    goto :goto_0

    .line 362
    :cond_0
    move-wide v8, v14

    .line 364
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    .line 365
    .local v12, "ws_stoppoint":D
    const-wide v14, -0x3f99800000000000L    # -180.0

    .line 366
    :goto_1
    cmpg-double v17, v14, v12

    if-gez v17, :cond_1

    .line 367
    add-double/2addr v14, v6

    goto :goto_1

    .line 368
    :cond_1
    const-wide v18, -0x3f99800000000000L    # -180.0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_2

    .line 369
    const-wide v8, -0x3f99800000000000L    # -180.0

    .line 371
    :cond_2
    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v17, v12, v18

    if-lez v17, :cond_3

    .line 372
    const-wide v12, 0x4066800000000000L    # 180.0

    .line 374
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v12, v17, v18

    const/16 v18, 0x1

    aput-wide v8, v17, v18

    .line 403
    .end local v8    # "we_startpoint":D
    .end local v12    # "ws_stoppoint":D
    .end local v14    # "x":D
    :goto_2
    return-object v17

    .line 377
    :cond_4
    const-wide v10, -0x3f99800000000000L    # -180.0

    .line 378
    .local v10, "west_start_point":D
    const-wide/16 v18, 0x0

    cmpl-double v17, p0, v18

    if-lez v17, :cond_5

    .line 379
    const-wide/16 v10, 0x0

    .line 381
    :cond_5
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 382
    .local v2, "easter_stop_point":D
    const-wide/16 v18, 0x0

    cmpg-double v17, p2, v18

    if-gez v17, :cond_6

    .line 383
    const-wide/16 v2, 0x0

    .line 386
    :cond_6
    const/16 v16, 0x2

    .local v16, "xx":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_9

    .line 387
    invoke-static/range {v16 .. v16}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->getIncrementor(I)D

    move-result-wide v4

    .line 388
    .local v4, "inc":D
    :goto_4
    add-double v18, p2, v4

    cmpl-double v17, v2, v18

    if-lez v17, :cond_7

    .line 389
    sub-double/2addr v2, v4

    goto :goto_4

    .line 393
    :cond_7
    :goto_5
    sub-double v18, p0, v4

    cmpg-double v17, v10, v18

    if-gez v17, :cond_8

    .line 394
    add-double/2addr v10, v4

    .line 395
    sget-boolean v17, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v17, :cond_7

    .line 396
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "west "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 386
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 400
    .end local v4    # "inc":D
    :cond_9
    sget-boolean v17, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    if-eqz v17, :cond_a

    .line 401
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "return EW set as "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v2, v17, v18

    const/16 v18, 0x1

    aput-wide v10, v17, v18

    goto/16 :goto_2
.end method

.method public static setDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    .line 475
    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineColor:I

    .line 476
    const/4 v0, -0x1

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontColor:I

    .line 477
    sput v1, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->backgroundColor:I

    .line 478
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->lineWidth:F

    .line 479
    const/16 v0, 0x20

    sput-short v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->fontSizeDp:S

    .line 480
    sput-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG:Z

    .line 481
    sput-boolean v2, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay;->DEBUG2:Z

    .line 482
    return-void
.end method
