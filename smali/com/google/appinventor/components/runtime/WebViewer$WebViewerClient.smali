.class Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/WebViewer;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/WebViewer$1;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->PageLoaded(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->BeforePageLoad(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->access$000(Lcom/google/appinventor/components/runtime/WebViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
