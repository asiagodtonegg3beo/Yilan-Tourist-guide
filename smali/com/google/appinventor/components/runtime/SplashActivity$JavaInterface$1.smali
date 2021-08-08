.class Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->finished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SplashActivity;->finish()V

    .line 88
    return-void
.end method
