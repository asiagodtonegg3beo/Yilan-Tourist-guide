.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Slider"

.field private static final initialLeftColor:I = -0x3800

.field private static final initialLeftColorString:Ljava/lang/String; = "&HFFFFC800"

.field private static final initialRightColor:I = -0x777778

.field private static final initialRightColorString:Ljava/lang/String; = "&HFF888888"


# instance fields
.field private leftColor:I

.field private maxValue:F

.field private minValue:F

.field public final referenceGetThumb:Z

.field private rightColor:I

.field private final seekbar:Landroid/widget/SeekBar;

.field private thumbEnabled:Z

.field private thumbPosition:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    .line 106
    new-instance v0, Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    .line 108
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 112
    :cond_0
    const/16 v0, -0x3800

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 113
    const v0, -0x777778

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 117
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 120
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 121
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 122
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 123
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 146
    return-void

    :cond_1
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Slider;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Slider;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Slider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Slider;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    return v0
.end method

.method private setSeekbarPosition()V
    .locals 4

    .prologue
    .line 182
    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 190
    .local v0, "seekbarPosition":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 191
    return-void
.end method

.method private setSliderColors()V
    .locals 7

    .prologue
    .line 151
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 152
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    .line 154
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/StateListDrawable;

    if-nez v4, :cond_2

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 156
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 164
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 166
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 168
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 172
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 173
    .local v2, "fullBar":Landroid/graphics/drawable/LayerDrawable;
    iget v4, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    const v4, 0x102000d

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public ColorLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .prologue
    .line 356
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    return v0
.end method

.method public ColorLeft(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFC800"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 371
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 372
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 373
    return-void
.end method

.method public ColorRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the right of the thumb."
    .end annotation

    .prologue
    .line 388
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    return v0
.end method

.method public ColorRight(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 403
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 404
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 405
    return-void
.end method

.method public Height()I
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 470
    return-void
.end method

.method public MaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .prologue
    .line 339
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    return v0
.end method

.method public MaxValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 321
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 322
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 327
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 328
    return-void
.end method

.method public MinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .prologue
    .line 303
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    return v0
.end method

.method public MinValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 283
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 285
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 290
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 291
    return-void
.end method

.method public PositionChanged(F)V
    .locals 4
    .param p1, "thumbPosition"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 435
    const-string v0, "PositionChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 436
    return-void
.end method

.method public ThumbEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 204
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xff

    .line 205
    .local v0, "alpha":I
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;-><init>(Lcom/google/appinventor/components/runtime/Slider;Lcom/google/appinventor/components/runtime/Slider$1;)V

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;->getThumb(I)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/google/appinventor/components/runtime/Slider$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Slider$1;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    return-void

    .line 204
    .end local v0    # "alpha":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ThumbEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    return v0
.end method

.method public ThumbPosition()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 2
    .param p1, "position"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 250
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 251
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 252
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 418
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 427
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 428
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 441
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 446
    return-void
.end method
