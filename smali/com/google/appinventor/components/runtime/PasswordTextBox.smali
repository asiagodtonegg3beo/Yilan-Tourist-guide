.class public final Lcom/google/appinventor/components/runtime/PasswordTextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "PasswordTextBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for entering passwords.  This is the same as the ordinary <code>TextBox</code> component except this does not display the characters typed by the user.</p><p>The value of the text in the box can be found or set through the <code>Text</code> property. If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p> <p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private passwordVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 57
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->PasswordVisible(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public PasswordVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public PasswordVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    return v0
.end method
