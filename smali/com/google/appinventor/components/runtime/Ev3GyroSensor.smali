.class public Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3GyroSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_SENSOR_MODE_STRING:Ljava/lang/String; = "angle"

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_MODE_ANGLE:I = 0x0

.field private static final SENSOR_MODE_ANGLE_STRING:Ljava/lang/String; = "angle"

.field private static final SENSOR_MODE_RATE:I = 0x1

.field private static final SENSOR_MODE_RATE_STRING:Ljava/lang/String; = "rate"

.field private static final SENSOR_TYPE:I = 0x20


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mode:I

.field private modeString:Ljava/lang/String;

.field private previousValue:D

.field private sensorValueChangedEventEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v0, "Ev3GyroSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 48
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I

    .line 49
    const-string v0, "angle"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->modeString:Ljava/lang/String;

    .line 50
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    .line 51
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    const-string v0, "angle"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->Mode(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChangedEventEnabled(Z)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
    .param p1, "x1"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I

    return v0
.end method

.method private getSensorValue(Ljava/lang/String;)D
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorPortNumber:I

    const/16 v4, 0x20

    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "newModeString"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "angle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I

    .line 186
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->modeString:Ljava/lang/String;

    .line 187
    return-void

    .line 181
    :cond_0
    const-string v0, "rate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public GetSensorValue()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor."
    .end annotation

    .prologue
    .line 98
    const-string v0, ""

    .line 99
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively."
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->modeString:Ljava/lang/String;

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "angle"
        editorType = "lego_ev3_gyro_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 109
    const-string v1, "Mode"

    .line 111
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SensorValueChanged(D)V
    .locals 5
    .param p1, "sensorValue"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called then the sensor value changed."
    .end annotation

    .prologue
    .line 167
    const-string v0, "SensorValueChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public SensorValueChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 160
    return-void
.end method

.method public SensorValueChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the SensorValueChanged event should fire when the sensor value changed."
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    return v0
.end method

.method public SetAngleMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the orientation of the sensor."
    .end annotation

    .prologue
    .line 132
    const-string v0, "angle"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public SetRateMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the angular velocity of the sensor."
    .end annotation

    .prologue
    .line 140
    const-string v0, "rate"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 193
    return-void
.end method
