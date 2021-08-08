.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 60
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 61
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 62
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 63
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 2
    .param p1, "res"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    .prologue
    .line 390
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "Allow"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-object p1
.end method

.method private adoptMainThreadClassLoader()V
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 360
    .local v0, "mainClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 361
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 364
    :cond_0
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 310
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 311
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 312
    .local v4, "out":Ljava/io/FileOutputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 315
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 316
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    const/4 v5, 0x1

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v5

    .line 319
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 320
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "status"

    const-string v3, "BAD"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v3, "200 OK"

    const-string v4, "application/json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AppInvHTTPD"

    const-string v3, "Unable to write basic JSON content"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private json(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 7
    .param p1, "parms"    # Ljava/util/Properties;

    .prologue
    .line 330
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v5, "extensions"

    const-string v6, "[]"

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 333
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "extensionName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 335
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid JSON content at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 347
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionName":Ljava/lang/String;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :goto_1
    return-object v5

    .line 341
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :try_start_2
    const-string v5, "OK"

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_1

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    .line 346
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catch_1
    move-exception v1

    .line 347
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "inputKey"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 403
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 404
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 408
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 42
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .prologue
    .line 76
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\' "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 84
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v24

    .line 85
    .local v24, "myAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, "hostAddress":Ljava/lang/String;
    const-string v35, "127.0.0.1"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_1

    .line 87
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Debug: hostAddress = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " while in secure mode, closing connection."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\"}"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v29, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v17    # "hostAddress":Ljava/lang/String;
    .end local v24    # "myAddress":Ljava/net/InetAddress;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_0
    :goto_0
    return-object v29

    .line 100
    :cond_1
    const-string v35, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 104
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 105
    .local v9, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 107
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 108
    .local v33, "value":Ljava/lang/String;
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "  HDR: \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\' = \'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 109
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 108
    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v33    # "value":Ljava/lang/String;
    :cond_2
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "text/plain"

    const-string v37, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3
    const-string v35, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->adoptMainThreadClassLoader()V

    .line 122
    const-string v35, "seq"

    const-string v36, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 123
    .local v19, "inSeq":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 124
    .local v22, "iseq":I
    const-string v35, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "blockid":Ljava/lang/String;
    const-string v35, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "code":Ljava/lang/String;
    const-string v35, "mac"

    const-string v36, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 127
    .local v18, "inMac":Ljava/lang/String;
    const-string v8, ""

    .line 128
    .local v8, "compMac":Ljava/lang/String;
    move-object/from16 v20, v7

    .line 129
    .local v20, "input_code":Ljava/lang/String;
    sget-object v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v35, :cond_8

    .line 131
    :try_start_0
    const-string v35, "HmacSHA1"

    invoke-static/range {v35 .. v35}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v16

    .line 132
    .local v16, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v23, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v36, "RAW"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    .local v23, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v32

    .line 135
    .local v32, "tmpMac":[B
    new-instance v30, Ljava/lang/StringBuffer;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v35, v0

    mul-int/lit8 v35, v35, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    .local v30, "sb":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/util/Formatter;

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 137
    .local v15, "formatter":Ljava/util/Formatter;
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v36, v0

    const/16 v35, 0x0

    :goto_2
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    aget-byte v5, v32, v35

    .line 138
    .local v5, "b":B
    const-string v37, "%02x"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 137
    add-int/lit8 v35, v35, 0x1

    goto :goto_2

    .line 139
    .end local v5    # "b":B
    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 147
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Incoming Mac = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Computed Mac = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Incoming seq = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Computed seq = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "blockid = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 153
    const-string v35, "AppInvHTTPD"

    const-string v36, "Hmac does not match"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    const-string v37, "AppInvHTTPD"

    const/16 v38, 0x709

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const-string v41, "Invalid HMAC"

    aput-object v41, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const-string v37, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 140
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v30    # "sb":Ljava/lang/StringBuffer;
    .end local v32    # "tmpMac":[B
    :catch_0
    move-exception v9

    .line 141
    .local v9, "e":Ljava/lang/Exception;
    const-string v35, "AppInvHTTPD"

    const-string v36, "Error working with hmac"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    const-string v37, "AppInvHTTPD"

    const/16 v38, 0x709

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const-string v41, "Exception working on HMAC"

    aput-object v41, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 144
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "text/plain"

    const-string v37, "NOT"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 159
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v15    # "formatter":Ljava/util/Formatter;
    .restart local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v30    # "sb":Ljava/lang/StringBuffer;
    .restart local v32    # "tmpMac":[B
    :cond_5
    sget v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v35

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    sget v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v36, v22, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    .line 160
    const-string v35, "AppInvHTTPD"

    const-string v36, "Seq does not match"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    const-string v37, "AppInvHTTPD"

    const/16 v38, 0x709

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const-string v41, "Invalid Seq"

    aput-object v41, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const-string v37, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 168
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_6
    sget v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v36, v22, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 169
    const-string v35, "AppInvHTTPD"

    const-string v36, "Seq Fixup Invoked"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    add-int/lit8 v35, v22, 0x1

    sput v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 179
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " (begin "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " )))"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "To Eval: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_1
    const-string v35, "#f"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 188
    const-string v35, "AppInvHTTPD"

    const-string v36, "Skipping evaluation of #f"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_3
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v30    # "sb":Ljava/lang/StringBuffer;
    .end local v32    # "tmpMac":[B
    :cond_8
    const-string v35, "AppInvHTTPD"

    const-string v36, "No HMAC Key"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    const-string v37, "AppInvHTTPD"

    const/16 v38, 0x709

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const-string v41, "No HMAC Key"

    aput-object v41, v39, v40

    invoke-virtual/range {v35 .. v39}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 175
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const-string v37, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 190
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v15    # "formatter":Ljava/util/Formatter;
    .restart local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v30    # "sb":Ljava/lang/StringBuffer;
    .restart local v32    # "tmpMac":[B
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 193
    :catch_1
    move-exception v11

    .line 194
    .local v11, "ex":Ljava/lang/Throwable;
    const-string v35, "AppInvHTTPD"

    const-string v36, "newblocks: Scheme Failure"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const-string v35, "BAD"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v6, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_4

    .line 203
    .end local v6    # "blockid":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/String;
    .end local v8    # "compMac":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v18    # "inMac":Ljava/lang/String;
    .end local v19    # "inSeq":Ljava/lang/String;
    .end local v20    # "input_code":Ljava/lang/String;
    .end local v22    # "iseq":I
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v30    # "sb":Ljava/lang/StringBuffer;
    .end local v32    # "tmpMac":[B
    :cond_a
    const-string v35, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 204
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_b
    const-string v35, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 213
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 214
    .local v27, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .line 216
    .local v26, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_d

    .line 217
    const-string v35, "edu.mit.appinventor.aicompanion3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v21

    .line 224
    .local v21, "installer":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 225
    .local v34, "versionName":Ljava/lang/String;
    if-nez v21, :cond_c

    .line 226
    const-string v21, "Not Known"

    .line 230
    :cond_c
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "{\"version\" : \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\", \"fingerprint\" : \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\", \"installer\" : \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\", \"package\" : \""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\", \"fqcn\" : true }"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    .end local v21    # "installer":Ljava/lang/String;
    .end local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v27    # "packageName":Ljava/lang/String;
    .end local v34    # "versionName":Ljava/lang/String;
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_6
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 243
    const/16 v35, 0x1

    sput v35, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    new-instance v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 219
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v27    # "packageName":Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v21, "Not Known"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v21    # "installer":Ljava/lang/String;
    goto/16 :goto_5

    .line 234
    .end local v21    # "installer":Ljava/lang/String;
    .end local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v27    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v25

    .line 235
    .local v25, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 236
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "application/json"

    const-string v37, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_6

    .line 251
    .end local v25    # "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_e
    const-string v35, "/_extensions"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v29

    goto/16 :goto_0

    .line 255
    :cond_f
    const-string v35, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 256
    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 257
    .local v10, "error":Ljava/lang/Boolean;
    const-string v35, "content"

    const/16 v36, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 258
    .local v31, "tmpFileName":Ljava/lang/String;
    if-eqz v31, :cond_15

    .line 259
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v12, "fileFrom":Ljava/io/File;
    const-string v35, "filename"

    const/16 v36, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, "filename":Ljava/lang/String;
    if-eqz v14, :cond_11

    .line 262
    const-string v35, ".."

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, ".."

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "../"

    .line 263
    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    if-ltz v35, :cond_11

    .line 264
    :cond_10
    const-string v35, "AppInvHTTPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " Ignoring invalid filename: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v14, 0x0

    .line 268
    :cond_11
    if-eqz v14, :cond_14

    .line 270
    new-instance v13, Ljava/io/File;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v13, "fileTo":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v28

    .line 272
    .local v28, "parentFileTo":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v35

    if-nez v35, :cond_12

    .line 273
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_12
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v35

    if-nez v35, :cond_13

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 277
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 288
    .end local v12    # "fileFrom":Ljava/io/File;
    .end local v13    # "fileTo":Ljava/io/File;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v28    # "parentFileTo":Ljava/io/File;
    :cond_13
    :goto_7
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    if-eqz v35, :cond_16

    .line 289
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "500 Internal Server Error"

    const-string v36, "text/plain"

    const-string v37, "NOTOK"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v12    # "fileFrom":Ljava/io/File;
    .restart local v14    # "filename":Ljava/lang/String;
    :cond_14
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 281
    const-string v35, "AppInvHTTPD"

    const-string v36, "Received content without a file name!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_7

    .line 285
    .end local v12    # "fileFrom":Ljava/io/File;
    .end local v14    # "filename":Ljava/lang/String;
    :cond_15
    const-string v35, "AppInvHTTPD"

    const-string v36, "Received PUT without content."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_7

    .line 296
    :cond_16
    new-instance v29, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v35, "200 OK"

    const-string v36, "text/plain"

    const-string v37, "OK"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .restart local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v35, "Access-Control-Allow-Origin"

    const-string v36, "*"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v35, "Access-Control-Allow-Headers"

    const-string v36, "origin, content-type"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v35, "Access-Control-Allow-Methods"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v35, "Allow"

    const-string v36, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v10    # "error":Ljava/lang/Boolean;
    .end local v29    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v31    # "tmpFileName":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v29

    goto/16 :goto_0
.end method
