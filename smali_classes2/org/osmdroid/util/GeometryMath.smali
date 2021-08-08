.class public Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295

.field public static final RAD2DEG:D = 57.29577951308232


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Max4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static Min4(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 57
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "angle"    # F
    .param p2, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 50
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "angle"    # F
    .param p4, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 28
    if-nez p4, :cond_0

    .line 29
    new-instance p4, Landroid/graphics/Rect;

    .end local p4    # "reuse":Landroid/graphics/Rect;
    invoke-direct/range {p4 .. p4}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .restart local p4    # "reuse":Landroid/graphics/Rect;
    :cond_0
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v42, v44, v46

    .line 32
    .local v42, "theta":D
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    .line 33
    .local v40, "sinTheta":D
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 34
    .local v22, "cosTheta":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    sub-int v44, v44, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 35
    .local v24, "dx1":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    sub-int v44, v44, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 36
    .local v32, "dy1":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v24, v22

    sub-double v44, v44, v46

    mul-double v46, v32, v40

    add-double v6, v44, v46

    .line 37
    .local v6, "newX1":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v24, v40

    sub-double v44, v44, v46

    mul-double v46, v32, v22

    sub-double v14, v44, v46

    .line 38
    .local v14, "newY1":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v44, v0

    sub-int v44, v44, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 39
    .local v26, "dx2":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    sub-int v44, v44, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v34, v0

    .line 40
    .local v34, "dy2":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v26, v22

    sub-double v44, v44, v46

    mul-double v46, v34, v40

    add-double v8, v44, v46

    .line 41
    .local v8, "newX2":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v26, v40

    sub-double v44, v44, v46

    mul-double v46, v34, v22

    sub-double v16, v44, v46

    .line 42
    .local v16, "newY2":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    sub-int v44, v44, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 43
    .local v28, "dx3":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    sub-int v44, v44, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v36, v0

    .line 44
    .local v36, "dy3":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v28, v22

    sub-double v44, v44, v46

    mul-double v46, v36, v40

    add-double v10, v44, v46

    .line 45
    .local v10, "newX3":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v28, v40

    sub-double v44, v44, v46

    mul-double v46, v36, v22

    sub-double v18, v44, v46

    .line 46
    .local v18, "newY3":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v44, v0

    sub-int v44, v44, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v30, v0

    .line 47
    .local v30, "dx4":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    sub-int v44, v44, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 48
    .local v38, "dy4":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v30, v22

    sub-double v44, v44, v46

    mul-double v46, v38, v40

    add-double v12, v44, v46

    .line 49
    .local v12, "newX4":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v30, v40

    sub-double v44, v44, v46

    mul-double v46, v38, v22

    sub-double v20, v44, v46

    .line 50
    .local v20, "newY4":D
    invoke-static/range {v6 .. v13}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    invoke-static/range {v14 .. v21}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v45, v0

    .line 51
    invoke-static/range {v6 .. v13}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v46, v0

    invoke-static/range {v14 .. v21}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-int v0, v0

    move/from16 v47, v0

    .line 50
    move-object/from16 v0, p4

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    return-object p4
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerPoint"    # Landroid/graphics/Point;
    .param p2, "angle"    # F
    .param p3, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, v1, p2, p3}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
