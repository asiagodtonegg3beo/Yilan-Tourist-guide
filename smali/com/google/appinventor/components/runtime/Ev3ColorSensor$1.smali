.class Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "Ev3ColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 73
    const-string v2, ""

    .line 75
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 77
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 81
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .end local v0    # "currentColor":I
    :goto_0
    return-void

    .line 85
    .restart local v0    # "currentColor":I
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v2, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 113
    .end local v0    # "currentColor":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "currentLightLevel":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 93
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 99
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$800(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 100
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    .line 109
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    goto :goto_1

    .line 101
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v1, v3, :cond_7

    .line 102
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 103
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_2

    .line 105
    :cond_7
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 106
    :cond_8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    goto :goto_2
.end method
