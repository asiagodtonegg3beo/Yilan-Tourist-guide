.class Lcom/google/appinventor/components/runtime/File$2;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Delete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$legacy:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$legacy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 227
    if-eqz p2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "DeleteFile"

    const/16 v5, 0x839

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/File$2;->val$legacy:Z

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "filepath":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "Delete"

    new-instance v5, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 240
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 243
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filepath":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "Delete"

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
