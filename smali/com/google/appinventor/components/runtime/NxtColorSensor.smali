.class public Lcom/google/appinventor/components/runtime/NxtColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtColorSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff

.field static final SENSOR_TYPE_COLOR_BLUE:I = 0x10

.field static final SENSOR_TYPE_COLOR_FULL:I = 0xd

.field static final SENSOR_TYPE_COLOR_GREEN:I = 0xf

.field static final SENSOR_TYPE_COLOR_NONE:I = 0x11

.field static final SENSOR_TYPE_COLOR_RED:I = 0xe

.field private static final mapColorToSensorType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapSensorValueToColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private detectColor:Z

.field private generateColor:I

.field private handler:Landroid/os/Handler;

.field private previousColor:I

.field private previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, -0x10000

    const v4, -0xff0100

    const v3, -0xffff01

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const v1, 0xffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const v2, 0xffffff

    const/4 v1, 0x0

    .line 93
    const-string v0, "NxtColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    .line 95
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 96
    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 97
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    .line 148
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->SensorPort(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->DetectColor(Z)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChangedEventEnabled(Z)V

    .line 155
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BottomOfRange(I)V

    .line 156
    const/16 v0, 0x2ff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->TopOfRange(I)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRangeEventEnabled(Z)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRangeEventEnabled(Z)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRangeEventEnabled(Z)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->GenerateColor(I)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method private getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget v4, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v1

    .line 257
    .local v1, "returnPackage":[B
    if-eqz v1, :cond_0

    .line 258
    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v3

    .line 259
    .local v3, "valid":Z
    if-eqz v3, :cond_0

    .line 260
    const/16 v4, 0xc

    invoke-virtual {p0, v1, v4}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getSWORDValueFromBytes([BI)I

    move-result v2

    .line 261
    .local v2, "scaledValue":I
    sget-object v4, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    sget-object v4, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    .local v0, "color":I
    new-instance v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    .line 269
    .end local v0    # "color":I
    .end local v2    # "scaledValue":I
    .end local v3    # "valid":Z
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v1

    .line 337
    .local v1, "returnPackage":[B
    if-eqz v1, :cond_0

    .line 338
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 339
    .local v2, "valid":Z
    if-eqz v2, :cond_0

    .line 340
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getUWORDValueFromBytes([BI)I

    move-result v0

    .line 341
    .local v0, "normalizedValue":I
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    .line 346
    .end local v0    # "normalizedValue":I
    .end local v2    # "valid":Z
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private isHandlerNeeded()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v0, :cond_0

    .line 553
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    .line 555
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range. The AboveRange event will not occur if the DetectColor property is set to True or if the AboveRangeEventEnabled property is set to False."
    .end annotation

    .prologue
    .line 512
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 496
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    .line 498
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 499
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 500
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 503
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 504
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the DetectColor property is set to False and the light level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range. The BelowRange event will not occur if the DetectColor property is set to True or if the BelowRangeEventEnabled property is set to False."
    .end annotation

    .prologue
    .line 431
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 415
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    .line 417
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 418
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 419
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 422
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 423
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the DetectColor property is set to False and the light level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 368
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    .line 369
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 370
    return-void
.end method

.method public ColorChanged(I)V
    .locals 4
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Detected color has changed. The ColorChanged event will not occur if the DetectColor property is set to False or if the ColorChangedEventEnabled property is set to False."
    .end annotation

    .prologue
    .line 308
    const-string v0, "ColorChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 292
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    .line 294
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 295
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 296
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 299
    const v2, 0xffffff

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 300
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_1
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the DetectColor property is set to True and the detected color changes."
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public DetectColor(Z)V
    .locals 4
    .param p1, "detectColor"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 215
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    .line 216
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "DetectColor"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 221
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    :cond_1
    const v2, 0xffffff

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 225
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 226
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 227
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_2
    return-void
.end method

.method public DetectColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the sensor should detect color or light. True indicates that the sensor should detect color; False indicates that the sensor should detect light. If the DetectColor property is set to True, the BelowRange, WithinRange, and AboveRange events will not occur and the sensor will not generate color. If the DetectColor property is set to False, the ColorChanged event will not occur."
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return v0
.end method

.method public GenerateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color that should generated by the sensor. Only None, Red, Green, or Blue are valid values. The sensor will not generate color when the DetectColor property is set to True."
    .end annotation

    .prologue
    .line 526
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    return v0
.end method

.method public GenerateColor(I)V
    .locals 4
    .param p1, "generateColor"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "lego_nxt_generated_color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 539
    const-string v0, "GenerateColor"

    .line 540
    .local v0, "functionName":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    .line 542
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1a3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GetColor()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current detected color, or the color None if the color can not be read or if the DetectColor property is set to False."
    .end annotation

    .prologue
    const v2, 0xffffff

    .line 236
    const-string v0, "GetColor"

    .line 237
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-nez v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1a1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 247
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_0

    .line 248
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public GetLightLevel()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read or if the DetectColor property is set to True."
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 316
    const-string v0, "GetLightLevel"

    .line 317
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1a2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 327
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_0

    .line 328
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setSensorPort(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 380
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 391
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    .line 392
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 393
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range. The WithinRange event will not occur if the DetectColor property is set to True or if the WithinRangeEventEnabled property is set to False."
    .end annotation

    .prologue
    .line 473
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 457
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    .line 459
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 460
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 461
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 464
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 465
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the DetectColor property is set to False and the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    .line 166
    .local v0, "sensorType":I
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setInputMode(Ljava/lang/String;III)V

    .line 167
    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 168
    return-void

    .line 165
    .end local v0    # "sensorType":I
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 565
    return-void
.end method
