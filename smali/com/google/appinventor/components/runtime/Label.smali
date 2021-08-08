.class public final Lcom/google/appinventor/components/runtime/Label;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Label.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_LABEL_MARGIN:I = 0x2


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private defaultLabelMarginInDp:I

.field private fontTypeface:I

.field private hasMargins:Z

.field private htmlContent:Ljava/lang/String;

.field private htmlFormat:Z

.field private italic:Z

.field private final linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 49
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 89
    new-instance v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    .line 92
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Label;->dpToPx(Landroid/view/View;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 112
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->TextAlignment(I)V

    .line 113
    const v1, 0xffffff

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->BackgroundColor(I)V

    .line 114
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 116
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->FontSize(F)V

    .line 117
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->TextColor(I)V

    .line 119
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->HTMLFormat(Z)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->HasMargins(Z)V

    .line 121
    return-void

    .line 105
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    const-string v1, "Label"

    const-string v2, "Error: The label\'s view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static dpToPx(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dp"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 126
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private setLabelMargins(Z)V
    .locals 2
    .param p1, "hasMargins"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 291
    .local v0, "m":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 293
    return-void

    .line 290
    .end local v0    # "m":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 178
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 191
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public FontBold(Z)V
    .locals 3
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 226
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

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
        userVisible = false
    .end annotation

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 255
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 316
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

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
    .line 348
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 350
    return-void
.end method

.method public HTMLContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlContent:Ljava/lang/String;

    .line 391
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public HTMLFormat(Z)V
    .locals 2
    .param p1, "fmt"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    .line 421
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "txt":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 425
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .restart local v0    # "txt":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this label will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    return v0
.end method

.method public HasMargins(Z)V
    .locals 0
    .param p1, "hasMargins"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->hasMargins:Z

    .line 286
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->setLabelMargins(Z)V

    .line 287
    return-void
.end method

.method public HasMargins()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the label appears with margins.  All four margins (left, right, top, bottom) are the same.  This property has no effect in the designer, where labels are always shown with margins."
        userVisible = true
    .end annotation

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->hasMargins:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 377
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlContent:Ljava/lang/String;

    .line 378
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 164
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 166
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 440
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 453
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    return-object v0
.end method
