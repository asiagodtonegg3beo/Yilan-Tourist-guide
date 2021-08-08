.class Lcom/google/appinventor/components/runtime/SplashActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SplashActivity;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/SplashActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SplashActivity$1;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 129
    const-wide/32 v0, 0x500000

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 130
    return-void
.end method
