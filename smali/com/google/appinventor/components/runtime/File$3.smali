.class Lcom/google/appinventor/components/runtime/File$3;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$append:Z

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$legacy:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$3;->val$filename:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$3;->val$legacy:Z

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x838

    const/16 v10, 0x837

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 271
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->val$filename:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/appinventor/components/runtime/File$3;->val$legacy:Z

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "filepath":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 275
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 279
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    invoke-direct {v2, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 293
    .local v2, "fileWriter":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 294
    .local v4, "out":Ljava/io/OutputStreamWriter;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 296
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 297
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 299
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/File$3$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/File$3$1;-><init>(Lcom/google/appinventor/components/runtime/File$3;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    .end local v2    # "fileWriter":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    if-eqz v5, :cond_2

    .line 282
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "AppendTo"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v10, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "SaveFile"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v10, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    if-eqz v5, :cond_3

    .line 307
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "AppendTo"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v11, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "SaveFile"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v11, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
