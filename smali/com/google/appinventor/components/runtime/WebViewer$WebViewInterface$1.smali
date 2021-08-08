.class Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field final synthetic val$newString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->val$newString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->this$1:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;->val$newString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/WebViewer;->WebViewStringChange(Ljava/lang/String;)V

    .line 650
    return-void
.end method
