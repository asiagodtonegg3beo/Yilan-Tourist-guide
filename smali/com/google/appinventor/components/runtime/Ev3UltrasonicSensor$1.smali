.class Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;
.super Ljava/lang/Object;
.source "Ev3UltrasonicSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x32

    .line 69
    const-string v2, ""

    .line 71
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D

    move-result-wide v0

    .line 74
    .local v0, "currentDistance":D
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    .line 76
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .end local v0    # "currentDistance":D
    :goto_0
    return-void

    .line 80
    .restart local v0    # "currentDistance":D
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v4, v3

    cmpg-double v3, v0, v4

    if-gez v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v6, v3

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRange()V

    .line 91
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D

    .line 94
    .end local v0    # "currentDistance":D
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    .restart local v0    # "currentDistance":D
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v4, v3

    cmpl-double v3, v0, v4

    if-lez v3, :cond_4

    .line 84
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRange()V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v3

    int-to-double v6, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 88
    :cond_5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRange()V

    goto :goto_1
.end method
