.class public Lorg/osmdroid/SensorEventListenerProxy;
.super Ljava/lang/Object;
.source "SensorEventListenerProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1
    .param p1, "pSensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    .line 13
    iput-object p1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "pSensor"    # Landroid/hardware/Sensor;
    .param p2, "pAccuracy"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 35
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "pEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 42
    :cond_0
    return-void
.end method

.method public startListening(Landroid/hardware/SensorEventListener;II)Z
    .locals 2
    .param p1, "pListener"    # Landroid/hardware/SensorEventListener;
    .param p2, "pSensorType"    # I
    .param p3, "pRate"    # I

    .prologue
    .line 18
    iget-object v1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 19
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1

    .line 21
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    .line 22
    iget-object v1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    .line 27
    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 28
    return-void
.end method
