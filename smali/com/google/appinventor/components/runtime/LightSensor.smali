.class public Lcom/google/appinventor/components/runtime/LightSensor;
.super Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.source "LightSensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A sensor component that can measure the light level."
    iconName = "images/lightsensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0xa


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public AverageLux()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The average of the 10 most recent light levels measured, in lux."
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->getAverageValue()F

    move-result v0

    return v0
.end method

.method public LightChanged(F)V
    .locals 4
    .param p1, "lux"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when a change is detected in the light level."
    .end annotation

    .prologue
    .line 60
    const-string v0, "LightChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public Lux()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The most recent light level, in lux, if the sensor is available and enabled."
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LightSensor;->getValue()F

    move-result v0

    return v0
.end method

.method protected onValueChanged(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LightSensor;->LightChanged(F)V

    .line 51
    return-void
.end method
