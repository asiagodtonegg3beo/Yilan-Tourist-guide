.class public abstract Lcom/google/appinventor/components/runtime/SingleValueSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SingleValueSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_TIME:I = 0x3e8


# instance fields
.field protected enabled:Z

.field protected refreshTime:I

.field private sensor:Landroid/hardware/Sensor;

.field protected final sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I

.field protected value:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "sensorType"    # I

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    iput p2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 44
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    .line 48
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 49
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether or not the device has the hardware to support the %type% component."
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public Enabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->setEnabled(Z)V

    .line 106
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes."
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    return v0
.end method

.method public RefreshTime()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The requested minimum time in milliseconds between changes in readings being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices."
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    return v0
.end method

.method public RefreshTime(I)V
    .locals 1
    .param p1, "time"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 134
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 138
    :cond_0
    return-void
.end method

.method protected getValue()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    return v0
.end method

.method protected isAvailable()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 189
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 175
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 182
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 142
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 144
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    .line 145
    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onValueChanged(F)V

    .line 147
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method protected abstract onValueChanged(F)V
.end method

.method protected setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 160
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    goto :goto_0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 58
    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    mul-int/lit16 v0, v1, 0x3e8

    .line 59
    .local v0, "timeInMicroseconds":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    .end local v0    # "timeInMicroseconds":I
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method protected stopListening()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    return-void
.end method
