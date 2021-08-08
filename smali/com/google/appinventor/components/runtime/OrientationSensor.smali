.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "OrientationSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final AZIMUTH:I = 0x0

.field private static final DIMENSIONS:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationSensor"

.field private static final PITCH:I = 0x1

.field private static final ROLL:I = 0x2


# instance fields
.field private final accelerometerSensor:Landroid/hardware/Sensor;

.field private final accels:[F

.field private accelsFilled:Z

.field private accuracy:I

.field private azimuth:F

.field private enabled:Z

.field private final inclinationMatrix:[F

.field private listening:Z

.field private final magneticFieldSensor:Landroid/hardware/Sensor;

.field private final mags:[F

.field private magsFilled:Z

.field private pitch:F

.field private roll:F

.field private final rotationMatrix:[F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final values:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 121
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 101
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    .line 102
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    .line 111
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    .line 112
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    .line 113
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    .line 125
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    .line 135
    return-void
.end method

.method static computeAngle(FF)F
    .locals 4
    .param p0, "pitch"    # F
    .param p1, "roll"    # F

    .prologue
    .line 293
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v2, p1

    .line 295
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 293
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getScreenRotation()I
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "window"

    .line 338
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 339
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 340
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 341
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getRotation(Landroid/view/Display;)I

    move-result v1

    .line 343
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    goto :goto_0
.end method

.method private startListening()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    .line 145
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 150
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    .line 153
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    .line 154
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 273
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->computeAngle(FF)F

    move-result v0

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    .line 189
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    :goto_0
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Azimuth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 215
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    .line 216
    if-eqz p1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    return v0
.end method

.method public Magnitude()F
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/high16 v8, 0x42b40000    # 90.0f

    .line 319
    const/16 v0, 0x5a

    .line 320
    .local v0, "MAX_VALUE":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 321
    .local v2, "npitch":D
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 322
    .local v4, "nroll":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v1, v6

    return v1
.end method

.method public OrientationChanged(FFF)V
    .locals 4
    .param p1, "azimuth"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the orientation has changed."
    .end annotation

    .prologue
    .line 175
    const-string v0, "OrientationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

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

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 432
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 439
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 445
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    .line 453
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 357
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 361
    .local v0, "eventType":I
    packed-switch v0, :pswitch_data_0

    .line 377
    const-string v3, "OrientationSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected sensor type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "eventType":I
    :cond_0
    :goto_0
    return-void

    .line 364
    .restart local v0    # "eventType":I
    :pswitch_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    .line 367
    iget v3, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accuracy:I

    .line 382
    :goto_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 387
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 390
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v3, v3, v7

    float-to-double v4, v3

    .line 391
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 390
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    .line 392
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v3, v3, v8

    float-to-double v4, v3

    .line 393
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 392
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 396
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v4, v3

    .line 397
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    .line 396
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    .line 400
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->getScreenRotation()I

    move-result v1

    .line 401
    .local v1, "rotation":I
    packed-switch v1, :pswitch_data_1

    .line 418
    const-string v3, "OrientationSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal value for getScreenRotation(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_2
    :pswitch_1
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    goto/16 :goto_0

    .line 372
    .end local v1    # "rotation":I
    :pswitch_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    goto :goto_1

    .line 405
    .restart local v1    # "rotation":I
    :pswitch_3
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    neg-float v2, v3

    .line 406
    .local v2, "temp":F
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 407
    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    .line 410
    .end local v2    # "temp":F
    :pswitch_4
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    .line 413
    :pswitch_5
    iget v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 414
    .restart local v2    # "temp":F
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 415
    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
