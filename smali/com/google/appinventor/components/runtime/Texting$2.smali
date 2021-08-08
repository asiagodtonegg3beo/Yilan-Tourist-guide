.class Lcom/google/appinventor/components/runtime/Texting$2;
.super Landroid/content/BroadcastReceiver;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting$2;->getResultCode()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Texting;->access$200(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Texting;->access$300(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :goto_0
    monitor-exit p0

    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in onReceive for msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1085
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
