.class public Lcom/google/appinventor/components/runtime/ReplApplication;
.super Landroid/app/Application;
.source "ReplApplication.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
.end annotation


# static fields
.field public static installed:Z

.field private static thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;


# instance fields
.field private active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    return-void
.end method

.method public static isAcraActive()Z
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "reportId"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "reportid"

    invoke-virtual {v0, v1, p1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/ReplApplication;->reportError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    .line 56
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 61
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplApplication;->thisInstance:Lcom/google/appinventor/components/runtime/ReplApplication;

    .line 62
    invoke-static {}, Lcom/google/appinventor/common/version/GitBuildId;->getAcraUri()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "acraUri":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "ReplApplication"

    const-string v3, "ACRA Not Active"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v2, "ReplApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA Active, URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;

    move-result-object v1

    .line 68
    .local v1, "config":Lorg/acra/ACRAConfiguration;
    invoke-virtual {v1, v0}, Lorg/acra/ACRAConfiguration;->setFormUri(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v5}, Lorg/acra/ACRAConfiguration;->setDisableSSLCertValidation(Z)V

    .line 70
    invoke-static {v1}, Lorg/acra/ACRA;->setConfig(Lorg/acra/ACRAConfiguration;)V

    .line 71
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 72
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/ReplApplication;->active:Z

    goto :goto_0
.end method
