.class public Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FroyoWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/appinventor/components/runtime/Component;",
        ">",
        "Landroid/webkit/WebViewClient;"
    }
.end annotation


# instance fields
.field private final component:Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final followLinks:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private final ignoreErrors:Z


# direct methods
.method public constructor <init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V
    .locals 0
    .param p1, "followLinks"    # Z
    .param p2, "ignoreErrors"    # Z
    .param p3, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/google/appinventor/components/runtime/Form;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    .local p4, "component":Lcom/google/appinventor/components/runtime/Component;, "TT;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->followLinks:Z

    .line 28
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->ignoreErrors:Z

    .line 29
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 30
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;)Lcom/google/appinventor/components/runtime/Component;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    return-object v0
.end method


# virtual methods
.method public getComponent()Lcom/google/appinventor/components/runtime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    return-object v0
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "PageLoaded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "BeforePageLoad"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient$1;-><init>(Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 48
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->ignoreErrors:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v2, "WebView"

    const/16 v3, 0x9c5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;, "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->followLinks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
