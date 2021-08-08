.class public Lcom/google/appinventor/components/runtime/util/HoneycombUtil;
.super Ljava/lang/Object;
.source "HoneycombUtil.java"


# static fields
.field public static final VIEWGROUP_MEASURED_HEIGHT_STATE_SHIFT:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static combineMeasuredStates(Landroid/view/ViewGroup;II)I
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 26
    invoke-static {p1, p2}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static makeSpinner(Landroid/content/Context;)Landroid/widget/Spinner;
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static resolveSizeAndState(Landroid/view/ViewGroup;III)I
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "maxWidth"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "childState"    # I

    .prologue
    .line 34
    invoke-static {p1, p2, p3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static viewSetRotate(Landroid/view/View;D)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rotationAngle"    # D

    .prologue
    .line 38
    double-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 39
    return-void
.end method
