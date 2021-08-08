.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accerleromter and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 40.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x64


# instance fields
.field private avgPos:I

.field private avgWindow:[F

.field private final context:Landroid/content/Context;

.field private foundNonStep:Z

.field private foundValley:Z

.field private intervalPos:I

.field private lastValley:F

.field private lastValues:[F

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private pedometerPaused:Z

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const v5, 0x3f3ae148    # 0.73f

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 56
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 57
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 58
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 59
    const/16 v1, 0x64

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    .line 60
    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 61
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 62
    const/4 v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .line 63
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 64
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 65
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 66
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 67
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 68
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 70
    const/16 v1, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    .line 71
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 78
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 79
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 80
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 81
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 83
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 84
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 86
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "PedometerPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "Pedometer.stridelength"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 91
    const-string v1, "Pedometer.distance"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 92
    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 93
    const-string v1, "Pedometer.clockTime"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 94
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 96
    const-string v1, "Pedometer"

    const-string v2, "Pedometer Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "avg":F
    const/4 v1, 0x0

    .line 321
    .local v1, "num":I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-wide v2, v6, v5

    .line 322
    .local v2, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    long-to-float v8, v2

    add-float/2addr v0, v8

    .line 321
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "interval":J
    :cond_1
    int-to-float v5, v1

    div-float/2addr v0, v5

    .line 328
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-wide v2, v6, v5

    .line 329
    .restart local v2    # "interval":J
    long-to-float v8, v2

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x437a0000    # 250.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 333
    .end local v2    # "interval":J
    :goto_2
    return v4

    .line 328
    .restart local v2    # "interval":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 333
    .end local v2    # "interval":J
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private isPeak()Z
    .locals 4

    .prologue
    .line 340
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 341
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 342
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 343
    const/4 v2, 0x0

    .line 346
    :goto_1
    return v2

    .line 341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isValley()Z
    .locals 4

    .prologue
    .line 353
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 354
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 355
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 356
    const/4 v2, 0x0

    .line 359
    :goto_1
    return v2

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .param p1, "cal"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .prologue
    .line 274
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 286
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 288
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    .line 157
    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 135
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 139
    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 148
    return-void
.end method

.method public Save()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .prologue
    .line 168
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pedometer.stridelength"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v2, "Pedometer.distance"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v2, "Pedometer.prevStepCount"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v2, :cond_0

    .line 174
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    :goto_0
    const-string v2, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 176
    :cond_0
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 176
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 4
    .param p1, "simpleSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected."
    .end annotation

    .prologue
    .line 195
    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public SimpleSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 300
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    return v0
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 108
    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 113
    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 123
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 126
    :cond_0
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .prologue
    .line 253
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 254
    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 238
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 0
    .param p1, "length"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .prologue
    .line 227
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 228
    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .param p1, "gps"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    return-void
.end method

.method public WalkStep(IF)V
    .locals 4
    .param p1, "walkSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .prologue
    .line 209
    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public WalkSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 366
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 444
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 371
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 438
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 375
    .local v11, "values":[F
    const/4 v6, 0x0

    .line 376
    .local v6, "magnitude":F
    array-length v13, v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_1

    aget v10, v11, v12

    .local v10, "v":F
    mul-float v14, v10, v10

    add-float/2addr v6, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 379
    .end local v10    # "v":F
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v12, v12, 0x32

    rem-int/lit8 v7, v12, 0x64

    .line 382
    .local v7, "mid":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isPeak()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v12, v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 386
    .local v8, "timestamp":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v14, v8, v14

    aput-wide v14, v12, v13

    .line 387
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 388
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v12, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 392
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 393
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 395
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 396
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 397
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 401
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 402
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 403
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 407
    .end local v8    # "timestamp":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isValley()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 408
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v12, v12, v7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    aput v6, v12, v13

    .line 413
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v13, v13

    rem-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v14, v13

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_6

    aget v5, v13, v12

    .local v5, "m":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    add-float v17, v17, v5

    aput v17, v15, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 399
    .end local v5    # "m":F
    .restart local v8    # "timestamp":J
    :cond_5
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    goto :goto_2

    .line 416
    .end local v8    # "timestamp":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v15, v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    aput v14, v12, v13

    .line 417
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_d

    .line 418
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 419
    .local v4, "i":I
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_8

    add-int/lit8 v4, v4, 0x64

    .line 420
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v16, v0

    aget v16, v16, v4

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 421
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_9

    add-int/lit8 v4, v4, 0x64

    .line 422
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v15, v15, v4

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    .line 428
    .end local v4    # "i":I
    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 429
    .local v2, "elapsedTimestamp":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v12, v2, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_b

    .line 430
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 433
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v13, 0x63

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_c

    .line 434
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 437
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    goto/16 :goto_0

    .line 424
    .end local v2    # "elapsedTimestamp":J
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    goto :goto_4
.end method
