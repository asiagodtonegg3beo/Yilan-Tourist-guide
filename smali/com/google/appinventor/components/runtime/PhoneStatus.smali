.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneStatus.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "webrtc.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatus"

.field private static activity:Landroid/app/Activity;

.field private static mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

.field private static useWebRTC:Z


# instance fields
.field private firstHmacSeed:Ljava/lang/String;

.field private firstSeed:Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 81
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez v0, :cond_0

    .line 89
    sput-object p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 91
    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .prologue
    .line 96
    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, "wifiManager":Ljava/lang/Object;
    check-cast v3, Landroid/net/wifi/WifiManager;

    .end local v3    # "wifiManager":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 98
    .local v0, "ip":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 100
    .local v2, "s_ipAddress":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "ipAddress":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 103
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    const-string v1, "Error: No Wifi Connection"

    .restart local v1    # "ipAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/PhoneStatus;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static doFault()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "doFault called!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doSettings()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "PhoneStatus"

    const-string v1, "doSettings called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->OnSettings()V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "PhoneStatus"

    const-string v1, "mainStance is null on doSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .prologue
    .line 109
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 111
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 115
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 339
    const-string v1, "edu.mit.appinventor.aicompanion3"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 341
    const-string v0, "sideloaded"

    .line 346
    .end local v0    # "installer":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PhoneStatus"

    const-string v3, "Unable to get VersionName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    const-string v2, "UNKNOWN"

    goto :goto_0
.end method

.method public InstallationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the ACRA Installation ID"
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 275
    const-string v0, "OnSettings"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public SdkLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    return v0
.end method

.method public WebRTC(Z)V
    .locals 0
    .param p1, "useWebRTC"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 287
    sput-boolean p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    .line 288
    return-void
.end method

.method public WebRTC()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .prologue
    .line 292
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package via the installed browser"
    .end annotation

    .prologue
    .line 251
    :try_start_0
    const-string v6, "edu.mit.appinventor.companionextras.CompanionExtras"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/appinventor/components/runtime/Form;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 253
    .local v4, "o":Ljava/lang/Object;
    const-string v6, "Extra1"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 254
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?store=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 258
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 259
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isDirect()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .prologue
    .line 200
    const-string v0, "PhoneStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.VERSION.RELEASE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "PhoneStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.PRODUCT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssetsLoaded()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    .line 234
    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "rendezvousServer"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 125
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    const-string v6, ""

    .line 195
    :goto_0
    return-object v6

    .line 144
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 145
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again."

    const-string v8, "Warning"

    const-string v9, "OK"

    new-instance v10, Lcom/google/appinventor/components/runtime/PhoneStatus$1;

    invoke-direct {v10, p0}, Lcom/google/appinventor/components/runtime/PhoneStatus$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    .line 174
    sget-boolean v6, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    if-nez v6, :cond_3

    .line 175
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    .line 180
    :cond_3
    :try_start_0
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    .local v0, "Sha1":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 186
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 187
    .local v4, "result":[B
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v6, v4

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 188
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 189
    .local v3, "formatter":Ljava/util/Formatter;
    array-length v8, v4

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_4

    aget-byte v1, v4, v6

    .line 190
    .local v1, "b":B
    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v3, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "Sha1":Ljava/security/MessageDigest;
    .end local v1    # "b":B
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v4    # "result":[B
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PhoneStatus"

    const-string v7, "Exception getting SHA1 Instance"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const-string v6, ""

    goto :goto_0

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "Sha1":Ljava/security/MessageDigest;
    .restart local v3    # "formatter":Ljava/util/Formatter;
    .restart local v4    # "result":[B
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    const-string v6, "PhoneStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Seed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v6, "PhoneStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    .line 195
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 267
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 1
    .param p1, "secure"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public startWebRTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rendezvousServer"    # Ljava/lang/String;
    .param p2, "iceServers"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the WebRTC engine"
    .end annotation

    .prologue
    .line 214
    sget-boolean v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, "webRTCNativeMgr":Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    goto :goto_0
.end method
