.class Lcom/google/appinventor/components/runtime/Ev3Motors$1;
.super Ljava/lang/Object;
.source "Ev3Motors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3Motors;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v0, ""

    .line 65
    .local v0, "functionName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3Motors;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$000(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v3

    invoke-static {v2, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$100(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;II)I

    move-result v1

    .line 68
    .local v1, "sensorValue":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$200(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$300(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$400(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChanged(I)V

    .line 75
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$302(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I

    .line 78
    .end local v1    # "sensorValue":I
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$500(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void

    .line 73
    .restart local v1    # "sensorValue":I
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->access$202(Lcom/google/appinventor/components/runtime/Ev3Motors;Z)Z

    goto :goto_0
.end method
