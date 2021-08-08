.class Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapTileFileStorageProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-static {v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->access$100(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V

    .line 78
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->onMediaMounted()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->onMediaUnmounted()V

    goto :goto_0
.end method
