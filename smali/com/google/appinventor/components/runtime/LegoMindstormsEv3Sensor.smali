.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "LegoMindstormsEv3Sensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field protected sensorPortNumber:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 30
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->SensorPort(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->portNumberToSensorPortLetter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_ev3_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 48
    const-string v0, "SensorPort"

    .line 49
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->setSensorPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected final readInputPercentage(Ljava/lang/String;IIII)I
    .locals 10
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "no"    # I
    .param p4, "type"    # I
    .param p5, "mode"    # I

    .prologue
    .line 66
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    const/4 v0, -0x1

    if-lt p5, v0, :cond_0

    const/4 v0, 0x7

    if-le p5, v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_1
    const/16 v0, -0x67

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ccccccg"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x1b

    .line 74
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    int-to-byte v9, p2

    .line 75
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    int-to-byte v9, p3

    .line 76
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    int-to-byte v9, p4

    .line 77
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x4

    int-to-byte v9, p5

    .line 78
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 79
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 80
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v5, v8

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 82
    .local v6, "command":[B
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v7

    .line 83
    .local v7, "reply":[B
    if-eqz v7, :cond_2

    array-length v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v0, v7, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 84
    const/4 v0, 0x1

    aget-byte v0, v7, v0

    .line 86
    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final readInputSI(Ljava/lang/String;IIII)D
    .locals 13
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "no"    # I
    .param p4, "type"    # I
    .param p5, "mode"    # I

    .prologue
    .line 95
    if-ltz p2, :cond_0

    const/4 v2, 0x3

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/4 v2, 0x3

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p5

    if-le v0, v2, :cond_1

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 97
    :cond_1
    const/16 v2, -0x67

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "ccccccg"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x1d

    .line 102
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    int-to-byte v12, p2

    .line 103
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x2

    move/from16 v0, p3

    int-to-byte v12, v0

    .line 104
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x3

    move/from16 v0, p4

    int-to-byte v12, v0

    .line 105
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x4

    move/from16 v0, p5

    int-to-byte v12, v0

    .line 106
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const/4 v12, 0x1

    .line 107
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 108
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v7, v11

    .line 97
    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v8

    .line 110
    .local v8, "command":[B
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v8, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v9

    .line 112
    .local v9, "reply":[B
    if-eqz v9, :cond_2

    array-length v2, v9

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 113
    const-string v2, "xf"

    invoke-static {v2, v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v10

    .line 114
    .local v10, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v10, v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 118
    .end local v10    # "values":[Ljava/lang/Object;
    :goto_0
    return-wide v2

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1e

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 118
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method protected final setSensorPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "sensorPortLetter"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortLetterToPortNumber(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
