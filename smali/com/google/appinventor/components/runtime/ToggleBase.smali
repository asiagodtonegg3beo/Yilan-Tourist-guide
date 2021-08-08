.class public abstract Lcom/google/appinventor/components/runtime/ToggleBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ToggleBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textColor:I

.field protected view:Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 56
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 57
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

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
        description = "The background color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the %type%."
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 88
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
        description = "True if the %type% is active and clickable."
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 148
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

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
        description = "Set to true if the text of the %type% should be bold."
        userVisible = false
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 176
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

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
        description = "Set to true if the text of the %type% should be italic."
        userVisible = false
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 207
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
        description = "Specifies the text font size of the %type% in scale-independent pixels."
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 235
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

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
        description = "Specifies the text font face of the %type%."
        userVisible = false
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 266
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% became the focused component."
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% stopped being the focused component."
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text displayed by the %type%."
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

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
        description = "Specifies the text color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .line 79
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected initToggle()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 67
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->BackgroundColor(I)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Enabled(Z)V

    .line 69
    iput v4, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 71
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->FontSize(F)V

    .line 72
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Text(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ToggleBase;->TextColor(I)V

    .line 75
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 344
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    .line 345
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 350
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->GotFocus()V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->LostFocus()V

    goto :goto_0
.end method
