.class Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;
.super Ljava/lang/Object;
.source "NxtUltrasonicSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 63
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 73
    .local v0, "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 74
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRange()V

    .line 77
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRange()V

    .line 80
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRange()V

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$302(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 88
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .end local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_4
    return-void

    .line 67
    .restart local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v3

    if-le v2, v3, :cond_6

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    goto :goto_0

    .line 70
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :cond_6
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    goto :goto_0
.end method
