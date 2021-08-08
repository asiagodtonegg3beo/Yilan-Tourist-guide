.class public Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;
.super Ljava/lang/Object;
.source "InternalCompassOrientationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/osmdroid/views/overlay/compass/IOrientationProvider;


# instance fields
.field private mAzimuth:F

.field private mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 18
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->stopOrientationProvider()V

    .line 56
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    .line 57
    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 58
    return-void
.end method

.method public getLastKnownOrientation()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mAzimuth:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mAzimuth:F

    .line 76
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mAzimuth:F

    invoke-interface {v0, v1, p0}, Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 80
    :cond_0
    return-void
.end method

.method public startOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;)Z
    .locals 4
    .param p1, "orientationConsumer"    # Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Z
    iget-object v2, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 34
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_0

    .line 35
    iget-object v2, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 37
    :cond_0
    return v0
.end method

.method public stopOrientationProvider()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 45
    return-void
.end method
