.class public Lcom/google/appinventor/components/runtime/AccelerometerSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AccelerometerSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>"
    iconName = "images/accelerometersensor.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccelerometerSensor"

.field private static final SENSOR_CACHE_SIZE:I = 0xa

.field private static final moderateShakeThreshold:D = 13.0

.field private static final strongShakeThreshold:D = 20.0

.field private static final weakShakeThreshold:D = 5.0


# instance fields
.field private final X_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Y_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Z_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private final androidUIHandler:Landroid/os/Handler;

.field private volatile deviceDefaultOrientation:I

.field private enabled:Z

.field private legacyMode:Z

.field private minimumInterval:I

.field private final resources:Landroid/content/res/Resources;

.field private sensitivity:I

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private timeLastShook:J

.field private final windowManager:Landroid/view/WindowManager;

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 150
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 151
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    .line 152
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    .line 153
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    .line 156
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 157
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->MinimumInterval(I)V

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity(I)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    .prologue
    .line 91
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AccelerometerSensor;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return p1
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 400
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 402
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method private isShaking(Ljava/util/Queue;F)Z
    .locals 12
    .param p2, "currentValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v10, 0x402a000000000000L    # 13.0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "average":F
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 413
    .local v1, "value":F
    add-float/2addr v0, v1

    .line 414
    goto :goto_0

    .line 416
    .end local v1    # "value":F
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 418
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 419
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    move v3, v2

    .line 424
    :cond_1
    :goto_2
    return v3

    :cond_2
    move v2, v4

    .line 419
    goto :goto_1

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Sensitivity()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 421
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpl-double v2, v6, v10

    if-lez v2, :cond_4

    sub-float v2, v0, p2

    .line 422
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v8

    if-ltz v2, :cond_1

    :cond_4
    move v3, v4

    goto :goto_2

    .line 424
    :cond_5
    sub-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_6

    sub-float v2, v0, p2

    .line 425
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v10

    if-ltz v2, :cond_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method private startListening()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 329
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 334
    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 6
    .param p1, "xAccel"    # F
    .param p2, "yAccel"    # F
    .param p3, "zAccel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 233
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 234
    iput p2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 235
    iput p3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 237
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 238
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 239
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    iget v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 247
    :cond_1
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    .line 248
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Shaking()V

    .line 251
    :cond_2
    const-string v2, "AccelerationChanged"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether the accelerometer is available on the device."
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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
    .end annotation

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 351
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 352
    if-eqz p1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    return v0
.end method

.method public LegacyMode(Z)V
    .locals 0
    .param p1, "legacyMode"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to \u201ctrue\u201d and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release."
        userVisible = false
    .end annotation

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 447
    return-void
.end method

.method public LegacyMode()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    return v0
.end method

.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between phone shakes"
    .end annotation

    .prologue
    .line 173
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 187
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    .line 188
    return-void
.end method

.method public Sensitivity()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong."
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    return v0
.end method

.method public Sensitivity(I)V
    .locals 6
    .param p1, "sensitivity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "accelerometer_sensitivity"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 220
    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 221
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:I

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Sensitivity"

    const/16 v2, 0x76d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 223
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Shaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 283
    const-string v0, "Shaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 368
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 380
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 392
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    return v0
.end method

.method public getDeviceDefaultOrientation()I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 255
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v2

    .line 260
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 261
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 263
    .local v1, "rotation":I
    const-string v4, "AccelerometerSensor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, "AccelerometerSensor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_5

    :cond_3
    if-eq v1, v2, :cond_4

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    :cond_4
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_0

    :cond_5
    move v2, v3

    .line 272
    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 477
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 504
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 495
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 486
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 456
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 457
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 460
    .local v0, "values":[F
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    if-nez v1, :cond_1

    .line 462
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 463
    aget v1, v0, v2

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 468
    :goto_0
    aget v1, v0, v4

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 469
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accuracy:I

    .line 470
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->AccelerationChanged(FFF)V

    .line 472
    .end local v0    # "values":[F
    :cond_0
    return-void

    .line 465
    .restart local v0    # "values":[F
    :cond_1
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 466
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    goto :goto_0
.end method
