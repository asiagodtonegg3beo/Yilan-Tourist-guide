.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to /sdcard/AppInventor/data to facilitate debugging. If the file path starts with a slash (/), then the file is created relative to /sdcard. For example writing a file to /myFile.txt will write the file in /sdcard/myFile.txt."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# instance fields
.field private legacy:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 61
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/File;->LegacyMode(Z)V

    .line 70
    return-void
.end method

.method private AbsoluteFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "legacy"    # Z

    .prologue
    const/4 v3, 0x0

    .line 425
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3, p2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplDataPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "dirPath":Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 437
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 432
    .end local v0    # "dirPath":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "dirPath":Ljava/io/File;
    goto :goto_1
.end method

.method private AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13
    .param p1, "fileInput"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 357
    .local v6, "output":Ljava/io/StringWriter;
    const/16 v8, 0x1000

    new-array v0, v8, [C

    .line 358
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 359
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 360
    .local v4, "length":I
    :goto_0
    const/16 v8, 0x1000

    invoke-virtual {v3, v0, v5, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_1

    .line 361
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 378
    .end local v0    # "buffer":[C
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "output":Ljava/io/StringWriter;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 379
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v8, "FileComponent"

    const-string v9, "FileNotFoundException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "ReadFrom"

    const/16 v10, 0x835

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    if-eqz v2, :cond_0

    .line 389
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 395
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 370
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "length":I
    .restart local v5    # "offset":I
    .restart local v6    # "output":Ljava/io/StringWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/File;->normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v9, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    if-eqz v3, :cond_3

    .line 389
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 392
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 390
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    move-object v2, v3

    .line 392
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 382
    .end local v0    # "buffer":[C
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "output":Ljava/io/StringWriter;
    .end local v7    # "text":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v8, "FileComponent"

    const-string v9, "IOException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v9, "ReadFrom"

    const/16 v10, 0x836

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 387
    if-eqz v2, :cond_0

    .line 389
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 390
    :catch_3
    move-exception v8

    goto :goto_2

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_2

    .line 389
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 392
    :cond_2
    :goto_5
    throw v8

    .line 390
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 387
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 382
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 378
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "length":I
    .restart local v5    # "offset":I
    .restart local v6    # "output":Ljava/io/StringWriter;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private Write(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "append"    # Z

    .prologue
    const/16 v6, 0x83a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 257
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    if-eqz p3, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "AppendTo"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v6, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 327
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "SaveFile"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v6, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 268
    .local v3, "legacy":Z
    new-instance v0, Lcom/google/appinventor/components/runtime/File$3;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 316
    .local v0, "operation":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v4, Lcom/google/appinventor/components/runtime/File$4;

    invoke-direct {v4, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/File;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/File;->AbsoluteFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/File;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/File;->AsyncRead(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 340
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    .prologue
    .line 416
    const-string v0, "AfterFileSaved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    .prologue
    .line 143
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 146
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 224
    .local v0, "legacy":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 247
    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    .prologue
    .line 405
    const-string v0, "GotText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public LegacyMode(Z)V
    .locals 0
    .param p1, "legacy"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 77
    return-void
.end method

.method public LegacyMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    return v0
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/File;->legacy:Z

    .line 168
    .local v0, "legacy":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/File$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 205
    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    .prologue
    .line 122
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    return-void
.end method
