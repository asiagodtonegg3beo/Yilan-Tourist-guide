.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "AssetFetcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "asset"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    invoke-direct {v1, p2, p1, p3, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 75
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 18
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;
    .param p2, "asset"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 137
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    .line 138
    .local v7, "form":Lcom/google/appinventor/components/runtime/Form;
    const/4 v15, 0x1

    move/from16 v0, p3

    if-le v0, v15, :cond_2

    .line 139
    sget-object v16, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    monitor-enter v16

    .line 140
    :try_start_0
    sget-boolean v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-eqz v15, :cond_1

    .line 141
    const/4 v10, 0x0

    monitor-exit v16

    .line 197
    :cond_0
    :goto_0
    return-object v10

    .line 143
    :cond_1
    const/4 v15, 0x1

    sput-boolean v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 144
    new-instance v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    const/4 v10, 0x0

    monitor-exit v16

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 155
    :cond_2
    const/4 v6, 0x0

    .line 156
    .local v6, "error":Z
    const/4 v10, 0x0

    .line 157
    .local v10, "outFile":Ljava/io/File;
    :try_start_1
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 159
    .local v4, "connection":Ljava/net/HttpURLConnection;
    if-eqz v4, :cond_5

    .line 160
    const-string v15, "GET"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 161
    const-string v15, "Cookie"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AppInventor = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 163
    .local v13, "responseCode":I
    sget-object v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "asset = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " responseCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v11, Ljava/io/File;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "assets/"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 165
    .end local v10    # "outFile":Ljava/io/File;
    .local v11, "outFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 166
    .local v12, "parentOutFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_3

    .line 167
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to create assets directory "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .end local v12    # "parentOutFile":Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v10, v11

    .line 195
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "outFile":Ljava/io/File;
    .end local v13    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v10    # "outFile":Ljava/io/File;
    :goto_1
    sget-object v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception while fetching "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    add-int/lit8 v15, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    goto/16 :goto_0

    .line 169
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v11    # "outFile":Ljava/io/File;
    .restart local v12    # "parentOutFile":Ljava/io/File;
    .restart local v13    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-direct {v8, v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 170
    .local v8, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 173
    .local v9, "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .line 174
    .local v3, "b":I
    const/4 v15, -0x1

    if-ne v3, v15, :cond_4

    .line 179
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 186
    .end local v3    # "b":I
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v10, v11

    .line 190
    .end local v8    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .end local v11    # "outFile":Ljava/io/File;
    .end local v12    # "parentOutFile":Ljava/io/File;
    .end local v13    # "responseCode":I
    .restart local v10    # "outFile":Ljava/io/File;
    :goto_4
    if-eqz v6, :cond_0

    .line 191
    add-int/lit8 v15, p3, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v10

    goto/16 :goto_0

    .line 177
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v3    # "b":I
    .restart local v8    # "in":Ljava/io/BufferedInputStream;
    .restart local v9    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "outFile":Ljava/io/File;
    .restart local v12    # "parentOutFile":Ljava/io/File;
    .restart local v13    # "responseCode":I
    :cond_4
    :try_start_7
    invoke-virtual {v9, v3}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 180
    .end local v3    # "b":I
    :catch_1
    move-exception v5

    .line 181
    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v15, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v16, "copying assets"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 182
    const/4 v6, 0x1

    .line 184
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_3

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    throw v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 188
    .end local v8    # "in":Ljava/io/BufferedInputStream;
    .end local v9    # "out":Ljava/io/BufferedOutputStream;
    .end local v11    # "outFile":Ljava/io/File;
    .end local v12    # "parentOutFile":Ljava/io/File;
    .end local v13    # "responseCode":I
    .restart local v10    # "outFile":Ljava/io/File;
    :cond_5
    const/4 v6, 0x1

    goto :goto_4

    .line 194
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v14    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .locals 9
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadExtensions called jsonString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 108
    .local v4, "form":Lcom/google/appinventor/components/runtime/ReplForm;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 111
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "loadExtensions: No Extensions"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    .line 134
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    :goto_0
    return-void

    .line 115
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 116
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "extensionName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 118
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadExtensions, extensionName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    :cond_1
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "extensionName was null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionName":Ljava/lang/String;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "JSON Exception parsing extension string"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .restart local v5    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 127
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error in form.loadComponents"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "inputUri"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method
