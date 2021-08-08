.class Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic val$functionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothServer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "acceptedBluetoothSocket":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$000(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "bluetoothServerSocket":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->accept(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 141
    .end local v0    # "acceptedBluetoothSocket":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    .local v0, "bluetoothSocket":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;

    invoke-direct {v4, p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .end local v0    # "bluetoothSocket":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 127
    .local v0, "acceptedBluetoothSocket":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    throw v3
.end method
