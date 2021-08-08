.class public Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/metalev/multitouch/controller/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndScale"
.end annotation


# instance fields
.field private angle:F

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private updateAngle:Z

.field private updateScale:Z

.field private updateScaleXY:Z

.field private xOff:F

.field private yOff:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScale:Z

    return v0
.end method

.method static synthetic access$100(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    return v0
.end method

.method static synthetic access$200(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateAngle:Z

    return v0
.end method

.method static synthetic access$400(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scale:F

    return v0
.end method

.method static synthetic access$500(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method static synthetic access$600(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method static synthetic access$700(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleX:F

    return v0
.end method

.method static synthetic access$800(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleY:F

    return v0
.end method

.method static synthetic access$900(Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)F
    .locals 1
    .param p0, "x0"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    .line 725
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->angle:F

    return v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateAngle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->angle:F

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScale:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scale:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleX:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleY:F

    goto :goto_0
.end method

.method public getXOff()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method protected set(FFFFFF)V
    .locals 3
    .param p1, "xOff"    # F
    .param p2, "yOff"    # F
    .param p3, "scale"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "angle"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 751
    iput p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->xOff:F

    .line 752
    iput p2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->yOff:F

    .line 753
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    .end local p3    # "scale":F
    :cond_0
    iput p3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scale:F

    .line 754
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    .end local p4    # "scaleX":F
    :cond_1
    iput p4, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleX:F

    .line 755
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleY:F

    .line 756
    iput p6, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->angle:F

    .line 757
    return-void

    :cond_2
    move v0, p5

    .line 755
    goto :goto_0
.end method

.method public set(FFZFZFFZF)V
    .locals 3
    .param p1, "xOff"    # F
    .param p2, "yOff"    # F
    .param p3, "updateScale"    # Z
    .param p4, "scale"    # F
    .param p5, "updateScaleXY"    # Z
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F
    .param p8, "updateAngle"    # Z
    .param p9, "angle"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 738
    iput p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->xOff:F

    .line 739
    iput p2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->yOff:F

    .line 740
    iput-boolean p3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScale:Z

    .line 741
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    .end local p4    # "scale":F
    :cond_0
    iput p4, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scale:F

    .line 742
    iput-boolean p5, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    .line 743
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    .end local p6    # "scaleX":F
    :cond_1
    iput p6, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleX:F

    .line 744
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->scaleY:F

    .line 745
    iput-boolean p8, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->updateAngle:Z

    .line 746
    iput p9, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->angle:F

    .line 747
    return-void

    :cond_2
    move v0, p7

    .line 744
    goto :goto_0
.end method
