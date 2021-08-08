.class Lcom/google/appinventor/components/runtime/File$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->ReadFrom(Ljava/lang/String;)V
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
    .line 168
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$1;->val$legacy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    const/16 v10, 0x835

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 171
    if-eqz p2, :cond_1

    .line 174
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    .local v3, "inputStream":Ljava/io/InputStream;
    :goto_0
    move-object v0, v3

    .line 183
    .local v0, "asyncInputStream":Ljava/io/InputStream;
    new-instance v4, Lcom/google/appinventor/components/runtime/File$1$1;

    invoke-direct {v4, p0, v0}, Lcom/google/appinventor/components/runtime/File$1$1;-><init>(Lcom/google/appinventor/components/runtime/File$1;Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 203
    .end local v0    # "asyncInputStream":Ljava/io/InputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/File$1;->val$legacy:Z

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "filepath":Ljava/lang/String;
    const-string v4, "FileComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filepath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 189
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "ReadFrom"

    invoke-virtual {v4, v5, v6, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 191
    .end local v1    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "FileComponent"

    const-string v5, "FileNotFoundException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "ReadFrom"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v10, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 195
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "FileComponent"

    const-string v5, "IOException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "ReadFrom"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v10, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "ReadFrom"

    invoke-virtual {v4, v5, v6, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
