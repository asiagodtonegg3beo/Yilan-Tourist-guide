.class public Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3UltrasonicSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_SENSOR_MODE_STRING:Ljava/lang/String; = "cm"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_MODE_CM:I = 0x0

.field private static final SENSOR_MODE_CM_STRING:Ljava/lang/String; = "cm"

.field private static final SENSOR_MODE_INCH:I = 0x1

.field private static final SENSOR_MODE_INCH_STRING:Ljava/lang/String; = "inch"

.field private static final SENSOR_TYPE:I = 0x1e


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private eventHandler:Landroid/os/Handler;

.field private mode:I

.field private modeString:Ljava/lang/String;

.field private previousDistance:D

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v0, "Ev3UltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 49
    const-string v0, "cm"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->modeString:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:I

    .line 53
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->TopOfRange(I)V

    .line 101
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BottomOfRange(I)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 105
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->Unit(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
    .param p1, "x1"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method private getDistance(Ljava/lang/String;)D
    .locals 8
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorPortNumber:I

    const/16 v4, 0x1e

    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v6

    .line 117
    .local v6, "distance":D
    const-wide v0, 0x406fe00000000000L    # 255.0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .end local v6    # "distance":D
    :cond_0
    return-wide v6
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "newModeString"    # Ljava/lang/String;

    .prologue
    .line 305
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 307
    const-string v0, "cm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:I

    .line 316
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->modeString:Ljava/lang/String;

    .line 317
    return-void

    .line 310
    :cond_0
    const-string v0, "inch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:I

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone above the range."
    .end annotation

    .prologue
    .line 251
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    .line 244
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone below the range."
    .end annotation

    .prologue
    .line 191
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    .line 184
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 139
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    .line 140
    return-void
.end method

.method public GetDistance()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .prologue
    .line 111
    const-string v0, "GetDistance"

    .line 112
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public SetCmUnit()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in centimeters."
    .end annotation

    .prologue
    .line 283
    const-string v1, "SetCmUnit"

    .line 285
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    const-string v2, "cm"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetInchUnit()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in inches."
    .end annotation

    .prologue
    .line 296
    const-string v1, "SetInchUnit"

    .line 298
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    const-string v2, "inch"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 161
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    .line 162
    return-void
.end method

.method public Unit()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance unit, which can be either \"cm\" or \"inch\"."
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->modeString:Ljava/lang/String;

    return-object v0
.end method

.method public Unit(Ljava/lang/String;)V
    .locals 6
    .param p1, "unitName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "cm"
        editorType = "lego_ev3_ultrasonic_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 261
    const-string v1, "Unit"

    .line 263
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone within the range."
    .end annotation

    .prologue
    .line 221
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    .line 214
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 324
    return-void
.end method
