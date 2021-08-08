.class public final Lcom/google/appinventor/components/runtime/MediaStore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "MediaStore.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with a Web service and stores media files."
    iconName = "images/mediastore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "httpmime.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG_COMPONENT:Ljava/lang/String; = "MediaStore: "


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field protected final componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private serviceURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MediaStore;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->androidUIHandler:Landroid/os/Handler;

    .line 87
    const-string v0, "http://ai-mediaservice.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MediaStore;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/MediaStore;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUploadUrl()Ljava/lang/String;
    .locals 10

    .prologue
    .line 169
    :try_start_0
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 170
    .local v7, "url":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, "obj":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 175
    .local v1, "con":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 178
    const-string v0, "AppInventor"

    .line 179
    .local v0, "USER_AGENT":Ljava/lang/String;
    const-string v8, "User-Agent"

    invoke-virtual {v1, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v8, "Content-Type"

    const-string v9, "text/plain; charset=utf-8"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v6, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "inputLine":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v0    # "USER_AGENT":Ljava/lang/String;
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v5    # "obj":Ljava/net/URL;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string v8, ""

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 189
    .restart local v0    # "USER_AGENT":Ljava/lang/String;
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v5    # "obj":Ljava/net/URL;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method public MediaStored(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 206
    const-string v0, "MediaStored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public PostMedia(Ljava/lang/String;)V
    .locals 16
    .param p1, "mediafile"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v7, Lcom/google/appinventor/components/runtime/MediaStore$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/appinventor/components/runtime/MediaStore$1;-><init>(Lcom/google/appinventor/components/runtime/MediaStore;)V

    .line 134
    .local v7, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 136
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v4

    .line 137
    .local v4, "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    sget-object v14, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v4, v14}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 139
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 142
    .local v9, "pathtokens":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "file:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 143
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "newMediaPath":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v6, "media":Ljava/io/File;
    const-string v14, "file"

    new-instance v15, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v15, v6}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 151
    invoke-virtual {v4}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 153
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/MediaStore;->getUploadUrl()Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "uploadURL":Ljava/lang/String;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v10, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 155
    .local v10, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v10, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    invoke-interface {v1, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 158
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 159
    .local v5, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "result":Ljava/lang/String;
    invoke-interface {v7, v12}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "media":Ljava/io/File;
    .end local v8    # "newMediaPath":Ljava/lang/String;
    .end local v9    # "pathtokens":[Ljava/lang/String;
    .end local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "uploadURL":Ljava/lang/String;
    :goto_1
    return-void

    .line 145
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .restart local v9    # "pathtokens":[Ljava/lang/String;
    :cond_0
    move-object/from16 v8, p1

    .restart local v8    # "newMediaPath":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .end local v8    # "newMediaPath":Ljava/lang/String;
    .end local v9    # "pathtokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://ai-mediaservice.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 216
    const-string v0, "WebServiceError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
