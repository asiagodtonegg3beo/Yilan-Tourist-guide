.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "ScreenDensityUtil.java"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenDensityUtil"

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 46
    .local v2, "dm":Landroid/util/DisplayMetrics;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 47
    .local v9, "rawDims":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 49
    iget v13, v9, Landroid/graphics/Point;->x:I

    .line 50
    .local v13, "width":I
    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 53
    .local v3, "height":I
    if-ge v13, v3, :cond_1

    .line 54
    move v11, v13

    .line 55
    .local v11, "shortSize":I
    move v4, v3

    .line 60
    .local v4, "longSize":I
    :goto_0
    const/high16 v14, 0x43a00000    # 320.0f

    iget v15, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v7, v14

    .line 61
    .local v7, "newShortSize":I
    int-to-float v14, v4

    int-to-float v15, v11

    div-float v1, v14, v15

    .line 62
    .local v1, "aspect":F
    const v14, 0x3fe3bbbc

    cmpl-float v14, v1, v14

    if-lez v14, :cond_0

    .line 63
    const v1, 0x3fe3bbbc

    .line 65
    :cond_0
    int-to-float v14, v7

    mul-float/2addr v14, v1

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v6, v14

    .line 67
    .local v6, "newLongSize":I
    if-ge v13, v3, :cond_2

    .line 68
    move v8, v7

    .line 69
    .local v8, "newWidth":I
    move v5, v6

    .line 75
    .local v5, "newHeight":I
    :goto_1
    int-to-float v14, v13

    int-to-float v15, v8

    div-float v12, v14, v15

    .line 76
    .local v12, "sw":F
    int-to-float v14, v3

    int-to-float v15, v5

    div-float v10, v14, v15

    .line 78
    .local v10, "sh":F
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const v16, 0x3fe3bbbc

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    return v14

    .line 57
    .end local v1    # "aspect":F
    .end local v4    # "longSize":I
    .end local v5    # "newHeight":I
    .end local v6    # "newLongSize":I
    .end local v7    # "newShortSize":I
    .end local v8    # "newWidth":I
    .end local v10    # "sh":F
    .end local v11    # "shortSize":I
    .end local v12    # "sw":F
    :cond_1
    move v11, v3

    .line 58
    .restart local v11    # "shortSize":I
    move v4, v13

    .restart local v4    # "longSize":I
    goto :goto_0

    .line 71
    .restart local v1    # "aspect":F
    .restart local v6    # "newLongSize":I
    .restart local v7    # "newShortSize":I
    :cond_2
    move v8, v6

    .line 72
    .restart local v8    # "newWidth":I
    move v5, v7

    .restart local v5    # "newHeight":I
    goto :goto_1
.end method

.method private static getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 90
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 92
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 94
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v5

    .line 95
    .local v5, "sdkLevel":I
    const/16 v7, 0x18

    if-lt v5, v7, :cond_0

    .line 97
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 99
    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p1, Landroid/graphics/Point;->y:I

    .line 130
    :goto_0
    return-void

    .line 100
    :cond_0
    const/16 v7, 0x11

    if-lt v5, v7, :cond_1

    .line 102
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/JellybeanUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 103
    :cond_1
    const/16 v7, 0xa

    if-le v5, v7, :cond_2

    .line 108
    :try_start_0
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 109
    .local v2, "getRawH":Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 111
    .local v3, "getRawW":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 112
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v7, "ScreenDensityUtil"

    const-string v8, "Error reading raw screen size"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "getRawH":Ljava/lang/reflect/Method;
    .end local v3    # "getRawW":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "ScreenDensityUtil"

    const-string v8, "Error reading raw screen size"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "getRawH":Ljava/lang/reflect/Method;
    .restart local v3    # "getRawW":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v7, "ScreenDensityUtil"

    const-string v8, "Error reading raw screen size"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "ScreenDensityUtil"

    const-string v8, "Error reading raw screen size"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "getRawH":Ljava/lang/reflect/Method;
    .end local v3    # "getRawW":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, p1, Landroid/graphics/Point;->x:I

    .line 127
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    iput v7, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method
