.class public Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;
.super Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;
.source "HoneycombWebViewClient.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient",
        "<",
        "Lcom/google/appinventor/components/runtime/WebViewer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///appinventor_asset/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0
    .param p1, "followLinks"    # Z
    .param p2, "ignoreErrors"    # Z
    .param p3, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p4, "component"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "file:///appinventor_asset/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "file:///appinventor_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 64
    .local v16, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webviewer requested path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 66
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Access-Control-Allow-Origin"

    const-string v4, "localhost"

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "utf-8"

    .line 70
    .local v3, "encoding":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mime type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "text/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v3, 0x0

    .line 74
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 75
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/16 v4, 0xc8

    const-string v5, "OK"

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 60
    .end local v16    # "path":Ljava/lang/String;
    :cond_1
    const-string v1, "//localhost/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "path":Ljava/lang/String;
    goto :goto_0

    .line 77
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "stream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-direct {v1, v2, v3, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 79
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .line 80
    .local v15, "e":Ljava/io/IOException;
    new-instance v14, Ljava/io/ByteArrayInputStream;

    const-string v1, "404 Not Found"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    .local v14, "error":Ljava/io/ByteArrayInputStream;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_3

    .line 82
    new-instance v8, Landroid/webkit/WebResourceResponse;

    const-string v9, "text/plain"

    const-string v10, "utf-8"

    const/16 v11, 0x194

    const-string v12, "Not Found"

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    move-object v1, v8

    goto :goto_1

    .line 84
    :cond_3
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v4, "text/plain"

    const-string v5, "utf-8"

    invoke-direct {v1, v4, v5, v14}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///appinventor_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "http://localhost/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///appinventor_asset/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
