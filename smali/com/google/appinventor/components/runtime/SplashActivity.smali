.class public final Lcom/google/appinventor/components/runtime/SplashActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    invoke-direct {v0, p0, p0}, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;-><init>(Lcom/google/appinventor/components/runtime/SplashActivity;Landroid/content/Context;)V

    .line 97
    .local v0, "android":Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->handler:Landroid/os/Handler;

    .line 98
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    .line 99
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 100
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 102
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "databasePath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/appinventor/components/runtime/SplashActivity$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/SplashActivity$1;-><init>(Lcom/google/appinventor/components/runtime/SplashActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 137
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "Android"

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "file:///android_asset/splash.html"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 145
    aget-object v3, p2, v2

    .line 146
    .local v3, "permission":Ljava/lang/String;
    aget v0, p3, v2

    .line 147
    .local v0, "grantResult":I
    const/4 v1, 0x0

    .line 148
    .local v1, "granted":Z
    if-nez v0, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:permresult(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "grantResult":I
    .end local v1    # "granted":Z
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method
