.class public Lcom/google/appinventor/components/runtime/GyroscopeSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "GyroscopeSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measure angular velocity in three dimensions in units of degrees per second.</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have a gyroscope sensor.</p>"
    iconName = "images/gyroscopesensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private enabled:Z

.field private final gyroSensor:Landroid/hardware/Sensor;

.field private listening:Z

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private xAngularVelocity:F

.field private yAngularVelocity:F

.field private zAngularVelocity:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->gyroSensor:Landroid/hardware/Sensor;

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->Enabled(Z)V

    .line 68
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->gyroSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    .line 75
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    .line 83
    iput v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    .line 84
    iput v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    .line 85
    iput v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a gyroscope sensor is available."
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then sensor events will be generated and XAngularVelocity, YAngularVelocity, and ZAngularVelocity properties will have meaningful values."
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 144
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->startListening()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    return v0
.end method

.method public GyroscopeChanged(FFFJ)V
    .locals 4
    .param p1, "xAngularVelocity"    # F
    .param p2, "yAngularVelocity"    # F
    .param p3, "zAngularVelocity"    # F
    .param p4, "timestamp"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the gyroscope sensor data has changed. The timestamp parameter is the time in nanoseconds at which the event occurred."
    .end annotation

    .prologue
    .line 99
    const-string v0, "GyroscopeChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public XAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the X axis, in degrees per second."
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    return v0
.end method

.method public YAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Y axis, in degrees per second."
    .end annotation

    .prologue
    .line 178
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    return v0
.end method

.method public ZAngularVelocity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Z axis, in degrees per second."
    .end annotation

    .prologue
    .line 192
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    .line 225
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->startListening()V

    .line 239
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    .line 207
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    .line 208
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    .line 211
    iget v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->GyroscopeChanged(FFFJ)V

    .line 214
    :cond_0
    return-void
.end method
