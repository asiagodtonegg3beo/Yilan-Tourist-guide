.class Lcom/google/appinventor/components/runtime/Notifier$9;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Notifier;

.field final synthetic val$cancelButtonText:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Notifier;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$cancelButtonText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->HideKeyboard(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Notifier;->TextInputCanceled()V

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$cancelButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->AfterTextInput(Ljava/lang/String;)V

    .line 389
    return-void
.end method
