.class Lcom/google/appinventor/components/runtime/Texting$3$1;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Texting$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Texting$3;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 1108
    if-eqz p2, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->access$502(Lcom/google/appinventor/components/runtime/Texting;Z)Z

    .line 1113
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$3$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$3;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Texting$3;->val$caller:Ljava/lang/String;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
