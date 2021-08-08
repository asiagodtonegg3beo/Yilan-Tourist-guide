.class Lcom/google/appinventor/components/runtime/Texting$3;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic val$caller:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$3;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECEIVE_SMS"

    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$3$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Texting$3$1;-><init>(Lcom/google/appinventor/components/runtime/Texting$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1115
    return-void
.end method
