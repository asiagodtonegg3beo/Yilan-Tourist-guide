.class Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$failingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

    iput p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$errorCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$failingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$errorCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;->val$failingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/WebViewer;->ErrorOccurred(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method
