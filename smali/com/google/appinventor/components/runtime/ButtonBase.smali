.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBase"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private fontTypeface:I

.field private imagePath:Ljava/lang/String;

.field private italic:Z

.field private myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private shape:I

.field private showFeedback:Z

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    .line 111
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 118
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 79
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    new-instance v0, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    .line 136
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 151
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 153
    iput v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 155
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 156
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    .line 159
    return-void
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v6, 0x101009e

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 455
    new-array v2, v5, [[I

    new-array v3, v5, [I

    aput v6, v3, v7

    aput-object v3, v2, v7

    .line 456
    .local v2, "states":[[I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 457
    .local v1, "enabled_color":I
    new-array v0, v5, [I

    const/16 v3, 0x46

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 458
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 457
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v7

    .line 460
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 434
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 436
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 438
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 439
    .restart local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ButtonBase"

    const-string v3, "Unable to clone button drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 447
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setShape()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 468
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    packed-switch v1, :pswitch_data_0

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 470
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 483
    :goto_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 489
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, 0xffffff

    if-ne v1, v2, :cond_1

    .line 490
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 499
    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 500
    return-void

    .line 473
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 476
    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 492
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x333334

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAppearance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 401
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_2

    .line 402
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    .line 431
    :goto_1
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setShape()V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v2, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto :goto_1
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .prologue
    .line 373
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 391
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 392
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 393
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 524
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    .line 552
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 553
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 614
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 642
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .prologue
    .line 658
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 675
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 676
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 677
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    .prologue
    .line 220
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 338
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 360
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 342
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "ButtonBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    .prologue
    .line 230
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .param p1, "shape"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .prologue
    .line 304
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    .line 305
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 306
    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .param p1, "showFeedback"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 569
    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 264
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 266
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .prologue
    .line 714
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 728
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 729
    if-eqz p1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    .prologue
    .line 202
    const-string v0, "TouchDown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    .prologue
    .line 210
    const-string v0, "TouchUp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public abstract click()V
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    .line 751
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 757
    if-eqz p2, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x15

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V

    .line 189
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_6

    .line 183
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 186
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V

    goto :goto_0
.end method
