.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Motors.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_MOTOR_PORTS:Ljava/lang/String; = "ABC"

.field private static final DEFAULT_WHEEL_DIAMETER:D = 4.32

.field private static final DELAY_MILLISECONDS:I = 0x32


# instance fields
.field private directionReversed:Z

.field private eventHandler:Landroid/os/Handler;

.field private ifReset:Z

.field private motorPortBitField:I

.field private previousValue:I

.field private regulationEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private stopBeforeDisconnect:Z

.field private tachoCountChangedEventEnabled:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide v4, 0x401147ae147ae148L    # 4.32

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-string v0, "Ev3Motors"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 44
    iput v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    .line 45
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 46
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    .line 47
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 48
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 52
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    .line 53
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    const-string v0, "ABC"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 88
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Ev3Motors;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearOutputCount(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 708
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 711
    :cond_1
    const/16 v0, -0x4e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 716
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 717
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 711
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 718
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 719
    return-void
.end method

.method private getOutputCount(Ljava/lang/String;II)I
    .locals 12
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 661
    if-ltz p2, :cond_0

    if-gt p2, v5, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 665
    :cond_1
    add-int/lit8 v0, p3, -0x1

    xor-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, v0, 0x1

    .line 668
    packed-switch p3, :pswitch_data_0

    .line 686
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 670
    :pswitch_1
    const/4 v7, 0x0

    .line 689
    .local v7, "portNumber":I
    :goto_0
    const/16 v0, -0x4d

    const/4 v2, 0x4

    const-string v4, "ccg"

    new-array v5, v5, [Ljava/lang/Object;

    int-to-byte v10, p2

    .line 694
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    int-to-byte v10, v7

    .line 695
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    .line 696
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    .line 689
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 697
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 699
    .local v8, "reply":[B
    if-eqz v8, :cond_2

    array-length v0, v8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_2

    .line 700
    const-string v0, "xi"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 701
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 703
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_2
    return v3

    .line 674
    .end local v6    # "command":[B
    .end local v7    # "portNumber":I
    .end local v8    # "reply":[B
    :pswitch_2
    const/4 v7, 0x1

    .line 675
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 678
    .end local v7    # "portNumber":I
    :pswitch_3
    const/4 v7, 0x2

    .line 679
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 682
    .end local v7    # "portNumber":I
    :pswitch_4
    const/4 v7, 0x3

    .line 683
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private isOneShotInteger(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 441
    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputStepPower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 488
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 491
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 493
    const/16 v0, -0x54

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 498
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 499
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 500
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 501
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 502
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 503
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 504
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 493
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 505
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 506
    return-void

    .line 503
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 509
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 512
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 514
    const/16 v0, -0x52

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 519
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 520
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 521
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 522
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 523
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 524
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 525
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 514
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 526
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 527
    return-void

    .line 524
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "tachoCounts"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 530
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/16 v0, -0xc8

    if-lt p5, v0, :cond_0

    const/16 v0, 0xc8

    if-le p5, v0, :cond_1

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 533
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 535
    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 540
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 541
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 542
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    .line 543
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 544
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 545
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 535
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 546
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 547
    return-void

    .line 544
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimePower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 550
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 553
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 555
    const/16 v0, -0x53

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 560
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 561
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 562
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 563
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 564
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 565
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 566
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 555
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 567
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 568
    return-void

    .line 565
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 571
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 574
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 576
    const/16 v0, -0x51

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 581
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 582
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 583
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 584
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 585
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    .line 586
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 587
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 576
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 588
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 589
    return-void

    .line 586
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "milliseconds"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 592
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-gez p6, :cond_1

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 595
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 597
    const/16 v0, -0x4f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    .line 602
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    .line 603
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    .line 604
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    .line 605
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 606
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    .line 607
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    .line 597
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 608
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 609
    return-void

    .line 606
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private resetOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 445
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 447
    :cond_1
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 448
    const/16 v0, -0x5e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 453
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    .line 454
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    .line 448
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 455
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 456
    return-void
.end method

.method private roundValue(III)I
    .locals 0
    .param p1, "value"    # I
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 437
    if-ge p1, p2, :cond_0

    .end local p2    # "minimum":I
    :goto_0
    return p2

    .restart local p2    # "minimum":I
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private setOutputDirection(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "direction"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 612
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_0

    if-le p4, v3, :cond_1

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 615
    :cond_1
    const/16 v0, -0x59

    const-string v4, "ccc"

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 620
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    .line 621
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 622
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 615
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 623
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 624
    return-void
.end method

.method private setOutputPower(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 644
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 647
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 649
    const/16 v0, -0x5c

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 654
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 655
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 656
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 649
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 657
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 658
    return-void
.end method

.method private setOutputSpeed(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 627
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 630
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 632
    const/16 v0, -0x5b

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 637
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 638
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    .line 639
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 632
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 640
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 641
    return-void
.end method

.method private startOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 462
    :cond_1
    const/16 v0, -0x5a

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    .line 467
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    .line 468
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    .line 462
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 469
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 470
    return-void
.end method

.method private stopOutput(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "useBrake"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 476
    :cond_1
    const/16 v0, -0x5d

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v3, p2

    .line 481
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    int-to-byte v3, p3

    .line 482
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    .line 483
    :goto_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    .line 476
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 484
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 485
    return-void

    .end local v6    # "command":[B
    :cond_2
    move v2, v1

    .line 482
    goto :goto_0
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 170
    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    return v0
.end method

.method public GetTachoCount()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    const-string v1, "GetTachoCount"

    .line 421
    .local v1, "functionName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 424
    :goto_0
    return v2

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 6
    .param p1, "motorPortLetters"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 109
    const-string v1, "MotorPorts"

    .line 111
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc20

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetTachoCount()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 406
    const-string v1, "ResetTachoCount"

    .line 408
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->clearOutputCount(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ReverseDirection(Z)V
    .locals 7
    .param p1, "reversed"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 144
    const-string v1, "ReverseDirection"

    .line 146
    .local v1, "functionName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 147
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 146
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, p0, v1, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public ReverseDirection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 12
    .param p1, "power"    # I
    .param p2, "distance"    # D
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 276
    const-string v1, "RotateInDistance"

    .line 277
    .local v1, "functionName":Ljava/lang/String;
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 280
    .local v6, "tachoCounts":I
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 287
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v9

    .line 285
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInDuration(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 260
    const-string v1, "RotateInDuration"

    .line 262
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimePower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v9

    .line 267
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 244
    const-string v1, "RotateInTachoCounts"

    .line 246
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v9

    .line 251
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateIndefinitely(I)V
    .locals 6
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 226
    const-string v1, "RotateIndefinitely"

    .line 228
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v2, :cond_0

    .line 229
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputPower(Ljava/lang/String;III)V

    .line 233
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->startOutput(Ljava/lang/String;II)V

    .line 237
    :goto_1
    return-void

    .line 231
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "distance"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 315
    const-string v1, "RotateSyncInDuration"

    .line 316
    .local v1, "functionName":Ljava/lang/String;
    int-to-double v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 320
    .local v6, "tachoCounts":I
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v9

    .line 328
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 337
    const-string v1, "RotateSyncInDuration"

    .line 341
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 342
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v9

    .line 349
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 358
    const-string v1, "RotateSyncInTachoCounts"

    .line 362
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 363
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v9

    .line 370
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "turnRatio"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 294
    const-string v1, "RotateSyncIndefinitely"

    .line 298
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v8

    .line 306
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Stop(Z)V
    .locals 6
    .param p1, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 379
    const-string v1, "Stop"

    .line 381
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .param p1, "stopBeforeDisconnect"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 200
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 4
    .param p1, "tachoCount"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    .prologue
    .line 433
    const-string v0, "TachoCountChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 219
    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method public ToggleDirection()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 392
    const-string v1, "ToggleDirection"

    .line 394
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 395
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 395
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, p0, v1, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public WheelDiameter()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 1
    .param p1, "diameter"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 125
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 7
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 723
    const-string v1, "beforeDisconnect"

    .line 724
    .local v1, "functionName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    if-eqz v2, :cond_0

    .line 726
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
