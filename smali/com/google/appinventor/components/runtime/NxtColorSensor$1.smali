.class Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;
.source "NxtColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v2

    .line 103
    .local v2, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$202(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    .line 142
    .end local v0    # "currentColor":I
    .end local v2    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1100(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_2
    return-void

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v2

    .line 116
    .restart local v2    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 119
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 126
    .local v1, "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    move-result-object v3

    if-eq v1, v3, :cond_6

    .line 127
    sget-object v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    .line 130
    :cond_4
    sget-object v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    .line 133
    :cond_5
    sget-object v3, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 134
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    .line 138
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$602(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    goto :goto_0

    .line 120
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :cond_7
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_8

    .line 121
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    goto :goto_1

    .line 123
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :cond_8
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    goto :goto_1
.end method
