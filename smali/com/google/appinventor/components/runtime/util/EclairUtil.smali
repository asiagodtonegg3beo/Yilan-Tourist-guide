.class public Lcom/google/appinventor/components/runtime/util/EclairUtil;
.super Ljava/lang/Object;
.source "EclairUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static clearWebViewGeoLoc()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    .line 102
    .local v0, "permissions":Landroid/webkit/GeolocationPermissions;
    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 103
    return-void
.end method

.method public static disableSuggestions(Landroid/widget/EditText;)V
    .locals 2
    .param p0, "textview"    # Landroid/widget/EditText;

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 119
    return-void
.end method

.method public static getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "pname"    # Ljava/lang/String;
    .param p1, "form"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static overridePendingTransitions(Landroid/app/Activity;II)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method public static setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 2
    .param p0, "caller"    # Lcom/google/appinventor/components/runtime/WebViewer;
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 89
    return-void
.end method
