.class public Lorg/metalev/multitouch/controller/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;,
        Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field public static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0x14

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPointerId:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIds:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 211
    const/4 v2, 0x6

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    .line 212
    const/16 v2, 0x8

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    .line 215
    const/4 v1, 0x0

    .line 218
    .local v1, "succeeded":Z
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 219
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    .line 220
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 221
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 222
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 224
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    .line 225
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v1, 0x1

    .line 230
    :goto_0
    sput-boolean v1, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    .line 231
    sget-boolean v2, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    .line 235
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_UP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    .line 236
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :cond_0
    :goto_1
    new-array v2, v7, [F

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    .line 245
    new-array v2, v7, [F

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    .line 246
    new-array v2, v7, [F

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    .line 247
    new-array v2, v7, [I

    sput-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    .local p1, "objectCanvas":Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;, "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .param p2, "handleSingleTouchEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    .local p1, "objectCanvas":Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;, "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 141
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 178
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 179
    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 180
    iput-boolean p2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    .line 181
    iput-object p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    .line 182
    return-void
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    const/high16 v2, 0x3f800000    # 1.0f

    .line 332
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-interface {v1, v3, v4}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V

    .line 343
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    div-float v0, v2, v1

    .line 344
    .local v0, "currScaleInv":F
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    .line 345
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$500(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    .line 346
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$600(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    .line 347
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    .line 348
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$700(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    .line 349
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$800(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    .line 350
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$900(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    goto :goto_0

    .line 343
    .end local v0    # "currScaleInv":F
    :cond_1
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v1

    goto :goto_1
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 12
    .param p1, "pointerCount"    # I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "pressure"    # [F
    .param p5, "pointerIds"    # [I
    .param p6, "action"    # I
    .param p7, "down"    # Z
    .param p8, "eventTime"    # J

    .prologue
    .line 318
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-object v10, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 319
    .local v10, "tmp":Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 320
    iput-object v10, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 322
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$300(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 323
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchController()V

    .line 324
    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    .line 125
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    .line 126
    const v2, 0x41aa6666    # 21.3f

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    .line 127
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    .line 128
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    .line 129
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$200(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    .line 130
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    goto :goto_3
.end method

.method private multiTouchController()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    const/4 v1, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const-wide/16 v2, 0x14

    .line 391
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 402
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    .line 403
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 405
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 417
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 423
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 425
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 426
    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 433
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto :goto_0

    .line 436
    :cond_3
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 448
    :cond_4
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 450
    iput v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 451
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    .line 455
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    .line 457
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 459
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 460
    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 465
    :cond_6
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 466
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 467
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .line 468
    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mPrevPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 470
    :cond_7
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 471
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    .line 472
    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 474
    :cond_8
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->access$1000(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    .line 476
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    .line 479
    :cond_9
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 12

    .prologue
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    .line 356
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    .local v7, "currScale":F
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/metalev/multitouch/controller/MultiTouchController;->extractCurrPtInfo()V

    .line 362
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtX:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosX:F

    mul-float/2addr v9, v7

    sub-float v1, v0, v9

    .line 363
    .local v1, "newPosX":F
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtY:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startPosY:F

    mul-float/2addr v9, v7

    sub-float v2, v0, v9

    .line 364
    .local v2, "newPosY":F
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleOverPinchDiam:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtDiam:F

    mul-float v3, v0, v9

    .line 365
    .local v3, "newScale":F
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleXOverPinchWidth:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtWidth:F

    mul-float v4, v0, v9

    .line 366
    .local v4, "newScaleX":F
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startScaleYOverPinchHeight:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtHeight:F

    mul-float v5, v0, v9

    .line 367
    .local v5, "newScaleY":F
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->startAngleMinusPinchAngle:F

    iget v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPtAng:F

    add-float v6, v0, v9

    .line 370
    .local v6, "newAngle":F
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-virtual/range {v0 .. v6}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFFFFF)V

    .line 372
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->objectCanvas:Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v9, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v10, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    iget-object v11, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrPt:Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    invoke-interface {v0, v9, v10, v11}, Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;->setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z

    move-result v8

    .line 373
    .local v8, "success":Z
    if-nez v8, :cond_0

    goto :goto_0

    .line 360
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newScale":F
    .end local v4    # "newScaleX":F
    .end local v5    # "newScaleY":F
    .end local v6    # "newAngle":F
    .end local v7    # "currScale":F
    .end local v8    # "success":Z
    :cond_3
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mCurrXform:Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F

    move-result v7

    goto :goto_1
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 489
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    return v0
.end method

.method public isPinching()Z
    .locals 2

    .prologue
    .line 379
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    :try_start_0
    sget-boolean v2, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 256
    .local v3, "pointerCount":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->mMode:I

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1

    .line 258
    const/4 v2, 0x0

    .line 309
    .end local v3    # "pointerCount":I
    :goto_1
    return v2

    .line 253
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 263
    .restart local v3    # "pointerCount":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 264
    .local v12, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    div-int v15, v2, v3

    .line 265
    .local v15, "histLen":I
    const/4 v14, 0x0

    .local v14, "histIdx":I
    :goto_2
    if-gt v14, v15, :cond_10

    .line 267
    if-ge v14, v15, :cond_4

    const/16 v17, 0x1

    .line 268
    .local v17, "processingHist":Z
    :goto_3
    sget-boolean v2, Lorg/metalev/multitouch/controller/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_8

    .line 274
    :cond_2
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    const/4 v5, 0x0

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    :goto_4
    aput v2, v4, v5

    .line 275
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    const/4 v5, 0x0

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    :goto_5
    aput v2, v4, v5

    .line 276
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    const/4 v5, 0x0

    if-eqz v17, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v2

    :goto_6
    aput v2, v4, v5

    .line 297
    :cond_3
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    sget-object v5, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    sget-object v6, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    sget-object v7, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    if-eqz v17, :cond_c

    const/4 v8, 0x2

    :goto_7
    if-eqz v17, :cond_d

    const/4 v9, 0x1

    :goto_8
    if-eqz v17, :cond_f

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    :goto_9
    move-object/from16 v2, p0

    .line 297
    invoke-direct/range {v2 .. v11}, Lorg/metalev/multitouch/controller/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V

    .line 265
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 267
    .end local v17    # "processingHist":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 274
    .restart local v17    # "processingHist":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    goto :goto_4

    .line 275
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    goto :goto_5

    .line 276
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    goto :goto_6

    .line 281
    :cond_8
    const/16 v2, 0x14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 284
    .local v16, "numPointers":I
    const/16 v19, 0x0

    .local v19, "ptrIdx":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 285
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 286
    .local v18, "ptrId":I
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->pointerIds:[I

    aput v18, v2, v19

    .line 290
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->xVals:[F

    if-eqz v17, :cond_9

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_b
    check-cast v2, Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v19

    .line 291
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->yVals:[F

    if-eqz v17, :cond_a

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_c
    check-cast v2, Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v19

    .line 292
    sget-object v4, Lorg/metalev/multitouch/controller/MultiTouchController;->pressureVals:[F

    if-eqz v17, :cond_b

    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 293
    :goto_d
    check-cast v2, Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    .line 292
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v19

    .line 284
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 290
    :cond_9
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    .line 291
    :cond_a
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    .line 292
    :cond_b
    sget-object v2, Lorg/metalev/multitouch/controller/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 293
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    .end local v16    # "numPointers":I
    .end local v18    # "ptrId":I
    .end local v19    # "ptrIdx":I
    :cond_c
    move v8, v12

    .line 297
    goto/16 :goto_7

    :cond_d
    const/4 v2, 0x1

    if-eq v12, v2, :cond_e

    const/4 v2, 0x1

    sget v9, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v12

    sget v9, Lorg/metalev/multitouch/controller/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v2, v9, :cond_e

    const/4 v2, 0x3

    if-eq v12, v2, :cond_e

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 302
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    goto/16 :goto_9

    .line 305
    .end local v17    # "processingHist":Z
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 306
    .end local v3    # "pointerCount":I
    .end local v12    # "action":I
    .end local v14    # "histIdx":I
    .end local v15    # "histLen":I
    :catch_0
    move-exception v13

    .line 308
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "MultiTouchController"

    const-string v4, "onTouchEvent() failed"

    invoke-static {v2, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0
    .param p1, "handleSingleTouchEvents"    # Z

    .prologue
    .line 190
    .local p0, "this":Lorg/metalev/multitouch/controller/MultiTouchController;, "Lorg/metalev/multitouch/controller/MultiTouchController<TT;>;"
    iput-boolean p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController;->handleSingleTouchEvents:Z

    .line 191
    return-void
.end method
