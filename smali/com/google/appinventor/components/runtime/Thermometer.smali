.class public Lcom/google/appinventor/components/runtime/Thermometer;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "Thermometer.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A sensor component that can measure the ambient (external) temperature. Most Android devices do not have this sensor."
    iconName = "images/thermometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public Temperature()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The temperature in degrees Celsius, if the sensor is available and enabled"
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Thermometer;->getValue()F

    move-result v0

    return v0
.end method

.method public TemperatureChanged(F)V
    .locals 4
    .param p1, "temperature"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when a change is detected in the temperature (in degrees Celsius)."
    .end annotation

    .prologue
    .line 53
    const-string v0, "TemperatureChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method protected onValueChanged(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Thermometer;->TemperatureChanged(F)V

    .line 44
    return-void
.end method
